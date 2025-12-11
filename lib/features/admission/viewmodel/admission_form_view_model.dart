import 'package:amrita_vidyalyam_admission/data/models/admission_form_model.dart';
import 'package:amrita_vidyalyam_admission/data/models/applicant_details_model.dart';
import 'package:amrita_vidyalyam_admission/data/models/parent_contact_model.dart';
import 'package:amrita_vidyalyam_admission/data/models/address_model.dart';
import 'package:amrita_vidyalyam_admission/data/repository/admission_repository.dart';
import 'package:amrita_vidyalyam_admission/data/models/school_model.dart';
import 'package:amrita_vidyalyam_admission/data/models/admission_class_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';

import 'package:flutter/services.dart';
// import 'package:pay_with_easebuzz/pay_with_easebuzz.dart';

class AdmissionFormViewModel extends StateNotifier<AdmissionFormModel> {
  final AdmissionRepository _repository;

  AdmissionFormViewModel(this._repository) : super(const AdmissionFormModel());

  void updateApplicantDetails(ApplicantDetailsModel details) {
    if (state.applicantDetails == details) return;
    
    state = state.copyWith(
      applicantDetails: details,
      hasUnsavedChanges: state.isSubmitted ? true : false,
    );
  }

  void updateParentContact(ParentContactModel contact) {
    if (state.parentContact == contact) return;

    state = state.copyWith(
      parentContact: contact,
      hasUnsavedChanges: state.isSubmitted ? true : false,
    );
  }

  void updateAddress(AddressModel address) {
    if (state.address == address) return;

    state = state.copyWith(
      address: address,
      hasUnsavedChanges: state.isSubmitted ? true : false,
    );
  }

  void setFormData(AdmissionFormModel data, {bool forceUnsavedChanges = false}) {
    state = data.copyWith(hasUnsavedChanges: forceUnsavedChanges);
  }

  Future<void> submitForm() async {
    final response = await _repository.submitAdmissionForm(state);
    state = state.copyWith(
      isSubmitted: true,
      hasUnsavedChanges: false,
      paymentId: response.details.applicantId 
    );
  }

  Future<void> updateForm() async {
    final response = await _repository.updateApplicant(state);
    state = state.copyWith(
      isSubmitted: true, 
      hasUnsavedChanges: false,
      paymentId: response.details.applicantId.isNotEmpty ? response.details.applicantId : state.paymentId
    );
  }

  void clearForm() {
    state = const AdmissionFormModel();
  }

  Future<Map<String, dynamic>> startPayment() async {
    try {
      final accessKey = await _repository.initiatePayment(state);
      if (accessKey.isEmpty) throw Exception("Empty access key returned");

      try {
        // Map<String, dynamic> paymentResult = await PayWithEasebuzz.getPayWithEasebuzz(
        //   accessKey,
        //   "test" // 'test' or 'prod'
        // );
        // return paymentResult;
        return {};
      } on PlatformException {
         return {'result': 'payment_failed', 'error': 'Platform Exception'};
      }
    } catch (e) {
      return {'result': 'error', 'error_msg': e.toString()};
    }
  }
}

final admissionFormProvider =
    StateNotifierProvider<AdmissionFormViewModel, AdmissionFormModel>((ref) {
  final repository = ref.read(admissionRepositoryProvider);
  return AdmissionFormViewModel(repository);
});

final schoolsProvider = FutureProvider<List<SchoolModel>>((ref) async {
  final repository = ref.read(admissionRepositoryProvider);
  return repository.getSchools();
});

final selectedSchoolProvider = StateProvider<String?>((ref) => null);

final programsProvider = FutureProvider<List<AdmissionClassModel>>((ref) async {
  final schoolName = ref.watch(selectedSchoolProvider);
  if (schoolName == null) return [];
  
  final repository = ref.read(admissionRepositoryProvider);
  return repository.getClassBySchool(schoolName);
});
