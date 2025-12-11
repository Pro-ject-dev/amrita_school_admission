// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admission_form_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AdmissionFormModel _$AdmissionFormModelFromJson(Map<String, dynamic> json) =>
    _AdmissionFormModel(
      applicantDetails: json['applicantDetails'] == null
          ? null
          : ApplicantDetailsModel.fromJson(
              json['applicantDetails'] as Map<String, dynamic>,
            ),
      parentContact: json['parentContact'] == null
          ? null
          : ParentContactModel.fromJson(
              json['parentContact'] as Map<String, dynamic>,
            ),
      address: json['address'] == null
          ? null
          : AddressModel.fromJson(json['address'] as Map<String, dynamic>),
      isPaymentComplete: json['isPaymentComplete'] as bool? ?? false,
      paymentId: json['paymentId'] as String?,
      isSubmitted: json['isSubmitted'] as bool? ?? false,
      hasUnsavedChanges: json['hasUnsavedChanges'] as bool? ?? false,
      feeData:
          (json['feeData'] as List<dynamic>?)
              ?.map((e) => FeeData.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$AdmissionFormModelToJson(_AdmissionFormModel instance) =>
    <String, dynamic>{
      'applicantDetails': instance.applicantDetails,
      'parentContact': instance.parentContact,
      'address': instance.address,
      'isPaymentComplete': instance.isPaymentComplete,
      'paymentId': instance.paymentId,
      'isSubmitted': instance.isSubmitted,
      'hasUnsavedChanges': instance.hasUnsavedChanges,
      'feeData': instance.feeData,
    };
