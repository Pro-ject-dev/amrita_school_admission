import 'package:freezed_annotation/freezed_annotation.dart';

part 'parent_contact_model.freezed.dart';
part 'parent_contact_model.g.dart';

@freezed
abstract class ParentContactModel with _$ParentContactModel {
  const factory ParentContactModel({
    required String primaryName,
    required String primaryRelation,
    required String primaryMobile,
    required String secondaryName,
    required String secondaryRelation,
    required String secondaryMobile,
  }) = _ParentContactModel;

  factory ParentContactModel.fromJson(Map<String, dynamic> json) =>
      _$ParentContactModelFromJson(json);
}
