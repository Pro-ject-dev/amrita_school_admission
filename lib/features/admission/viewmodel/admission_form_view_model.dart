import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:amrita_vidhyalayam_admission/core/base_view_model.dart';
import 'package:amrita_vidhyalayam_admission/data/models/admission_form_model.dart';
import 'package:amrita_vidhyalayam_admission/data/models/applicant_details_model.dart';
import 'package:amrita_vidhyalayam_admission/data/models/parent_contact_model.dart';
import 'package:amrita_vidhyalayam_admission/data/models/address_model.dart';
import 'package:amrita_vidhyalayam_admission/data/repository/admission_repository.dart';

final admissionFormViewModelProvider =
    StateNotifierProvider<AdmissionFormViewModel, AdmissionFormModel>((ref) {
  return AdmissionFormViewModel(ref.read(admissionRepositoryProvider));
});

class AdmissionFormViewModel extends BaseViewModel<AdmissionFormModel> {
  final AdmissionRepository _repository;

  AdmissionFormViewModel(this._repository) : super(const AdmissionFormModel());

  void updateApplicantDetails(ApplicantDetailsModel details) {
    state = state.copyWith(applicantDetails: details);
    logInfo('Applicant Details Updated: $details');
  }

  void updateParentContact(ParentContactModel contact) {
    state = state.copyWith(parentContact: contact);
    logInfo('Parent Contact Updated: $contact');
  }

  void updateAddress(AddressModel address) {
    state = state.copyWith(address: address);
    logInfo('Address Updated: $address');
  }

  Future<void> submitForm() async {
    logInfo('Submitting Form: $state');
    try {
      await _repository.submitAdmissionForm(state);
    } catch (e, st) {
      logError('Submission failed', e, st);
      rethrow;
    }
  }
  
  void markPaymentComplete(String paymentId) {
    state = state.copyWith(isPaymentComplete: true, paymentId: paymentId);
    logInfo('Payment Complete: $paymentId');
  }
}
