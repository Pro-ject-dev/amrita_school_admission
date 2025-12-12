import 'dart:typed_data';
import 'package:flutter/services.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';

class ReceiptService {
  Future<Uint8List> generateReceipt({
    required String schoolName,
    required String studentName,
    required String applicationNo,
    required String receiptNo,
    required String academicYear,
    required String amount,
    required String date,
    required String status,
    required String feeType,
    required String mode,
    required String transactionRef,
    String? parentName,
    String? className,
    String? address,
  }) async {
    final logoImage = await rootBundle.load('assets/images/app_logo_primary.png');
    final imageBytes = logoImage.buffer.asUint8List();
    final logo = pw.MemoryImage(imageBytes);

    final fontRegular = await PdfGoogleFonts.openSansRegular();
    final fontBold = await PdfGoogleFonts.openSansBold();

    final pdf = pw.Document();

    pdf.addPage(
      pw.Page(
        pageFormat: PdfPageFormat.a4,
        build: (pw.Context context) {
          return pw.Column(
            children: [
              // Header
              pw.Container(
                alignment: pw.Alignment.center,
                child: pw.Image(logo, height: 60),
              ),
              pw.SizedBox(height: 10),
              pw.Text(
                'Secondary School / CBSE Affiliation. No: 1931579',
                style: pw.TextStyle(font: fontBold, fontSize: 10),
              ),
              pw.Text(
                'Managed by : Mata Amritanandamayi Math',
                style: pw.TextStyle(font: fontBold, fontSize: 10),
              ),
              if (address != null)
                pw.Text(
                  address,
                  textAlign: pw.TextAlign.center,
                  style: pw.TextStyle(font: fontBold, fontSize: 10),
                ),
              pw.SizedBox(height: 20),
              pw.Text(
                'Fee Payment Receipt',
                style: pw.TextStyle(font: fontBold, fontSize: 16),
              ),
              pw.SizedBox(height: 20),

              // Table
              pw.Container(
                decoration: pw.BoxDecoration(
                  border: pw.Border.all(width: 1),
                ),
                child: pw.Column(
                  children: [
                    _buildRow('Fee Receipt Number', receiptNo, fontBold),
                    _buildRow('Student Name', studentName, fontBold),
                    if (parentName != null) _buildRow("Parent's Name", parentName, fontBold),
                    _buildRow('Application No', applicationNo, fontBold),
                    if (className != null) _buildRow('Class', className, fontBold),
                    _buildRow('Academic Year', academicYear, fontBold),
                    _buildRow('Amount Paid', amount, fontBold),
                    _buildRow('Payment Date & Time', date, fontBold),
                    _buildRow('Status', status, fontBold),
                    _buildRow('Fee Type', feeType, fontBold),
                    _buildRow('Mode of Payment', mode, fontBold),
                    _buildRow('Transaction\nReference Number', transactionRef, fontBold, isLast: true),
                  ],
                ),
              ),
              
              pw.SizedBox(height: 20),
              pw.Text(
                '*** This is a system generated receipt. No signature required. Thank You. ***',
                style: pw.TextStyle(font: fontRegular, fontSize: 10, color: PdfColors.red),
              ),
            ],
          );
        },
      ),
    );

    return pdf.save();
  }

  pw.Widget _buildRow(String label, String value, pw.Font font, {bool isLast = false}) {
    return pw.Container(
      decoration: pw.BoxDecoration(
        border: isLast ? null : pw.Border(bottom: pw.BorderSide(width: 1)),
      ),
      child: pw.Row(
        children: [
          pw.Container(
            width: 200,
            padding: const pw.EdgeInsets.all(5),
            decoration: const pw.BoxDecoration(
              border: pw.Border(right: pw.BorderSide(width: 1)),
            ),
            child: pw.Text(
              label,
              style: pw.TextStyle(font: font, fontSize: 10, fontWeight: pw.FontWeight.bold),
            ),
          ),
          pw.Expanded(
            child: pw.Padding(
              padding: const pw.EdgeInsets.all(5),
              child: pw.Text(
                value,
                style: pw.TextStyle(font: font, fontSize: 10),
                textAlign: pw.TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
