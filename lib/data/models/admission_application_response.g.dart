// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admission_application_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AdmissionApplicationResponse _$AdmissionApplicationResponseFromJson(
  Map<String, dynamic> json,
) => _AdmissionApplicationResponse(
  details: ApplicationResponseDetails.fromJson(
    json['message'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$AdmissionApplicationResponseToJson(
  _AdmissionApplicationResponse instance,
) => <String, dynamic>{'message': instance.details};

_ApplicationResponseDetails _$ApplicationResponseDetailsFromJson(
  Map<String, dynamic> json,
) => _ApplicationResponseDetails(
  status: json['status'] as String,
  message: json['message'] as String,
  applicantId: json['applicant_id'] as String,
  studentName: json['student_name'] as String,
  admissionSoughtTo: json['admission_sought_to'] as String,
  dateOfBirth: json['date_of_birth'] as String,
  primaryContactName: json['primary_contact_name'] as String,
  primaryContactMobile: json['primary_contact_mobile'] as String,
  school: json['school'] as String,
);

Map<String, dynamic> _$ApplicationResponseDetailsToJson(
  _ApplicationResponseDetails instance,
) => <String, dynamic>{
  'status': instance.status,
  'message': instance.message,
  'applicant_id': instance.applicantId,
  'student_name': instance.studentName,
  'admission_sought_to': instance.admissionSoughtTo,
  'date_of_birth': instance.dateOfBirth,
  'primary_contact_name': instance.primaryContactName,
  'primary_contact_mobile': instance.primaryContactMobile,
  'school': instance.school,
};
