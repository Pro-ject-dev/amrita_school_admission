import 'package:freezed_annotation/freezed_annotation.dart';

part 'applicant_details_model.freezed.dart';
part 'applicant_details_model.g.dart';

@freezed
class ApplicantDetailsModel with _$ApplicantDetailsModel {
  const factory ApplicantDetailsModel({
    required String name,
    required String gender,
    required DateTime dob,
    required String aadharNumber,
    required String location,
    required String admissionSoughtTo,
    required String academicYear,
  }) = _ApplicantDetailsModel;

  factory ApplicantDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$ApplicantDetailsModelFromJson(json);
}
