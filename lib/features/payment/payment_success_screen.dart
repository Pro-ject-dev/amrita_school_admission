import 'package:amrita_vidyalyam_admission/constants/app_colors.dart';
import 'package:amrita_vidyalyam_admission/constants/app_text_styles.dart';
import 'package:amrita_vidyalyam_admission/core/services/receipt_service.dart';
import 'package:amrita_vidyalyam_admission/features/admission/viewmodel/transaction_history_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:printing/printing.dart';


class PaymentSuccessScreen extends ConsumerWidget {
  final String transactionId;
  final String date;

  const PaymentSuccessScreen({
    super.key, 
    this.transactionId = "-", 
    this.date = "-",
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(24.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Confirmation',
                style: AppTextStyles.headlineMedium.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 40.h),
              Container(
                width: 200.w,
                height: 200.w,
                decoration: BoxDecoration(
                  color: const Color(0xFFFFF3E0),
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.check_circle_outline,
                  size: 100.sp,
                  color: const Color(0xFF2E7D32),
                ),
              ),
              
              SizedBox(height: 40.h),
              
              Text(
                'Payment Successful!',
                style: AppTextStyles.displayMedium.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 16.h),
              Text(
                'Your application has been submitted.',
                style: AppTextStyles.bodyLarge.copyWith(
                  color: AppColors.textSecondary,
                ),
                textAlign: TextAlign.center,
              ),
              
              SizedBox(height: 40.h),
              
              Container(
                padding: EdgeInsets.all(16.w),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12.r),
                  border: Border.all(color: AppColors.border),
                ),
                child: Column(
                  children: [
                    _buildDetailRow('Transaction ID:', transactionId),
                    SizedBox(height: 12.h),
                    _buildDetailRow('Transaction Date:', date),
                  ],
                ),
              ),
              
              const Spacer(),
              
              SizedBox(
                width: double.infinity,
                height: 56.h,
                child: ElevatedButton.icon(
                  onPressed: () {
                    if (transactionId != "-") {
                       _downloadReceipt(context, ref, transactionId);
                    } else {
                       ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Invalid Transaction ID")));
                    }
                  },
                  icon: const Icon(Icons.download),
                  label: const Text('Download Receipt'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primary,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.r)),
                  ),
                ),
              ),
              SizedBox(height: 16.h),
              SizedBox(
                width: double.infinity,
                height: 56.h,
                child: ElevatedButton(
                  onPressed: () => context.go('/admission'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFE0E0E0),
                    foregroundColor: Colors.black,
                    elevation: 0,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.r)),
                  ),
                  child: const Text('Go to Home'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDetailRow(String label, String value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(label, style: AppTextStyles.bodyMedium.copyWith(color: AppColors.textSecondary)),
        Text(value, style: AppTextStyles.bodyMedium.copyWith(fontWeight: FontWeight.bold)),
      ],
    );
  }

  Future<void> _downloadReceipt(BuildContext context, WidgetRef ref, String transactionId) async {
    try {
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => const Center(child: CircularProgressIndicator()),
      );

      final receiptResponse = await ref.read(transactionHistoryProvider.notifier).getReceiptDetails(transactionId);

      if (context.mounted) Navigator.pop(context);

      if (receiptResponse == null) {
        if (context.mounted) {
           ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Failed to fetch receipt details")));
        }
        return;
      }
      
      final transaction = receiptResponse.transaction;
      final student = receiptResponse.student;
      final school = receiptResponse.school;

      if (transaction == null || student == null || school == null) {
         if (context.mounted) {
           ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Incomplete receipt data")));
        }
        return;
      }

      final pdfBytes = await ReceiptService().generateReceipt(
        schoolName: student.school ?? "Amrita Vidyalayam",
        studentName: student.firstName ?? "-",
        applicationNo: student.admissionNo ?? "-",
        receiptNo: transaction.transactionId ?? "-",
        academicYear: student.academicYear ?? "-", 
        amount: (transaction.amount ?? 0.0).toStringAsFixed(2),
        date: transaction.transactionDate ?? (date ?? "-"),
        status: transaction.status ?? "Success", 
        feeType: transaction.feeType ?? "Admission Fee", 
        mode: transaction.mode ?? "Online",
        transactionRef: transaction.transactionReferenceNo ?? "-",
        address: school.schAddress ?? "-",
        parentName: student.fathersName,
        className: student.admissionSoughtTo,
      );

      await Printing.sharePdf(bytes: pdfBytes, filename: 'receipt_${transaction.transactionId}.pdf');
    } catch (e) {
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Error: $e")));
      }
    }
  }
}
