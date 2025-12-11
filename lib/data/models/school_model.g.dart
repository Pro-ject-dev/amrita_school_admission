// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'school_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SchoolModel _$SchoolModelFromJson(Map<String, dynamic> json) => _SchoolModel(
  schoolName: json['school_name'] as String?,
  stateId: json['state_id'] as String?,
  district: json['district'] as String?,
);

Map<String, dynamic> _$SchoolModelToJson(_SchoolModel instance) =>
    <String, dynamic>{
      'school_name': instance.schoolName,
      'state_id': instance.stateId,
      'district': instance.district,
    };
