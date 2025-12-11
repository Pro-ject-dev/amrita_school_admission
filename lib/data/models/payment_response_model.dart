import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_response_model.freezed.dart';
part 'payment_response_model.g.dart';

@freezed
abstract class PaymentResponseModel with _$PaymentResponseModel {
  const factory PaymentResponseModel({
    required String status,
    required String transactionId,
    required double amount,
    required DateTime date,
    String? message,
  }) = _PaymentResponseModel;

  factory PaymentResponseModel.fromJson(Map<String, dynamic> json) =>
      _$PaymentResponseModelFromJson(json);
}
