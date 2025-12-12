import 'package:amrita_vidyalyam_admission/data/models/transaction_history_model.dart';
import 'package:amrita_vidyalyam_admission/data/repository/admission_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';

class TransactionHistoryViewModel extends StateNotifier<AsyncValue<TransactionHistoryModel?>> {
  final AdmissionRepository _repository;

  TransactionHistoryViewModel(this._repository) : super(const AsyncValue.loading());

  Future<void> fetchHistory(String studentId) async {
    state = const AsyncValue.loading();
    try {
      final history = await _repository.getTransactionHistory(studentId);
      state = AsyncValue.data(history);
    } catch (e, st) {
      state = AsyncValue.error(e, st);
    }
  }
}

final transactionHistoryProvider = StateNotifierProvider<TransactionHistoryViewModel, AsyncValue<TransactionHistoryModel?>>((ref) {
  final repository = ref.read(admissionRepositoryProvider);
  return TransactionHistoryViewModel(repository);
});
