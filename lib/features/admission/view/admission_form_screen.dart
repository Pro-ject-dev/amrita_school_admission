import 'package:amrita_vidyalyam_admission/constants/app_colors.dart';
import 'package:amrita_vidyalyam_admission/constants/app_text_styles.dart';
import 'package:amrita_vidyalyam_admission/features/admission/widgets/address_step.dart';
import 'package:amrita_vidyalyam_admission/features/admission/widgets/applicant_details_step.dart';
import 'package:amrita_vidyalyam_admission/features/admission/widgets/custom_stepper.dart';
import 'package:amrita_vidyalyam_admission/features/admission/widgets/parent_details_step.dart';
import 'package:amrita_vidyalyam_admission/features/admission/widgets/review_payment_step.dart';
import 'package:amrita_vidyalyam_admission/features/admission/viewmodel/admission_form_view_model.dart';
import 'package:amrita_vidyalyam_admission/data/models/admission_form_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:go_router/go_router.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:amrita_vidyalyam_admission/features/login/viewmodel/login_view_model.dart';

class AdmissionFormScreen extends ConsumerStatefulWidget {
  const AdmissionFormScreen({super.key});

  @override
  ConsumerState<AdmissionFormScreen> createState() => _AdmissionFormScreenState();
}

class _AdmissionFormScreenState extends ConsumerState<AdmissionFormScreen> {
  int _currentStep = 0;
  
  final GlobalKey<ApplicantDetailsStepState> step1Key = GlobalKey();
  final GlobalKey<ParentDetailsStepState> step2Key = GlobalKey();
  final GlobalKey<AddressStepState> step3Key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    final formData = ref.watch(admissionFormProvider);


    return PopScope(
      canPop: false,
      onPopInvoked: (didPop) async {
        if (didPop) return;
        
        if (_currentStep > 0) {
           setState(() => _currentStep -= 1);
           return;
        }

        final shouldExit = await showDialog<bool>(
          context: context,
          builder: (context) => AlertDialog(
            title: const Text('Exit Application'),
            content: const Text('Are you sure you want to exit?'),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context, false),
                child: const Text('Cancel'),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pop(context, true);
                },
                child: const Text('Exit', style: TextStyle(color: Colors.red)),
              ),
            ],
          ),
        );
        
        if (shouldExit == true) {
          SystemNavigator.pop();
        }
      },
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: AppColors.background,
        appBar: AppBar(
          backgroundColor: AppColors.primary,
          foregroundColor: AppColors.background,
          elevation: 0,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            onPressed: () {
              if (_currentStep > 0) {
                setState(() => _currentStep -= 1);
              } else {
                // Trigger the pop to invoke the callback
                Navigator.maybePop(context);
              }
            },
          ),
          title: Text(
            'Admission Form',
            style: AppTextStyles.titleLarge.copyWith(
              fontWeight: FontWeight.bold,
              color: AppColors.background
            ),
          ),
          
          centerTitle: true,
          actions: [
            PopupMenuButton<String>(
              icon: const Icon(LucideIcons.circleUser),
              onSelected: (value) {
                if (value == 'logout') {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: const Text('Logout'),
                      content: const Text('Are you sure you want to logout?'),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: const Text('Cancel'),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                            ref.read(loginProvider.notifier).logout();
                            context.go('/onBoard');
                          },
                          child: const Text('Logout', style: TextStyle(color: Colors.red)),
                        ),
                      ],
                    ),
                  );
                }
              },
              itemBuilder: (BuildContext context) {
                return [
                  const PopupMenuItem<String>(
                    value: 'logout',
                    child: Row(
                      children: [
                        Icon(LucideIcons.logOut, color: Colors.black),
                        SizedBox(width: 8),
                        Text('Logout'),
                      ],
                    ),
                  ),
                ];
              },
            ),
            SizedBox(width: 8.w),
          ],
        ),
        body: Column(
          children: [
            CustomStepper(currentStep: _currentStep, totalSteps: 4),
            Expanded(
              child: SingleChildScrollView(
                child: buildStepContent(formData),
              ),
            ),
            buildBottomBar(),
          ],
        ),
      ),
    );
  }

  Widget buildStepContent(AdmissionFormModel formData) {
    switch (_currentStep) {
      case 0:
        return ApplicantDetailsStep(
          key: step1Key,
          initialData: formData.applicantDetails,
          isLocked: formData.isSubmitted,
          onSave: (data) {
            ref.read(admissionFormProvider.notifier).updateApplicantDetails(data);
            setState(() => _currentStep += 1);
          },
        );
      case 1:
        return ParentDetailsStep(
          key: step2Key,
          initialData: formData.parentContact,
          onSave: (data) {
            ref.read(admissionFormProvider.notifier).updateParentContact(data);
            setState(() => _currentStep += 1);
          },
        );
      case 2:
        return AddressStep(
          key: step3Key,
          initialData: formData.address,
          onSave: (data) {
            ref.read(admissionFormProvider.notifier).updateAddress(data);
            setState(() => _currentStep += 1);
          },
        );
      case 3:
        return ReviewPaymentStep(
          formData: formData,
          onEditApplicant: () => setState(() => _currentStep = 0),
          onEditParent: () => setState(() => _currentStep = 1),
        );
      default:
        return const SizedBox.shrink();
    }
  }

  Widget buildBottomBar() {
    if (_currentStep == 3) return const SizedBox.shrink();

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
                    step1Key.currentState?.validateAndSave();
                  } else if (_currentStep == 1) {
                    step2Key.currentState?.validateAndSave();
                  } else if (_currentStep == 2) {
                    step3Key.currentState?.validateAndSave();
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
