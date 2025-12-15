import 'package:freezed_annotation/freezed_annotation.dart';

part 'student_applicant_response.freezed.dart';
part 'student_applicant_response.g.dart';

@freezed
abstract class StudentApplicantResponse with _$StudentApplicantResponse {
  const factory StudentApplicantResponse({
    @JsonKey(name: 'message') required StudentApplicantMessage message,
  }) = _StudentApplicantResponse;

  factory StudentApplicantResponse.fromJson(Map<String, dynamic> json) =>
      _$StudentApplicantResponseFromJson(json);
}

@freezed
abstract class StudentApplicantMessage with _$StudentApplicantMessage {
  const factory StudentApplicantMessage({
    required bool status,
    required String user,
    @JsonKey(name: 'applicant_data') required ApplicantData applicantData,
    @JsonKey(name: 'fee_data') @Default([]) List<FeeData> feeData,
  }) = _StudentApplicantMessage;

  factory StudentApplicantMessage.fromJson(Map<String, dynamic> json) =>
      _$StudentApplicantMessageFromJson(json);
}

@freezed
abstract class ApplicantData with _$ApplicantData {
  const factory ApplicantData({
    @JsonKey(name: 'name1') required String name,
    required String school,
    @JsonKey(name: 'admission_sought_to') required String admissionSoughtTo,
    @JsonKey(name: 'applicant_id') required String applicantId,
    @JsonKey(name: 'academic_year') required String academicYear,
    @JsonKey(name: 'date_of_birth') required String dateOfBirth,
    required String gender,
    @JsonKey(name: 'aadhar_number') required String aadharNumber,
    @JsonKey(name: 'primary_contact_name') required String primaryContactName,
    @JsonKey(name: 'primary_contact_relation') required String primaryContactRelation,
    @JsonKey(name: 'primary_contact_mobile') required String primaryContactMobile,
    @JsonKey(name: 'secondary_contact_name') required String secondaryContactName,
    @JsonKey(name: 'secondary_contact_relation') required String secondaryContactRelation,
    @JsonKey(name: 'mobile_number_secondary') required String mobileNumberSecondary,
    @JsonKey(name: 'communication_address') required String communicationAddress,
    String? religion,
    String? caste,
    String? category,
    @JsonKey(name: 'mother_tongue') String? motherTongue,
    @JsonKey(name: 'blood_group') String? bloodGroup,
    @JsonKey(name: 'school_transport_required')  String? schoolTransportRequired,

    // Guardian Details
    @JsonKey(name: 'guardians_name') String? guardiansName,
    @JsonKey(name: 'guardians_mobile_number', fromJson: _safeString) String? guardiansMobileNumber,
    @JsonKey(name: 'guardians_occupation') String? guardiansOccupation,
    @JsonKey(name: 'guardians_address') String? guardiansAddress,
    @JsonKey(name: 'guardians_email_address') String? guardiansEmailAddress,
    @JsonKey(name: 'guardians_office_number', fromJson: _safeString) String? guardiansOfficeNumber,
    @JsonKey(name: 'guardians_aadhaar_number', fromJson: _safeString) String? guardiansAadhaarNumber,

    // Father Details
    @JsonKey(name: 'fathers_name') String? fathersName,
    @JsonKey(name: 'fathers_aadhaar_number', fromJson: _safeString) String? fathersAadhaarNumber,
    @JsonKey(name: 'fathers_occupation') String? fathersOccupation,
    @JsonKey(name: 'fathers_annual_income', fromJson: _safeString) String? fathersAnnualIncome,
    @JsonKey(name: 'fathers_mobile_number', fromJson: _safeString) String? fathersMobileNumber,
    @JsonKey(name: 'fathers_telephone_office', fromJson: _safeString) String? fathersTelephoneOffice,
    @JsonKey(name: 'fathers_post_held') String? fathersPostHeld,
    @JsonKey(name: 'fathers_permanent_address') String? fathersPermanentAddress,
    @JsonKey(name: 'fathers_languages_known') String? fathersLanguagesKnown,
    @JsonKey(name: 'fathers_email_address') String? fathersEmailAddress,
    @JsonKey(name: 'fathers_educational_qualification') String? fathersEducationalQualification,
    @JsonKey(name: 'fathers_company_name') String? fathersCompanyName,
    @JsonKey(name: 'fathers_business_address') String? fathersBusinessAddress,

    // Mother Details
    @JsonKey(name: 'mothers_name') String? mothersName,
    @JsonKey(name: 'mothers_aadhaar_number', fromJson: _safeString) String? mothersAadhaarNumber,
    @JsonKey(name: 'mothers_occupation') String? mothersOccupation,
    @JsonKey(name: 'mothers_annual_income', fromJson: _safeString) String? mothersAnnualIncome,
    @JsonKey(name: 'mothers_mobile_number', fromJson: _safeString) String? mothersMobileNumber,
    @JsonKey(name: 'mothers_email_address') String? mothersEmailAddress,
    @JsonKey(name: 'mothers_languages_known') String? mothersLanguagesKnown,
    @JsonKey(name: 'mothers_company_name') String? mothersCompanyName,
    @JsonKey(name: 'mothers_business_address') String? mothersBusinessAddress,
    @JsonKey(name: 'mothers_educational_qualification') String? mothersEducationalQualification,
    @JsonKey(name: 'mothers_permanent_address') String? mothersPermanentAddress,
    @JsonKey(name: 'mothers_post_held') String? mothersPostHeld,
    @JsonKey(name: 'mothers_telephone_office', fromJson: _safeString) String? mothersTelephoneOffice,
  }) = _ApplicantData;

  factory ApplicantData.fromJson(Map<String, dynamic> json) =>
      _$ApplicantDataFromJson(json);
}

@freezed
abstract class FeeData with _$FeeData {
  const factory FeeData({
    required String name,
    required String status,
    required String title,
    @JsonKey(name: 'fee_mode') required String feeMode,
    @JsonKey(name: 'net_amount', fromJson: _netAmountFromJson) required double netAmount,
  }) = _FeeData;

  factory FeeData.fromJson(Map<String, dynamic> json) =>
      _$FeeDataFromJson(json);
}


double _netAmountFromJson(dynamic value) {
  if (value == null) return 0.0;
  if (value is num) return value.toDouble();
  if (value is String) return double.tryParse(value) ?? 0.0;
  return 0.0;
}

String? _safeString(dynamic value) {
  if (value == null) return null;
  if (value is String) return value;
  if (value is num) return value.toString();
  return value.toString();
}
