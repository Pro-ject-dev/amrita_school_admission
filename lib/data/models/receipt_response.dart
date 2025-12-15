import 'package:freezed_annotation/freezed_annotation.dart';

part 'receipt_response.freezed.dart';
part 'receipt_response.g.dart';

@freezed
abstract class ReceiptResponse with _$ReceiptResponse {
  const factory ReceiptResponse({
    ReceiptTransaction? transaction,
    ReceiptStudent? student,
    ReceiptSchool? school,
    String? message, // For error handling
  }) = _ReceiptResponse;

  factory ReceiptResponse.fromJson(Map<String, dynamic> json) =>
      _$ReceiptResponseFromJson(json);
}

@freezed
abstract class ReceiptTransaction with _$ReceiptTransaction {
  const factory ReceiptTransaction({
    @JsonKey(name: 'transaction_id') String? transactionId,
    @JsonKey(name: 'amount') double? amount,
    @JsonKey(name: 'transaction_date') String? transactionDate,
    @JsonKey(name: 'transaction_time') String? transactionTime,
    @JsonKey(name: 'fee_type') String? feeType,
    @JsonKey(name: 'transaction_reference_no') String? transactionReferenceNo,
    String? status,
    String? mode,
  }) = _ReceiptTransaction;

  factory ReceiptTransaction.fromJson(Map<String, dynamic> json) =>
      _$ReceiptTransactionFromJson(json);
}

@freezed
abstract class ReceiptStudent with _$ReceiptStudent {
  const factory ReceiptStudent({
    @JsonKey(name: 'first_name') String? firstName,
    String? school,
    @JsonKey(name: 'fathers_name') String? fathersName,
    @JsonKey(name: 'primary_contact_name') String? primaryContactName,
    @JsonKey(name: 'admission_no') String? admissionNo,
    @JsonKey(name: 'admission_sought_to') String? admissionSoughtTo,
    @JsonKey(name: 'academic_year') String? academicYear,
    @JsonKey(name: 'program_name') String? programName,
    String? division,
  }) = _ReceiptStudent;

  factory ReceiptStudent.fromJson(Map<String, dynamic> json) =>
      _$ReceiptStudentFromJson(json);
}

@freezed
abstract class ReceiptSchool with _$ReceiptSchool {
  const factory ReceiptSchool({
    @JsonKey(name: 'sch_address') String? schAddress,
    @JsonKey(name: 'sch_phn') String? schPhn,
    @JsonKey(name: 'sch_sec_phn') String? schSecPhn,
    @JsonKey(name: 'aff_no') String? affNo,
    @JsonKey(name: 'aff_name') String? affName,
    @JsonKey(name: 'school_email') String? schoolEmail,
    @JsonKey(name: 'school_website') String? schoolWebsite,
    @JsonKey(name: 'letter_head') String? letterHead,
  }) = _ReceiptSchool;

  factory ReceiptSchool.fromJson(Map<String, dynamic> json) =>
      _$ReceiptSchoolFromJson(json);
}
