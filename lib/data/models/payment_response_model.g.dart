// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaymentResponseModelImpl _$$PaymentResponseModelImplFromJson(
  Map<String, dynamic> json,
) => _$PaymentResponseModelImpl(
  status: json['status'] as String,
  transactionId: json['transactionId'] as String,
  amount: (json['amount'] as num).toDouble(),
  date: DateTime.parse(json['date'] as String),
  message: json['message'] as String?,
);

Map<String, dynamic> _$$PaymentResponseModelImplToJson(
  _$PaymentResponseModelImpl instance,
) => <String, dynamic>{
  'status': instance.status,
  'transactionId': instance.transactionId,
  'amount': instance.amount,
  'date': instance.date.toIso8601String(),
  'message': instance.message,
};
