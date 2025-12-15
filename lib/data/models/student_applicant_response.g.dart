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
      schoolTransportRequired: json['school_transport_required'] as String?,
      guardiansName: json['guardians_name'] as String?,
      guardiansMobileNumber: _safeString(json['guardians_mobile_number']),
      guardiansOccupation: json['guardians_occupation'] as String?,
      guardiansAddress: json['guardians_address'] as String?,
      guardiansEmailAddress: json['guardians_email_address'] as String?,
      guardiansOfficeNumber: _safeString(json['guardians_office_number']),
      guardiansAadhaarNumber: _safeString(json['guardians_aadhaar_number']),
      fathersName: json['fathers_name'] as String?,
      fathersAadhaarNumber: _safeString(json['fathers_aadhaar_number']),
      fathersOccupation: json['fathers_occupation'] as String?,
      fathersAnnualIncome: _safeString(json['fathers_annual_income']),
      fathersMobileNumber: _safeString(json['fathers_mobile_number']),
      fathersTelephoneOffice: _safeString(json['fathers_telephone_office']),
      fathersPostHeld: json['fathers_post_held'] as String?,
      fathersPermanentAddress: json['fathers_permanent_address'] as String?,
      fathersLanguagesKnown: json['fathers_languages_known'] as String?,
      fathersEmailAddress: json['fathers_email_address'] as String?,
      fathersEducationalQualification:
          json['fathers_educational_qualification'] as String?,
      fathersCompanyName: json['fathers_company_name'] as String?,
      fathersBusinessAddress: json['fathers_business_address'] as String?,
      mothersName: json['mothers_name'] as String?,
      mothersAadhaarNumber: _safeString(json['mothers_aadhaar_number']),
      mothersOccupation: json['mothers_occupation'] as String?,
      mothersAnnualIncome: _safeString(json['mothers_annual_income']),
      mothersMobileNumber: _safeString(json['mothers_mobile_number']),
      mothersEmailAddress: json['mothers_email_address'] as String?,
      mothersLanguagesKnown: json['mothers_languages_known'] as String?,
      mothersCompanyName: json['mothers_company_name'] as String?,
      mothersBusinessAddress: json['mothers_business_address'] as String?,
      mothersEducationalQualification:
          json['mothers_educational_qualification'] as String?,
      mothersPermanentAddress: json['mothers_permanent_address'] as String?,
      mothersPostHeld: json['mothers_post_held'] as String?,
      mothersTelephoneOffice: _safeString(json['mothers_telephone_office']),
    );

Map<String, dynamic> _$ApplicantDataToJson(
  _ApplicantData instance,
) => <String, dynamic>{
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
  'school_transport_required': instance.schoolTransportRequired,
  'guardians_name': instance.guardiansName,
  'guardians_mobile_number': instance.guardiansMobileNumber,
  'guardians_occupation': instance.guardiansOccupation,
  'guardians_address': instance.guardiansAddress,
  'guardians_email_address': instance.guardiansEmailAddress,
  'guardians_office_number': instance.guardiansOfficeNumber,
  'guardians_aadhaar_number': instance.guardiansAadhaarNumber,
  'fathers_name': instance.fathersName,
  'fathers_aadhaar_number': instance.fathersAadhaarNumber,
  'fathers_occupation': instance.fathersOccupation,
  'fathers_annual_income': instance.fathersAnnualIncome,
  'fathers_mobile_number': instance.fathersMobileNumber,
  'fathers_telephone_office': instance.fathersTelephoneOffice,
  'fathers_post_held': instance.fathersPostHeld,
  'fathers_permanent_address': instance.fathersPermanentAddress,
  'fathers_languages_known': instance.fathersLanguagesKnown,
  'fathers_email_address': instance.fathersEmailAddress,
  'fathers_educational_qualification': instance.fathersEducationalQualification,
  'fathers_company_name': instance.fathersCompanyName,
  'fathers_business_address': instance.fathersBusinessAddress,
  'mothers_name': instance.mothersName,
  'mothers_aadhaar_number': instance.mothersAadhaarNumber,
  'mothers_occupation': instance.mothersOccupation,
  'mothers_annual_income': instance.mothersAnnualIncome,
  'mothers_mobile_number': instance.mothersMobileNumber,
  'mothers_email_address': instance.mothersEmailAddress,
  'mothers_languages_known': instance.mothersLanguagesKnown,
  'mothers_company_name': instance.mothersCompanyName,
  'mothers_business_address': instance.mothersBusinessAddress,
  'mothers_educational_qualification': instance.mothersEducationalQualification,
  'mothers_permanent_address': instance.mothersPermanentAddress,
  'mothers_post_held': instance.mothersPostHeld,
  'mothers_telephone_office': instance.mothersTelephoneOffice,
};

_FeeData _$FeeDataFromJson(Map<String, dynamic> json) => _FeeData(
  name: json['name'] as String,
  status: json['status'] as String,
  title: json['title'] as String,
  feeMode: json['fee_mode'] as String,
  netAmount: _netAmountFromJson(json['net_amount']),
);

Map<String, dynamic> _$FeeDataToJson(_FeeData instance) => <String, dynamic>{
  'name': instance.name,
  'status': instance.status,
  'title': instance.title,
  'fee_mode': instance.feeMode,
  'net_amount': instance.netAmount,
};
