import 'package:amrita_vidyalyam_admission/constants/app_colors.dart';
import 'package:amrita_vidyalyam_admission/constants/app_text_styles.dart';
import 'package:amrita_vidyalyam_admission/features/admission/viewmodel/transaction_history_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:printing/printing.dart';
import '../../../core/services/receipt_service.dart';
import '../../../data/models/transaction_history_model.dart';

class TransactionHistoryScreen extends ConsumerStatefulWidget {
  final String studentId;

  const TransactionHistoryScreen({super.key, required this.studentId});

  @override
  ConsumerState<TransactionHistoryScreen> createState() => _TransactionHistoryScreenState();
}

class _TransactionHistoryScreenState extends ConsumerState<TransactionHistoryScreen> {
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
        title: const Text('Transaction History', style: TextStyle(color: Colors.black)),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: historyState.when(
        data: (data) {
          if (data == null) {
            return const Center(child: Text("No transaction history found."));
          }
          final payments = data.payment;
          final cashTransactions = data.cashTransactionList;

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
                    date: null, 
                    mode: "",
                    onDownload: (e.status?.toLowerCase() == 'success' || e.status?.toLowerCase() == 'complete')
                        ? () => _downloadReceipt(
                            transactionId: e.name,
                            feeType: e.title,
                            amount: e.netAmount ?? 0.0,
                            status: e.status ?? "",
                            mode: "Online",
                            historyData: data,
                          )
                        : null,
                  )),
                  SizedBox(height: 24.h),
                ],

                if (cashTransactions.isNotEmpty) ...[
                  _buildSectionHeader("Cash Transactions"),
                   SizedBox(height: 12.h),
                  ...cashTransactions.map((e) => _buildPaymentCard(
                    title: e.feeType??"",
                    transactionId: e.name,
                    amount: e.amount??0.0,
                    status: e.status??"",
                    date: e.transactionDate,
                    mode: "Mode : ${e.mode??"N/A"}",
                    onDownload: (e.status?.toLowerCase() == 'success' || e.status?.toLowerCase() == 'complete')
                        ? () => _downloadReceipt(
                            transactionId: e.name,
                            feeType: e.feeType ?? "",
                            amount: e.amount ?? 0.0,
                            status: e.status ?? "",
                            mode: e.mode ?? "-",
                            date: e.transactionDate,
                            historyData: data,
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
    required String transactionId,
    required String feeType,
    required double amount,
    required String status,
    required String mode,
    String? date,
    required TransactionHistoryModel historyData,
  }) async {
    try {
      final pdfBytes = await ReceiptService().generateReceipt(
        schoolName: historyData.school ?? "Amrita Vidyalayam",
        studentName: historyData.applicant ?? "Student",
        applicationNo: historyData.studentId ?? "-",
        receiptNo: transactionId,
        academicYear: "2024-2025", 
        amount: amount.toString(),
        date: date ?? DateTime.now().toString().split('.')[0],
        status: status,
        feeType: feeType,
        mode: mode,
        transactionRef: transactionId,
        address: "Karur ByPass Road, Punjailakkapuram, Lakkapuram Post, Erode – 638002.\nPh: (0424)2900329, 9488937000, Email: officeerde@tn.amritavidyalayam.edu.in.\nWeb: https://amritaschool.edu.in/erode.",
      );

      await Printing.sharePdf(bytes: pdfBytes, filename: 'receipt_$transactionId.pdf');
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Failed to generate receipt: $e")));
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
                child: Text(
                  title,
                  style: AppTextStyles.bodySmall.copyWith(fontWeight: FontWeight.bold),
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
