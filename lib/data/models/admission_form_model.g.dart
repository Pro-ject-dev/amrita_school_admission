// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admission_form_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AdmissionFormModelImpl _$$AdmissionFormModelImplFromJson(
  Map<String, dynamic> json,
) => _$AdmissionFormModelImpl(
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
);

Map<String, dynamic> _$$AdmissionFormModelImplToJson(
  _$AdmissionFormModelImpl instance,
) => <String, dynamic>{
  'applicantDetails': instance.applicantDetails,
  'parentContact': instance.parentContact,
  'address': instance.address,
  'isPaymentComplete': instance.isPaymentComplete,
  'paymentId': instance.paymentId,
};
