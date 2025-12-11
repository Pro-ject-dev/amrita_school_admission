// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'parent_contact_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ParentContactModel _$ParentContactModelFromJson(Map<String, dynamic> json) =>
    _ParentContactModel(
      primaryName: json['primaryName'] as String,
      primaryRelation: json['primaryRelation'] as String,
      primaryMobile: json['primaryMobile'] as String,
      secondaryName: json['secondaryName'] as String,
      secondaryRelation: json['secondaryRelation'] as String,
      secondaryMobile: json['secondaryMobile'] as String,
    );

Map<String, dynamic> _$ParentContactModelToJson(_ParentContactModel instance) =>
    <String, dynamic>{
      'primaryName': instance.primaryName,
      'primaryRelation': instance.primaryRelation,
      'primaryMobile': instance.primaryMobile,
      'secondaryName': instance.secondaryName,
      'secondaryRelation': instance.secondaryRelation,
      'secondaryMobile': instance.secondaryMobile,
    };
