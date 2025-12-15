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
    
    // Guardian Details
    String? guardiansName,
    String? guardiansMobileNumber,
    String? guardiansOccupation,
    String? guardiansAddress,
    String? guardiansEmailAddress,
    String? guardiansOfficeNumber,
    String? guardiansAadhaarNumber,

    // Father Details
    String? fathersName,
    String? fathersAadhaarNumber,
    String? fathersOccupation,
    String? fathersAnnualIncome,
    String? fathersMobileNumber,
    String? fathersTelephoneOffice,
    String? fathersPostHeld,
    String? fathersPermanentAddress,
    String? fathersLanguagesKnown,
    String? fathersEmailAddress,
    String? fathersEducationalQualification,
    String? fathersCompanyName,
    String? fathersBusinessAddress,

    // Mother Details
    String? mothersName,
    String? mothersAadhaarNumber,
    String? mothersOccupation,
    String? mothersAnnualIncome,
    String? mothersMobileNumber,
    String? mothersEmailAddress,
    String? mothersLanguagesKnown,
    String? mothersCompanyName,
    String? mothersBusinessAddress,
    String? mothersEducationalQualification,
    String? mothersPermanentAddress,
    String? mothersPostHeld,
    String? mothersTelephoneOffice,
  }) = _ParentContactModel;

  factory ParentContactModel.fromJson(Map<String, dynamic> json) =>
      _$ParentContactModelFromJson(json);
}
