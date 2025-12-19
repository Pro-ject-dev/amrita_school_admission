import 'package:amrita_vidyalyam_admission/constants/app_colors.dart';
import 'package:amrita_vidyalyam_admission/constants/app_text_styles.dart';
import 'package:amrita_vidyalyam_admission/features/admission/viewmodel/transaction_history_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:printing/printing.dart';
import '../../../core/services/receipt_service.dart';


class TransactionHistoryScreen extends ConsumerStatefulWidget {
  final String studentId;

  const TransactionHistoryScreen({super.key, required this.studentId});

  @override
  ConsumerState<TransactionHistoryScreen> createState() => _TransactionHistoryScreenState();
}

class _TransactionHistoryScreenState extends ConsumerState<TransactionHistoryScreen> {
  String _selectedFilter = 'All';

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(transactionHistoryProvider.notifier).fetchHistory(widget.studentId);
    });
  }

  @override
  Widget build(BuildContext context) {
    final historyState = ref.watch(transactionHistoryProvider);

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        
        title: const Text('Transaction History'),
        centerTitle: true,
        backgroundColor: AppColors.primary,
        foregroundColor: AppColors.background,
        elevation: 0,
      //  iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: historyState.when(
        data: (data) {
          if (data == null) {
            return const Center(child: Text("No transaction history found."));
          }
          final payments = data.payment;
          final cashTransactions = data.cashTransactionList;

          // Filter Logic
          final filteredCashTransactions = _selectedFilter == 'All'
              ? cashTransactions
              : cashTransactions.where((e) => e.status?.toLowerCase() == _selectedFilter.toLowerCase()).toList();

          // Get unique statuses for dropdown
          final statuses = ['All', ...cashTransactions.map((e) => e.status).where((s) => s != null).toSet().toList()];

          if (payments.isEmpty && cashTransactions.isEmpty) {
             return const Center(child: Text("No transactions recorded."));
          }

          return SingleChildScrollView(
            padding: EdgeInsets.all(16.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (payments.isNotEmpty) ...[
                  _buildSectionHeader("Assigned Payments"),
                  SizedBox(height: 12.h),
                  ...payments.map((e) => _buildPaymentCard(
                    title: e.title,
                    transactionId: e.name,
                    amount: e.netAmount??0.0,
                    status: e.status??"",
                    feeMode: e.feeMode,  // Pass feeMode
                    date: null, 
                    mode: "Amrita Vidhyalayam",
                    onDownload: null)),
                  SizedBox(height: 24.h),
                ],

                if (cashTransactions.isNotEmpty) ...[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildSectionHeader("Cash Transactions"),
                      DropdownButton<String>(
                        value: statuses.contains(_selectedFilter) ? _selectedFilter : 'All',
                        underline: Container(), // Remove underline
                        icon: Icon(Icons.filter_list),
                        items: statuses.map((String? status) {
                          return DropdownMenuItem<String>(
                            value: status,
                            child: Text(status??""),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          if (newValue != null) {
                            setState(() {
                              _selectedFilter = newValue;
                            });
                          }
                        },
                      ),
                    ],
                  ),
                   SizedBox(height: 12.h),
                   if (filteredCashTransactions.isEmpty)
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 20),
                        child: Center(child: Text("No transactions found for selected status.")),
                      )
                   else
                      ...filteredCashTransactions.map((e) => _buildPaymentCard(
                        title: e.feeType??"",
                        transactionId: e.name,
                        amount: e.amount??0.0,
                        status: e.status??"",
                        date: e.transactionDate,
                        feeMode: e.feeMode, // Pass feeMode
                        mode: "Mode : ${e.mode??"N/A"}",
                        onDownload: (e.status?.toLowerCase() == 'success' || e.status?.toLowerCase() == 'complete')
                            ? () => _downloadReceipt(
                                transactionId: e.name, // sf_id
                                feeType: e.feeType ?? "",
                                amount: e.amount ?? 0.0,
                                status: e.status ?? "",
                                mode: e.mode ?? "-",
                                date: e.transactionDate,
                              )
                            : null,
                      )),
                ],
              ],
            ),
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, _) => Center(child: Text('Error: $e')),
      ),
    );
  }

  Widget _buildSectionHeader(String title) {
    return Text(
      title,
      style: AppTextStyles.titleMedium.copyWith(
        fontWeight: FontWeight.bold,
        fontSize: 18.sp,
        color: AppColors.primary,
      ),
    );
  }

  Future<void> _downloadReceipt({
    required String transactionId, // This is likely the sf_id
    required String feeType,
    required double amount,
    required String status,
    required String mode,
    String? date,
  }) async {
    try {
      // Show loading indicator
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => const Center(child: CircularProgressIndicator()),
      );

      final receiptResponse = await ref.read(transactionHistoryProvider.notifier).getReceiptDetails(transactionId);

      // Dismiss loading
      if (mounted) Navigator.pop(context);

      if (receiptResponse == null) {
        if (mounted) {
           ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Failed to fetch receipt details")));
        }
        return;
      }
      
      final transaction = receiptResponse.transaction;
      final student = receiptResponse.student;
      final school = receiptResponse.school;

      if (transaction == null || student == null || school == null) {
         if (mounted) {
           ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Incomplete receipt data")));
        }
        return;
      }

      final pdfBytes = await ReceiptService().generateReceipt(
        schoolName: student.school ?? "Amrita Vidyalayam", // Data has school name
        studentName: student.firstName ?? "-",
        applicationNo: student.admissionNo ?? "-",
        receiptNo: transaction.transactionId ?? "-",
        academicYear: student.academicYear ?? "-", 
        amount: (transaction.amount ?? 0.0).toStringAsFixed(2),
        date: transaction.transactionDate ?? (date ?? "-"),
        status: transaction.status ?? status,
        feeType: transaction.feeType ?? feeType,
        mode: transaction.mode ?? mode,
        transactionRef: transaction.transactionReferenceNo ?? "-",
        address: school.schAddress ?? "-",
        parentName: student.fathersName, // added parent name 
        className: student.admissionSoughtTo, // added class name
      );

      await Printing.sharePdf(bytes: pdfBytes, filename: 'receipt_${transaction.transactionId}.pdf');
    } catch (e) {
      // Ensure loading is dismissed if error occurs
      // We might have already popped, but simple check is hard here without key or separate state.
      // Ideally use a boolean state for loading. But simple approach:
      // If we are here, we might need to pop if dialog is still up. 
      // Safe way: rely on catch block after await.
      
      if (mounted) {
         // Attempt to close dialog if it's potentially open, might be risky if navigation happened.
         // Better to just show error. User can tap back if stuck (dialog barrier is false though).
         // Actually barrierDismissible is false. 
         // Let's rely on the fact that getReceiptDetails wont throw, it returns null.
         // ReceiptService might throw.
         
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Error: $e")));
      }
    }
  }

  Widget _buildPaymentCard({
    required String title,
    required String transactionId,
    required double amount,
    required String status,
    String? date,
    required String mode,
    required String? feeMode, // Added feeMode param
    VoidCallback? onDownload,
  }) {
    return Container(
      margin: EdgeInsets.only(bottom: 12.h),
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.r),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: AppTextStyles.bodySmall.copyWith(fontWeight: FontWeight.bold),
                    ),
                    if (feeMode != null && feeMode.isNotEmpty) ...[
                      SizedBox(height: 4.h),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 2.h),
                        decoration: BoxDecoration(
                          color: AppColors.primary.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(4.r),
                        ),
                        child: Text(
                          feeMode,
                          style: TextStyle(
                            fontSize: 10.sp,
                            color: AppColors.primary,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
                decoration: BoxDecoration(
                  color: status.toLowerCase() == 'success' || status.toLowerCase() == 'complete'
                      ? Colors.green.withOpacity(0.1)
                      : Colors.orange.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(8.r),
                ),
                child: Text(
                  status.toUpperCase(),
                  style: TextStyle(
                    color: status.toLowerCase() == 'success' || status.toLowerCase() == 'complete'
                        ? Colors.green
                        : Colors.orange,
                    fontSize: 10.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 8.h),
          Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(transactionId, style: AppTextStyles.bodyMedium.copyWith(color: AppColors.textSecondary, fontSize: 12.sp)),
              Text("₹ ${amount.toStringAsFixed(2)}", style: AppTextStyles.titleMedium.copyWith(fontWeight: FontWeight.bold)),
            ],
          ),
          Divider(height: 20.h, thickness: 0.5),
          Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              if (date != null)
                Text("Date: $date", style: AppTextStyles.bodyMedium.copyWith(fontSize: 12.sp, color: AppColors.textSecondary))
              else
                const SizedBox(),
              Text("$mode", style: AppTextStyles.bodyMedium.copyWith(fontSize: 12.sp, color: AppColors.textSecondary)),
            ],
          ),
           if (onDownload != null) ...[
            SizedBox(height: 12.h),
            SizedBox(
              width: double.infinity,
              child: OutlinedButton.icon(
                onPressed: onDownload,
                icon: const Icon(Icons.download, size: 18),
                label: const Text("Download Receipt"),
                style: OutlinedButton.styleFrom(
                  foregroundColor: AppColors.primary,
                  side: const BorderSide(color: AppColors.primary),
                ),
              ),
            ),
          ],
        ],
      ),
    );
  }
}
