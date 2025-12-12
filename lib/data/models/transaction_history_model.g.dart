// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_history_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TransactionHistoryModel _$TransactionHistoryModelFromJson(
  Map<String, dynamic> json,
) => _TransactionHistoryModel(
  applicant: json['applicant'] as String?,
  school: json['school'] as String?,
  studentId: json['student_id'] as String?,
  payment:
      (json['payment'] as List<dynamic>?)
          ?.map((e) => PaymentTransaction.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  cashTransactionList:
      (json['cash_transaction_list'] as List<dynamic>?)
          ?.map((e) => CashTransaction.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$TransactionHistoryModelToJson(
  _TransactionHistoryModel instance,
) => <String, dynamic>{
  'applicant': instance.applicant,
  'school': instance.school,
  'student_id': instance.studentId,
  'payment': instance.payment,
  'cash_transaction_list': instance.cashTransactionList,
};

_PaymentTransaction _$PaymentTransactionFromJson(Map<String, dynamic> json) =>
    _PaymentTransaction(
      name: json['name'] as String,
      title: json['title'] as String,
      netAmount: (json['net_amount'] as num?)?.toDouble(),
      feeType: json['fee_type'] as String?,
      status: json['status'] as String?,
      feeMode: json['fee_mode'] as String?,
      mobileNumber: json['mobile_number'] as String?,
    );

Map<String, dynamic> _$PaymentTransactionToJson(_PaymentTransaction instance) =>
    <String, dynamic>{
      'name': instance.name,
      'title': instance.title,
      'net_amount': instance.netAmount,
      'fee_type': instance.feeType,
      'status': instance.status,
      'fee_mode': instance.feeMode,
      'mobile_number': instance.mobileNumber,
    };

_CashTransaction _$CashTransactionFromJson(Map<String, dynamic> json) =>
    _CashTransaction(
      name: json['name'] as String,
      transactionDate: json['transaction_date'] as String?,
      feeType: json['fee_type'] as String?,
      feeMode: json['fee_mode'] as String?,
      amount: (json['amount'] as num?)?.toDouble(),
      status: json['status'] as String?,
      mode: json['mode'] as String?,
    );

Map<String, dynamic> _$CashTransactionToJson(_CashTransaction instance) =>
    <String, dynamic>{
      'name': instance.name,
      'transaction_date': instance.transactionDate,
      'fee_type': instance.feeType,
      'fee_mode': instance.feeMode,
      'amount': instance.amount,
      'status': instance.status,
      'mode': instance.mode,
    };
