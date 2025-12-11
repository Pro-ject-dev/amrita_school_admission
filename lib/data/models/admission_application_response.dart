import 'package:freezed_annotation/freezed_annotation.dart';

part 'admission_application_response.freezed.dart';
part 'admission_application_response.g.dart';

@freezed
abstract class AdmissionApplicationResponse with _$AdmissionApplicationResponse {
  const factory AdmissionApplicationResponse({
    @JsonKey(name: 'message') required ApplicationResponseDetails details,
  }) = _AdmissionApplicationResponse;

  factory AdmissionApplicationResponse.fromJson(Map<String, dynamic> json) =>
      _$AdmissionApplicationResponseFromJson(json);
}

@freezed
abstract class ApplicationResponseDetails with _$ApplicationResponseDetails {
  const factory ApplicationResponseDetails({
    required String status,
    required String message,
    @JsonKey(name: 'applicant_id') required String applicantId,
    @JsonKey(name: 'student_name') required String studentName,
    @JsonKey(name: 'admission_sought_to') required String admissionSoughtTo,
    @JsonKey(name: 'date_of_birth') required String dateOfBirth,
    @JsonKey(name: 'primary_contact_name') required String primaryContactName,
    @JsonKey(name: 'primary_contact_mobile') required String primaryContactMobile,
    required String school,
  }) = _ApplicationResponseDetails;

  factory ApplicationResponseDetails.fromJson(Map<String, dynamic> json) =>
      _$ApplicationResponseDetailsFromJson(json);
}
