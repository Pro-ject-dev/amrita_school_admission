// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student_applicant_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StudentApplicantResponse _$StudentApplicantResponseFromJson(
  Map<String, dynamic> json,
) => _StudentApplicantResponse(
  message: StudentApplicantMessage.fromJson(
    json['message'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$StudentApplicantResponseToJson(
  _StudentApplicantResponse instance,
) => <String, dynamic>{'message': instance.message};

_StudentApplicantMessage _$StudentApplicantMessageFromJson(
  Map<String, dynamic> json,
) => _StudentApplicantMessage(
  status: json['status'] as bool,
  user: json['user'] as String,
  applicantData: ApplicantData.fromJson(
    json['applicant_data'] as Map<String, dynamic>,
  ),
  feeData:
      (json['fee_data'] as List<dynamic>?)
          ?.map((e) => FeeData.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$StudentApplicantMessageToJson(
  _StudentApplicantMessage instance,
) => <String, dynamic>{
  'status': instance.status,
  'user': instance.user,
  'applicant_data': instance.applicantData,
  'fee_data': instance.feeData,
};

_ApplicantData _$ApplicantDataFromJson(Map<String, dynamic> json) =>
    _ApplicantData(
      name: json['name1'] as String,
      school: json['school'] as String,
      admissionSoughtTo: json['admission_sought_to'] as String,
      applicantId: json['applicant_id'] as String,
      academicYear: json['academic_year'] as String,
      dateOfBirth: json['date_of_birth'] as String,
      gender: json['gender'] as String,
      aadharNumber: json['aadhar_number'] as String,
      primaryContactName: json['primary_contact_name'] as String,
      primaryContactRelation: json['primary_contact_relation'] as String,
      primaryContactMobile: json['primary_contact_mobile'] as String,
      secondaryContactName: json['secondary_contact_name'] as String,
      secondaryContactRelation: json['secondary_contact_relation'] as String,
      mobileNumberSecondary: json['mobile_number_secondary'] as String,
      communicationAddress: json['communication_address'] as String,
      religion: json['religion'] as String?,
      caste: json['caste'] as String?,
      category: json['category'] as String?,
      motherTongue: json['mother_tongue'] as String?,
      bloodGroup: json['blood_group'] as String?,
    );

Map<String, dynamic> _$ApplicantDataToJson(_ApplicantData instance) =>
    <String, dynamic>{
      'name1': instance.name,
      'school': instance.school,
      'admission_sought_to': instance.admissionSoughtTo,
      'applicant_id': instance.applicantId,
      'academic_year': instance.academicYear,
      'date_of_birth': instance.dateOfBirth,
      'gender': instance.gender,
      'aadhar_number': instance.aadharNumber,
      'primary_contact_name': instance.primaryContactName,
      'primary_contact_relation': instance.primaryContactRelation,
      'primary_contact_mobile': instance.primaryContactMobile,
      'secondary_contact_name': instance.secondaryContactName,
      'secondary_contact_relation': instance.secondaryContactRelation,
      'mobile_number_secondary': instance.mobileNumberSecondary,
      'communication_address': instance.communicationAddress,
      'religion': instance.religion,
      'caste': instance.caste,
      'category': instance.category,
      'mother_tongue': instance.motherTongue,
      'blood_group': instance.bloodGroup,
    };

_FeeData _$FeeDataFromJson(Map<String, dynamic> json) => _FeeData(
  name: json['name'] as String,
  status: json['status'] as String,
  title: json['title'] as String,
  feeMode: json['fee_mode'] as String,
  netAmount: (json['net_amount'] as num).toDouble(),
);

Map<String, dynamic> _$FeeDataToJson(_FeeData instance) => <String, dynamic>{
  'name': instance.name,
  'status': instance.status,
  'title': instance.title,
  'fee_mode': instance.feeMode,
  'net_amount': instance.netAmount,
};
