import 'package:freezed_annotation/freezed_annotation.dart';

part 'admission_class_model.freezed.dart';
part 'admission_class_model.g.dart';

@freezed
abstract class AdmissionClassModel with _$AdmissionClassModel {
 AdmissionClassModel._();
  factory AdmissionClassModel({
    @JsonKey(name: 'program_name') required String? programName,
  }) = _AdmissionClassModel;

  factory AdmissionClassModel.fromJson(Map<String, dynamic> json) =>
      _$AdmissionClassModelFromJson(json);
}
