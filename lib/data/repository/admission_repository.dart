import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:amrita_vidhyalayam_admission/data/models/admission_form_model.dart';

final admissionRepositoryProvider = Provider<AdmissionRepository>((ref) {
  return AdmissionRepository(Dio());
});

class AdmissionRepository {
  final Dio _dio;

  AdmissionRepository(this._dio);

  Future<void> submitAdmissionForm(AdmissionFormModel form) async {
    // Mock API call
    // await _dio.post('/admission', data: form.toJson());
    await Future.delayed(const Duration(seconds: 2));
  }
}
