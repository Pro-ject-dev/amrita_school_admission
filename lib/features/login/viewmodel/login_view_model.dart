import 'package:amrita_vidyalyam_admission/data/models/admission_form_model.dart';
import 'package:amrita_vidyalyam_admission/data/models/applicant_details_model.dart';
import 'package:amrita_vidyalyam_admission/data/models/parent_contact_model.dart';
import 'package:amrita_vidyalyam_admission/data/models/address_model.dart';
import 'package:amrita_vidyalyam_admission/data/repository/admission_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:amrita_vidyalyam_admission/features/admission/viewmodel/admission_form_view_model.dart';

class LoginState {
  final bool isLoading;
  final String? error;

  LoginState({this.isLoading = false, this.error});

  LoginState copyWith({bool? isLoading, String? error}) {
    return LoginState(
      isLoading: isLoading ?? this.isLoading,
      error: error,
    );
  }
}

class LoginViewModel extends StateNotifier<LoginState> {
  final AdmissionRepository _repository;
  final Ref _ref;

  LoginViewModel(this._repository, this._ref) : super(LoginState());

  Future<void> login(String mobileNumber) async {
    state = state.copyWith(isLoading: true, error: null);

    try {
      final validationResponse = await _repository.validateApplicant(mobileNumber);
      print("LOGIN DEBUG: Validation for $mobileNumber: $validationResponse");


      if (validationResponse['message'] != null && 
          validationResponse['message']['status'] == true) {

     
         final response = await _repository.fetchStudentApplicant(mobileNumber);

         if (response != null && response.message.status) {
             final data = response.message.applicantData;
             print("LOGIN DEBUG: Data fetched for ${data.applicantId}, Name: ${data.name}");
             DateTime? dob;
             try {
               dob = DateTime.parse(data.dateOfBirth);
             } catch (e) {
                print("LOGIN DEBUG: Date parse error: $e");
             }

             final formModel = AdmissionFormModel(
               isSubmitted: true, 
               hasUnsavedChanges: false,
               paymentId: data.applicantId, 
               applicantDetails: ApplicantDetailsModel(
                 name: data.name,
                 gender: data.gender,
                 dob: dob ?? DateTime.now(),
                 aadharNumber: data.aadharNumber,
                 location: data.school,
                 admissionSoughtTo: data.admissionSoughtTo,
                 academicYear: data.academicYear,
                 religion: data.religion,
                 caste: data.caste,
                 category: data.category,
                 motherTongue: data.motherTongue,
                 bloodGroup: data.bloodGroup,
               ),
               parentContact: ParentContactModel(
                 primaryName: data.primaryContactName,
                 primaryRelation: data.primaryContactRelation,
                 primaryMobile: data.primaryContactMobile,
                 secondaryName: data.secondaryContactName,
                 secondaryRelation: data.secondaryContactRelation,
                 secondaryMobile: data.mobileNumberSecondary,
               ),
               address: AddressModel(address: data.communicationAddress),
             );
             print("LOGIN DEBUG: Setting form data to provider: $formModel");
             _ref.read(admissionFormProvider.notifier).setFormData(formModel, forceUnsavedChanges: true);
         } else {
             print("LOGIN DEBUG: Validation success but fetch returned null/false. Proceeding with empty? Or just login success.");
         }
      } else {
         final errorMsg = validationResponse['message']?['message'] ?? 'Applicant Not Found';
         state = state.copyWith(isLoading: false, error: errorMsg);
         return;
      }
      state = state.copyWith(isLoading: false);
    } catch (e) {
      state = state.copyWith(isLoading: false, error: e.toString());
    }
  }
}

final loginProvider = StateNotifierProvider<LoginViewModel, LoginState>((ref) {
  final repository = ref.read(admissionRepositoryProvider);
  return LoginViewModel(repository, ref);
});
