import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_history_model.freezed.dart';
part 'transaction_history_model.g.dart';

@freezed
abstract class TransactionHistoryModel with _$TransactionHistoryModel {
  const factory TransactionHistoryModel({
    @JsonKey(name: 'applicant') String? applicant,
    @JsonKey(name: 'school') String? school,
    @JsonKey(name: 'student_id') String? studentId,
    @JsonKey(name: 'payment') @Default([]) List<PaymentTransaction> payment,
    @JsonKey(name: 'cash_transaction_list') @Default([]) List<CashTransaction> cashTransactionList,
  }) = _TransactionHistoryModel;

  factory TransactionHistoryModel.fromJson(Map<String, dynamic> json) =>
      _$TransactionHistoryModelFromJson(json);
}

@freezed
abstract class PaymentTransaction with _$PaymentTransaction {
  const factory PaymentTransaction({
    required String name,
    required String title,
    @JsonKey(name: 'net_amount') required double? netAmount,
    @JsonKey(name: 'fee_type') required String? feeType,
    required String? status,
    @JsonKey(name: 'fee_mode') required String? feeMode,
    @JsonKey(name: 'mobile_number') String? mobileNumber,
  }) = _PaymentTransaction;

  factory PaymentTransaction.fromJson(Map<String, dynamic> json) =>
      _$PaymentTransactionFromJson(json);
}

@freezed
abstract class CashTransaction with _$CashTransaction {
  const factory CashTransaction({
    required String name,
    @JsonKey(name: 'transaction_date') required String? transactionDate,
    @JsonKey(name: 'fee_type') required String? feeType,
    @JsonKey(name: 'fee_mode') required String? feeMode,
    required double? amount,
    required String? status,
    required String? mode,
  }) = _CashTransaction;

  factory CashTransaction.fromJson(Map<String, dynamic> json) =>
      _$CashTransactionFromJson(json);
}
