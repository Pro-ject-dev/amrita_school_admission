import 'package:amrita_vidyalyam_admission/data/models/admission_form_model.dart';
import 'package:amrita_vidyalyam_admission/data/models/applicant_details_model.dart';
import 'package:amrita_vidyalyam_admission/data/models/parent_contact_model.dart';
import 'package:amrita_vidyalyam_admission/data/models/address_model.dart';
import 'package:amrita_vidyalyam_admission/data/repository/admission_repository.dart';
import 'package:amrita_vidyalyam_admission/core/services/local_storage_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:amrita_vidyalyam_admission/features/admission/viewmodel/admission_form_view_model.dart';
import 'package:amrita_vidyalyam_admission/core/shared/helpers/error_helper.dart';

class LoginState {
  final bool isLoading;
  final String? error;

  LoginState({this.isLoading = false, this.error});

  LoginState copyWith({bool? isLoading, String? error}) {
    return LoginState(isLoading: isLoading ?? this.isLoading, error: error);
  }
}

class LoginViewModel extends StateNotifier<LoginState> {
  final AdmissionRepository _repository;
  final Ref _ref;
  final LocalStorageService _storageService;

  LoginViewModel(this._repository, this._ref, this._storageService)
    : super(LoginState());

  Future<bool> login(String mobileNumber) async {
    // ... (existing login logic, no change needed)
    state = state.copyWith(isLoading: true, error: null);

    try {
      final validationResponse = await _repository.validateApplicant(
        mobileNumber,
      );
      // print("LOGIN DEBUG: Validation for $mobileNumber: $validationResponse");
      if (validationResponse['message'] != null &&
          validationResponse['message']['status'] == true) {
        await sendOtp(mobileNumber);
        state = state.copyWith(isLoading: false);
        return true;
      } else {
        final errorMsg =
            validationResponse['message']?['message'] ?? 'Applicant Not Found';
        state = state.copyWith(isLoading: false, error: errorMsg);
        return false;
      }
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        error: ErrorHelper.getErrorMessage(e),
      );
      return false;
    }
  }

  Future<void> fetchStudentApplicant(String mobileNumber) async {
    state = state.copyWith(isLoading: true, error: null);
    try {
      // Save login data and fetch
      await _storageService.saveLoginData(mobileNumber);
      final response = await _repository.fetchStudentApplicant(mobileNumber);
      // ... (existing fetch logic)
      if (response != null && response.message.status) {
        final data = response.message.applicantData;
        // ...
        // (rest of fetch logic remains same)
        // I will copy the rest of function but keeping it simple for replacement
        // print(
        //   "LOGIN DEBUG: Data fetched for ${data.applicantId}, Name: ${data.name}",
        // );
        // print("LOGIN DEBUG: Fee Data: ${response.message.feeData}");
        DateTime? dob;
        try {
          dob = DateTime.parse(data.dateOfBirth);
        } catch (e) {
          // print("LOGIN DEBUG: Date parse error: $e");
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
            schoolTransportRequired:
                data.schoolTransportRequired?.toLowerCase() == "yes",
          ),
          parentContact: ParentContactModel(
            primaryName: data.primaryContactName,
            primaryRelation: data.primaryContactRelation,
            primaryMobile: data.primaryContactMobile,
            secondaryRelation: data.secondaryContactRelation,
            secondaryMobile: data.mobileNumberSecondary,
            secondaryName: data.secondaryContactName,

            // Guardian Details
            guardiansName: data.guardiansName,
            guardiansMobileNumber: data.guardiansMobileNumber,
            guardiansOccupation: data.guardiansOccupation,
            guardiansAddress: data.guardiansAddress,
            guardiansEmailAddress: data.guardiansEmailAddress,
            guardiansOfficeNumber: data.guardiansOfficeNumber,
            guardiansAadhaarNumber: data.guardiansAadhaarNumber,

            // Father Details
            fathersName: data.fathersName,
            fathersAadhaarNumber: data.fathersAadhaarNumber,
            fathersOccupation: data.fathersOccupation,
            fathersAnnualIncome: data.fathersAnnualIncome,
            fathersMobileNumber: data.fathersMobileNumber,
            fathersTelephoneOffice: data.fathersTelephoneOffice,
            fathersPostHeld: data.fathersPostHeld,
            fathersPermanentAddress: data.fathersPermanentAddress,
            fathersLanguagesKnown: data.fathersLanguagesKnown,
            fathersEmailAddress: data.fathersEmailAddress,
            fathersEducationalQualification:
                data.fathersEducationalQualification,
            fathersCompanyName: data.fathersCompanyName,
            fathersBusinessAddress: data.fathersBusinessAddress,

            // Mother Details
            mothersName: data.mothersName,
            mothersAadhaarNumber: data.mothersAadhaarNumber,
            mothersOccupation: data.mothersOccupation,
            mothersAnnualIncome: data.mothersAnnualIncome,
            mothersMobileNumber: data.mothersMobileNumber,
            mothersEmailAddress: data.mothersEmailAddress,
            mothersLanguagesKnown: data.mothersLanguagesKnown,
            mothersCompanyName: data.mothersCompanyName,
            mothersBusinessAddress: data.mothersBusinessAddress,
            mothersEducationalQualification:
                data.mothersEducationalQualification,
            mothersPermanentAddress: data.mothersPermanentAddress,
            mothersPostHeld: data.mothersPostHeld,
            mothersTelephoneOffice: data.mothersTelephoneOffice,
          ),
          address: AddressModel(address: data.communicationAddress),
          feeData: response.message.feeData,
          userId: response.message.user,
        );
        // print(
        //   "LOGIN DEBUG: Setting form data. Transport: ${formModel.applicantDetails?.schoolTransportRequired}",
        // );
        // print(
        //   "LOGIN DEBUG: Parent: ${formModel.parentContact?.fathersName}, Guardian: ${formModel.parentContact?.guardiansName}",
        // );
        _ref
            .read(admissionFormProvider.notifier)
            .setFormData(formModel, forceUnsavedChanges: false);
      } else {
        // print(
        //   "LOGIN DEBUG: Validation success but fetch returned null/false. Proceeding with empty? Or just login success.",
        // );
      }
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        error: ErrorHelper.getErrorMessage(e),
      );
    } finally {
      state = state.copyWith(isLoading: false);
    }
  }

  Future<bool> sendOtp(String mobileNumber) async {
    // ...
    state = state.copyWith(isLoading: true, error: null);
    try {
      final response = await _repository.loginViaSms(mobileNumber);
      state = state.copyWith(isLoading: false);
      if (response['message'] != null) {
        return true;
      }
      return false;
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        error: ErrorHelper.getErrorMessage(e),
      );
      return false;
    }
  }

  Future<bool> verifyOtp(String mobileNumber, String otp) async {
    state = state.copyWith(isLoading: true, error: null);
    try {
      final response = await _repository.verifyOtp(mobileNumber, otp);
      if (response['message'] != null &&
          response['message']['message'] == "OTP verified") {
        // Save login data
        await _storageService.saveLoginData(mobileNumber);
        state = state.copyWith(isLoading: false);
        return true;
      } else {
        state = state.copyWith(isLoading: false, error: "Invalid OTP");
        return false;
      }
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        error: ErrorHelper.getErrorMessage(e),
      );
      return false;
    }
  }

  Future<void> logout() async {
    await _storageService.clearLoginData();
    state = LoginState();
  }
}

final loginProvider = StateNotifierProvider<LoginViewModel, LoginState>((ref) {
  final repository = ref.read(admissionRepositoryProvider);
  final storage = ref.read(localStorageServiceProvider);
  return LoginViewModel(repository, ref, storage);
});
