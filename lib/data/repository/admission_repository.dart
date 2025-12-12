import 'package:amrita_vidyalyam_admission/core/shared/extensions/common_extensions.dart';
import 'package:amrita_vidyalyam_admission/data/models/admission_form_model.dart';
import 'package:amrita_vidyalyam_admission/data/models/school_model.dart';
import 'package:amrita_vidyalyam_admission/data/models/admission_class_model.dart';
import 'package:amrita_vidyalyam_admission/network/dio_client.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:amrita_vidyalyam_admission/data/models/admission_application_response.dart';
import 'package:amrita_vidyalyam_admission/data/models/student_applicant_response.dart';
import 'package:amrita_vidyalyam_admission/data/models/transaction_history_model.dart';

final admissionRepositoryProvider = Provider<AdmissionRepository>((ref) {
  final dio = ref.read(dioProvider);
  return AdmissionRepository(dio);
});

class AdmissionRepository {
  final Dio _dio;

  AdmissionRepository(this._dio);

  Future<AdmissionApplicationResponse> submitAdmissionForm(
    AdmissionFormModel form,
  ) async {
    try {
      final applicant = form.applicantDetails;
      final parent = form.parentContact;
      final address = form.address;

      if (applicant == null || parent == null || address == null) {
        throw Exception("Incomplete form data");
      }

      final payload = {
        "name1": applicant.name,
        "gender": applicant.gender,
        "date_of_birth": DateFormat('yyyy-MM-dd').format(applicant.dob),
        "school": applicant.location.toLowerCase(),
        "academic_year": applicant.academicYear,
        "admission_sought_to": applicant.admissionSoughtTo,
        "aadhar_number": applicant.aadharNumber,
        "primary_contact_name": parent.primaryName
            .toString()
            .trim()
            .capitalize(),
        "primary_contact_relation": parent.primaryRelation,
        "primary_contact_mobile": parent.primaryMobile,
        "secondary_contact_name": parent.secondaryName
            .toString()
            .trim()
            .capitalize(),
        "secondary_contact_relation": parent.secondaryRelation,
        "mobile_number_secondary": parent.secondaryMobile,
        "communication_address": address.address.toString().trim().capitalize(),
        "religion": applicant.religion,
        "caste": applicant.caste.toString().trim().capitalize(),
        "category": applicant.category,
        "mother_tongue": applicant.motherTongue.toString().trim().capitalize(),
        "blood_group": applicant.bloodGroup,
      };

      final response = await _dio.post('get_application_data', data: payload);

      if (response.statusCode == 200 && response.data != null) {
        final data = response.data;
        if (data['message'] != null && data['message']['status'] == 'error') {
          throw Exception(
            data['message']['message'] ?? 'Unknown error occurred',
          );
        }
        return AdmissionApplicationResponse.fromJson(data);
      } else {
        throw Exception(
          'Failed to submit application: ${response.statusMessage}',
        );
      }
    } catch (e) {
      if (e is DioException) {
        throw Exception('Network error: ${e.message}');
      }
      rethrow;
    }
  }

  Future<List<SchoolModel>> getSchools() async {
    try {
      final response = await _dio.get('get_all_schools');
      if (response.statusCode == 200 && response.data != null) {
        final List<dynamic> schoolsJson = response.data['schools'];
        return schoolsJson.map((json) => SchoolModel.fromJson(json)).toList();
      }
      return [];
    } catch (e) {
      throw Exception('Failed to load schools: $e');
    }
  }

  Future<List<AdmissionClassModel>> getClassBySchool(String schoolName) async {
    try {
      final response = await _dio.request(
        'get_program_data',
        data: {'school': schoolName},
        options: Options(method: 'GET'),
      );

      if (response.statusCode == 200 && response.data != null) {
        final List<dynamic> schoolsJson = response.data['message'];
        return schoolsJson
            .map((json) => AdmissionClassModel.fromJson(json))
            .toList();
      }
      return [];
    } catch (e) {
      throw Exception('Failed to load classes: $e');
    }
  }

  Future<StudentApplicantResponse?> fetchStudentApplicant(
    String mobileNumber,
  ) async {
    try {
      final response = await _dio.post(
        'fetch_student_applicant',
        data: {'mobile_number': mobileNumber},
      );

      if (response.statusCode == 200 && response.data != null) {
        if (response.data['message'] != null &&
            response.data['message']['status'] == true) {
          return StudentApplicantResponse.fromJson(response.data);
        }
      }
      return null;
    } catch (e) {
      return null;
    }
  }

  Future<Map<String, dynamic>> validateApplicant(String mobileNumber) async {
    try {
      final response = await _dio.request(
        'validate_applicant',
        data: {'mobile_number': mobileNumber},
        options: Options(method: 'GET'),
      );

      if (response.statusCode == 200 && response.data != null) {
        return response.data;
      }
      return {
        'message': {'status': false, 'message': 'Unknown error'},
      };
    } catch (e) {
      return {
        'message': {'status': false, 'message': e.toString()},
      };
    }
  }

  Future<AdmissionApplicationResponse> updateApplicant(
    AdmissionFormModel form,
  ) async {
    try {
      final applicant = form.applicantDetails;
      final parent = form.parentContact;
      final address = form.address;

      if (applicant == null || parent == null || address == null) {
        throw Exception("Incomplete form data");
      }

      final payload = {
        "applicant_id": form.paymentId,
        "data": {
          "name1": applicant.name,
          "gender": applicant.gender,
          "date_of_birth": DateFormat('yyyy-MM-dd').format(applicant.dob),
          "school": applicant.location.toLowerCase(),
          "academic_year": applicant.academicYear,
          "aadhar_number": applicant.aadharNumber,
          "primary_contact_name": parent.primaryName
              .toString()
              .trim()
              .capitalize(),
          "primary_contact_relation": parent.primaryRelation,
          "primary_contact_mobile": parent.primaryMobile,
          "secondary_contact_name": parent.secondaryName
              .toString()
              .trim()
              .capitalize(),
          "secondary_contact_relation": parent.secondaryRelation,
          "mobile_number_secondary": parent.secondaryMobile,
          "communication_address": address.address
              .toString()
              .trim()
              .capitalize(),
          "religion": applicant.religion,
          "caste": applicant.caste.toString().trim().capitalize(),
          "category": applicant.category,
          "mother_tongue": applicant.motherTongue
              .toString()
              .trim()
              .capitalize(),
          "blood_group": applicant.bloodGroup,
        },
      };

      final response = await _dio.post('update_applicant', data: payload);

      if (response.statusCode == 200 && response.data != null) {
        final data = response.data;
        try {
          return AdmissionApplicationResponse.fromJson(data);
        } catch (e) {
          return AdmissionApplicationResponse(
            details: ApplicationResponseDetails(
              status: 'success',
              message: 'Updated successfully',
              applicantId: form.paymentId ?? "",
              studentName: applicant.name,
              admissionSoughtTo: applicant.admissionSoughtTo,
              dateOfBirth: DateFormat('yyyy-MM-dd').format(applicant.dob),
              primaryContactName: parent.primaryName,
              primaryContactMobile: parent.primaryMobile,
              school: applicant.location,
            ),
          );
        }
      } else {
        throw Exception(
          'Failed to update application: ${response.statusMessage}',
        );
      }
    } catch (e) {
      if (e is DioException) {
        throw Exception('Network error: ${e.message}');
      }
      rethrow;
    }
  }

  Future<String> initiatePayment(AdmissionFormModel form) async {
    try {
      final applicant = form.applicantDetails;
      if (applicant == null) throw Exception("Applicant details missing");
      final pendingFees = form.feeData.where((e) => e.status == 'Pending').toList();
      if (pendingFees.isEmpty) {
          throw Exception("No pending fees found to pay");
      }
      final feeItem = pendingFees.first;
      final txnid = feeItem.name; 
      final payload = {
        "txnid": txnid,
        "phone": form.parentContact?.primaryMobile ?? "",
        "email": "EMI-24-015@av.edu",
        "payment_by": "EMI-24-015@av.edu"
      };
      final response = await _dio.request(
        'avadmission.utils.api.get_easebuzz_payment_details',
        data: payload,
         options: Options(method: 'POST'),
      );

      if (response.statusCode == 200 && response.data != null) {
        final data = response.data;
        if (data['message'] != null && data['message']['status'] == 1) {
           return data['message']['data']; 
        }
        throw Exception("Status not 1 or data missing");
      }
      throw Exception("Failed to initiate payment");
    } catch (e) {
      throw Exception('Payment initiation failed: ${e.toString()}');
    }
  }

  Future<Map<String, dynamic>> loginViaSms(String mobileNumber) async {
    try {
      final response = await _dio.post(
        'avadmission.app_otp_login.login_via_sms',
        data: {'mobile_number': mobileNumber},
      );
      if (response.statusCode == 200) {
        return response.data;
      }
      throw Exception('Failed to send OTP: ${response.statusMessage}');
    } catch (e) {
      throw Exception('Network error: $e');
    }
  }

  Future<Map<String, dynamic>> verifyOtp(String mobileNumber, String otp) async {
    try {
      final response = await _dio.post(
        'avadmission.app_otp_login.verify_otp',
        data: {
          'mobile_number': mobileNumber,
          'user_otp': otp,
        },
      );
      if (response.statusCode == 200) {
        return response.data;
      }
      throw Exception('Failed to verify OTP: ${response.statusMessage}');
    } catch (e) {
      throw Exception('Network error: $e');
    }
  }
  Future<void> sendPaymentResponse(Map<dynamic, dynamic> response) async {
    try {
      await _dio.post(
        'avadmission.utils.api.easebuzz_payment_return',
        data: response
      );
    } catch (e) {
      print('Failed to send payment response: $e');
    }
  }

  Future<TransactionHistoryModel?> getTransactionHistory(String studentId) async {
    try {
      final response = await _dio.request(
        'get_student_payment_by_stud_id',
        data: {'student_id': studentId},
        options: Options(method: 'GET'),
      );

      if (response.statusCode == 200 && response.data != null) {
        return TransactionHistoryModel.fromJson(response.data);
      }
      return null;
    } catch (e) {
      throw Exception('Failed to fetch transaction history: $e');
    }
  }
}
