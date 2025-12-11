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
    @JsonKey(name: 'net_amount') required double netAmount,
  }) = _FeeData;

  factory FeeData.fromJson(Map<String, dynamic> json) =>
      _$FeeDataFromJson(json);
}
