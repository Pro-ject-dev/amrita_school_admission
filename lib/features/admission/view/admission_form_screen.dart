import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:amrita_vidhyalayam_admission/constants/app_colors.dart';
import 'package:amrita_vidhyalayam_admission/constants/app_text_styles.dart';
import 'package:amrita_vidhyalayam_admission/features/admission/viewmodel/admission_form_view_model.dart';
import 'package:amrita_vidhyalayam_admission/features/admission/widgets/applicant_details_step.dart';
import 'package:amrita_vidhyalayam_admission/features/admission/widgets/parent_details_step.dart';
import 'package:amrita_vidhyalayam_admission/features/admission/widgets/address_step.dart';
import 'package:amrita_vidhyalayam_admission/features/admission/widgets/review_payment_step.dart';
import 'package:amrita_vidhyalayam_admission/features/admission/widgets/custom_stepper.dart';

class AdmissionFormScreen extends ConsumerStatefulWidget {
  const AdmissionFormScreen({super.key});

  @override
  ConsumerState<AdmissionFormScreen> createState() => _AdmissionFormScreenState();
}

class _AdmissionFormScreenState extends ConsumerState<AdmissionFormScreen> {
  int _currentStep = 0;
  
  final GlobalKey<ApplicantDetailsStepState> _step1Key = GlobalKey();
  final GlobalKey<ParentDetailsStepState> _step2Key = GlobalKey();
  final GlobalKey<AddressStepState> _step3Key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    final formData = ref.watch(admissionFormViewModelProvider);

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () {
            if (_currentStep > 0) {
              setState(() => _currentStep -= 1);
            }
          },
        ),
        title: Text(
          'Admission Form',
          style: AppTextStyles.titleLarge.copyWith(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          CustomStepper(currentStep: _currentStep, totalSteps: 4),
          Expanded(
            child: SingleChildScrollView(
              child: _buildStepContent(formData),
            ),
          ),
          _buildBottomBar(),
        ],
      ),
    );
  }

  Widget _buildStepContent(formData) {
    switch (_currentStep) {
      case 0:
        return ApplicantDetailsStep(
          key: _step1Key,
          initialData: formData.applicantDetails,
          onSave: (data) {
            ref.read(admissionFormViewModelProvider.notifier).updateApplicantDetails(data);
            setState(() => _currentStep += 1);
          },
        );
      case 1:
        return ParentDetailsStep(
          key: _step2Key,
          initialData: formData.parentContact,
          onSave: (data) {
            ref.read(admissionFormViewModelProvider.notifier).updateParentContact(data);
            setState(() => _currentStep += 1);
          },
        );
      case 2:
        return AddressStep(
          key: _step3Key,
          initialData: formData.address,
          onSave: (data) {
            ref.read(admissionFormViewModelProvider.notifier).updateAddress(data);
            setState(() => _currentStep += 1);
          },
        );
      case 3:
        return ReviewPaymentStep(formData: formData);
      default:
        return const SizedBox.shrink();
    }
  }

  Widget _buildBottomBar() {
    if (_currentStep == 3) return const SizedBox.shrink(); // Review step has its own buttons

    return Container(
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, -5),
          ),
        ],
      ),
      child: Row(
        children: [
          Expanded(
            child: SizedBox(
              height: 50.h,
              child: ElevatedButton(
                onPressed: _currentStep > 0 ? () => setState(() => _currentStep -= 1) : null,
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFF3F4F6),
                  foregroundColor: Colors.black,
                  elevation: 0,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.r)),
                ),
                child: Text('Back', style: AppTextStyles.button.copyWith(color: Colors.black)),
              ),
            ),
          ),
          SizedBox(width: 16.w),
          Expanded(
            child: SizedBox(
              height: 50.h,
              child: ElevatedButton(
                onPressed: () {
                  if (_currentStep == 0) {
                    _step1Key.currentState?.validateAndSave();
                  } else if (_currentStep == 1) {
                    _step2Key.currentState?.validateAndSave();
                  } else if (_currentStep == 2) {
                    _step3Key.currentState?.validateAndSave();
                  }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primary,
                  elevation: 0,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.r)),
                ),
                child: const Text('Next'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
