import 'package:freezed_annotation/freezed_annotation.dart';

part 'applicant_details_model.freezed.dart';
part 'applicant_details_model.g.dart';

@freezed
abstract class ApplicantDetailsModel with _$ApplicantDetailsModel {
  const factory ApplicantDetailsModel({
    required String name,
    required String gender,
    required DateTime dob,
    required String aadharNumber,
    required String location,
    required String admissionSoughtTo,
    required String academicYear,
    String? religion,
    String? caste,
    String? category,
    String? motherTongue,
    String? bloodGroup,
    @Default(false) bool schoolTransportRequired,
  }) = _ApplicantDetailsModel;

  factory ApplicantDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$ApplicantDetailsModelFromJson(json);
}
