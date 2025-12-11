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

      final payload = {
        "applicant_id": form.paymentId,
        "amount": 500.0, // Fixed admission fee
        "firstname": applicant.name,
        "email": "admission@amritaschool.edu.in", // Placeholder or from form if available
        "phone": form.parentContact?.primaryMobile ?? "",
        "productinfo": "Admission Fee",
        "surl": "https://admissions.amritaschool.edu.in/api/method/payment_success", // Example success URL
        "furl": "https://admissions.amritaschool.edu.in/api/method/payment_failure", // Example failure URL
      };

      final response = await _dio.post('initiate_payment', data: payload);

      if (response.statusCode == 200 && response.data != null) {
        final data = response.data;
        if (data['message'] != null && data['message']['access_key'] != null) {
          return data['message']['access_key'];
        }
        throw Exception("Access key not found in response");
      }
      throw Exception("Failed to initiate payment");
    } catch (e) {
      throw Exception('Payment initiation failed: ${e.toString()}');
    }
  }
}
