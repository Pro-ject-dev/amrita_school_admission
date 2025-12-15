// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'receipt_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ReceiptResponse _$ReceiptResponseFromJson(Map<String, dynamic> json) =>
    _ReceiptResponse(
      transaction: json['transaction'] == null
          ? null
          : ReceiptTransaction.fromJson(
              json['transaction'] as Map<String, dynamic>,
            ),
      student: json['student'] == null
          ? null
          : ReceiptStudent.fromJson(json['student'] as Map<String, dynamic>),
      school: json['school'] == null
          ? null
          : ReceiptSchool.fromJson(json['school'] as Map<String, dynamic>),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$ReceiptResponseToJson(_ReceiptResponse instance) =>
    <String, dynamic>{
      'transaction': instance.transaction,
      'student': instance.student,
      'school': instance.school,
      'message': instance.message,
    };

_ReceiptTransaction _$ReceiptTransactionFromJson(Map<String, dynamic> json) =>
    _ReceiptTransaction(
      transactionId: json['transaction_id'] as String?,
      amount: (json['amount'] as num?)?.toDouble(),
      transactionDate: json['transaction_date'] as String?,
      transactionTime: json['transaction_time'] as String?,
      feeType: json['fee_type'] as String?,
      transactionReferenceNo: json['transaction_reference_no'] as String?,
      status: json['status'] as String?,
      mode: json['mode'] as String?,
    );

Map<String, dynamic> _$ReceiptTransactionToJson(_ReceiptTransaction instance) =>
    <String, dynamic>{
      'transaction_id': instance.transactionId,
      'amount': instance.amount,
      'transaction_date': instance.transactionDate,
      'transaction_time': instance.transactionTime,
      'fee_type': instance.feeType,
      'transaction_reference_no': instance.transactionReferenceNo,
      'status': instance.status,
      'mode': instance.mode,
    };

_ReceiptStudent _$ReceiptStudentFromJson(Map<String, dynamic> json) =>
    _ReceiptStudent(
      firstName: json['first_name'] as String?,
      school: json['school'] as String?,
      fathersName: json['fathers_name'] as String?,
      primaryContactName: json['primary_contact_name'] as String?,
      admissionNo: json['admission_no'] as String?,
      admissionSoughtTo: json['admission_sought_to'] as String?,
      academicYear: json['academic_year'] as String?,
      programName: json['program_name'] as String?,
      division: json['division'] as String?,
    );

Map<String, dynamic> _$ReceiptStudentToJson(_ReceiptStudent instance) =>
    <String, dynamic>{
      'first_name': instance.firstName,
      'school': instance.school,
      'fathers_name': instance.fathersName,
      'primary_contact_name': instance.primaryContactName,
      'admission_no': instance.admissionNo,
      'admission_sought_to': instance.admissionSoughtTo,
      'academic_year': instance.academicYear,
      'program_name': instance.programName,
      'division': instance.division,
    };

_ReceiptSchool _$ReceiptSchoolFromJson(Map<String, dynamic> json) =>
    _ReceiptSchool(
      schAddress: json['sch_address'] as String?,
      schPhn: json['sch_phn'] as String?,
      schSecPhn: json['sch_sec_phn'] as String?,
      affNo: json['aff_no'] as String?,
      affName: json['aff_name'] as String?,
      schoolEmail: json['school_email'] as String?,
      schoolWebsite: json['school_website'] as String?,
      letterHead: json['letter_head'] as String?,
    );

Map<String, dynamic> _$ReceiptSchoolToJson(_ReceiptSchool instance) =>
    <String, dynamic>{
      'sch_address': instance.schAddress,
      'sch_phn': instance.schPhn,
      'sch_sec_phn': instance.schSecPhn,
      'aff_no': instance.affNo,
      'aff_name': instance.affName,
      'school_email': instance.schoolEmail,
      'school_website': instance.schoolWebsite,
      'letter_head': instance.letterHead,
    };
