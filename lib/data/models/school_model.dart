import 'package:freezed_annotation/freezed_annotation.dart';

part 'school_model.freezed.dart';
part 'school_model.g.dart';

@freezed
abstract class SchoolModel with _$SchoolModel {
  SchoolModel._();
  factory SchoolModel({
    @JsonKey(name: 'school_name') required String? schoolName,
    @JsonKey(name: 'state_id') required String? stateId,
    required String? district,
  }) = _SchoolModel;

  factory SchoolModel.fromJson(Map<String, dynamic> json) =>
      _$SchoolModelFromJson(json);
}
