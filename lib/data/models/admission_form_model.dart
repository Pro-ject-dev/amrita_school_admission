import 'package:freezed_annotation/freezed_annotation.dart';
import 'applicant_details_model.dart';
import 'parent_contact_model.dart';
import 'address_model.dart';
import 'student_applicant_response.dart';

part 'admission_form_model.freezed.dart';
part 'admission_form_model.g.dart';

@freezed
abstract class AdmissionFormModel with _$AdmissionFormModel {
  const factory AdmissionFormModel({
    ApplicantDetailsModel? applicantDetails,
    ParentContactModel? parentContact,
    AddressModel? address,
    @Default(false) bool isPaymentComplete,
    String? paymentId,
    @Default(false) bool isSubmitted,
    @Default(false) bool hasUnsavedChanges,
    @Default([]) List<FeeData> feeData,
  }) = _AdmissionFormModel;

  factory AdmissionFormModel.fromJson(Map<String, dynamic> json) =>
      _$AdmissionFormModelFromJson(json);
}
