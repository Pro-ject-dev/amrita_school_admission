import 'package:amrita_vidyalyam_admission/constants/app_sizes.dart';
import 'package:amrita_vidyalyam_admission/constants/app_strings.dart';
import 'package:amrita_vidyalyam_admission/core/shared/extensions/common_extensions.dart';
import 'package:amrita_vidyalyam_admission/data/models/applicant_details_model.dart';
import 'package:amrita_vidyalyam_admission/features/admission/viewmodel/admission_form_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

class ApplicantDetailsStep extends ConsumerStatefulWidget {
  final Function(ApplicantDetailsModel) onSave;
  final ApplicantDetailsModel? initialData;
  final bool isLocked;

  const ApplicantDetailsStep({
    super.key,
    required this.onSave,
    this.initialData,
    this.isLocked = false,
  });

  @override
  ConsumerState<ApplicantDetailsStep> createState() => ApplicantDetailsStepState();
}



class ApplicantDetailsStepState extends ConsumerState<ApplicantDetailsStep> {
  final _formKey = GlobalKey<FormState>();
   TextEditingController _nameController = TextEditingController();
 TextEditingController _aadharController = TextEditingController();
 TextEditingController _admissionSoughtToController = TextEditingController();
  TextEditingController _academicYearController = TextEditingController();
  DateTime? _selectedDate;
  String? _selectedGender;
  String? _selectedAcademicYear;
  String? _selectedClass;
  String? _selectedSchool;
  String? _selectedReligion;
  final TextEditingController _casteController = TextEditingController();
  String? _selectedCategory;
  final TextEditingController _motherTongueController = TextEditingController();
  String? _selectedBloodGroup;


  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController(text: widget.initialData?.name);
    _aadharController = TextEditingController(text: widget.initialData?.aadharNumber);
    _selectedSchool = widget.initialData?.location;
    _selectedClass = widget.initialData?.admissionSoughtTo;
    _selectedAcademicYear =  widget.initialData?.academicYear;
    _selectedDate = widget.initialData?.dob;
    _selectedGender = widget.initialData?.gender;
    _selectedReligion = widget.initialData?.religion;
    _casteController.text = widget.initialData?.caste ?? '';
    _selectedCategory = widget.initialData?.category;
    _motherTongueController.text = widget.initialData?.motherTongue ?? '';
    _selectedBloodGroup = widget.initialData?.bloodGroup;
    
    if (_selectedSchool != null) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        ref.read(selectedSchoolProvider.notifier).state = _selectedSchool;
      });
    }
  }

  @override
  void dispose() {
    _nameController.dispose();
    _aadharController.dispose();
    _admissionSoughtToController.dispose();
    _academicYearController.dispose();
    _casteController.dispose();
    _motherTongueController.dispose();
    super.dispose();
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate ?? DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime.now(),
    );
    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
      });
    }
  }

  void validateAndSave() {
    if (_formKey.currentState!.validate() && _selectedDate != null && _selectedGender != null) {
      final model = ApplicantDetailsModel(
        name: _nameController.text,
        gender: _selectedGender!,
        dob: _selectedDate!,
        aadharNumber: _aadharController.text,
        location: _selectedSchool.toString(),
        admissionSoughtTo: _selectedClass.toString(),
        academicYear: _selectedAcademicYear.toString(),
        religion: _selectedReligion,
        caste: _casteController.text,
        category: _selectedCategory,
        motherTongue: _motherTongueController.text,
        bloodGroup: _selectedBloodGroup,
      );
      widget.onSave(model);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please fill all required fields')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 2,
      margin: EdgeInsets.all(AppSizes.p16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(AppSizes.r12)),
      child: Padding(
        padding: EdgeInsets.all(AppSizes.p16),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                AppStrings.step1Title, 
                style: Theme.of(context).textTheme.titleLarge,
              ),
              SizedBox(height: AppSizes.h16),
              TextFormField(
                controller: _nameController,
                decoration: const InputDecoration(labelText: AppStrings.name),
                validator: (value) => value?.isEmpty ?? true ? AppStrings.requiredField : null,
              ),
              SizedBox(height: AppSizes.h16),
              DropdownButtonFormField<String>(
                value: _selectedGender,
                decoration: const InputDecoration(labelText: AppStrings.gender),
                items: ['Male', 'Female', 'Other']
                    .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                    .toList(),
                onChanged: (val) => setState(() => _selectedGender = val),
                validator: (value) => value == null ? AppStrings.requiredField : null,
              ),
              SizedBox(height: AppSizes.h16),
              InkWell(
                onTap: () => _selectDate(context),
                child: InputDecorator(
                  decoration: const InputDecoration(labelText: AppStrings.dob),
                  child: Text(
                    _selectedDate != null
                        ? DateFormat('dd/MM/yyyy').format(_selectedDate!)
                        : 'Select Date',
                  ),
                ),
              ),
              SizedBox(height: AppSizes.h16),
              TextFormField(
                controller: _aadharController,
                decoration: const InputDecoration(labelText: AppStrings.aadhar),
                keyboardType: TextInputType.number,
                validator: (value) => value?.isEmpty ?? true ? AppStrings.requiredField : null,
              ),
     
              SizedBox(height: AppSizes.h16),
              Consumer(
                builder: (context, ref, child) {
                  final schoolsAsyncValue = ref.watch(schoolsProvider);
                  
                  return schoolsAsyncValue.when(
                    data: (schools) {
                      return DropdownButtonFormField<String>(
                        
                        value: _selectedSchool,
                        decoration: InputDecoration(
                          labelText: AppStrings.location,
                          enabled: !widget.isLocked,
                          fillColor: widget.isLocked ? Colors.grey[200] : null,
                          filled: widget.isLocked,
                        ),
                        items: schools.map((school) {
                          return DropdownMenuItem<String>(
                          
                            value: school.schoolName,
                            child: SizedBox(
                              width: 200, 
                              child: Text(
                                school.schoolName ??"", 
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          );
                        }).toList(),
                        onChanged: widget.isLocked ? null : (val){  
                          setState(() {
                            _selectedSchool = val;
                            _selectedClass = null; 
                          });
                          ref.read(selectedSchoolProvider.notifier).state = val;
                        },
                        validator: (value) => value == null ? AppStrings.requiredField : null,
                        isExpanded: true, 
                      );
                    },
                    loading: () => DropdownButtonFormField<String>(
                      items: [],
                      onChanged: null,
                      decoration: const InputDecoration(
                        labelText: AppStrings.location, 
                        // hintText: 'Loading...',
                      ),
                    ),
                    error: (err, stack) => Text('Error loading schools: $err'),
                  );
                },
              ),

              SizedBox(height: AppSizes.h16),
              Consumer(
                builder: (context, ref, child) {
                  final programsAsyncValue = ref.watch(programsProvider);
                  
                  return programsAsyncValue.when(
                    data: (programs) {
                      return DropdownButtonFormField<String>(
                        value: _selectedClass,
                        decoration: InputDecoration(
                          labelText: AppStrings.admissionSoughtTo,
                          enabled: !widget.isLocked,
                          fillColor: widget.isLocked ? Colors.grey[200] : null,
                          filled: widget.isLocked,
                        ),
                        items: programs.map((program) {
                          return DropdownMenuItem<String>(
                            value: program.programName,
                            child: Text(program.programName ?? ""),
                          );
                        }).toList(),
                        onChanged: widget.isLocked ? null : (val) => setState(() => _selectedClass = val),
                        validator: (value) => value == null ? AppStrings.requiredField : null,
                      );
                    },
                    loading: () => DropdownButtonFormField<String>(
                      items: [],
                      onChanged: null,
                      decoration: const InputDecoration(
                        labelText: AppStrings.admissionSoughtTo,
                        hintText: 'Loading...',
                      ),
                    ),
                    error: (err, stack) => Text('Error loading classes: $err'),
                  );
                },
              ),
              
              SizedBox(height: AppSizes.h16),
                 DropdownButtonFormField<String>(
                value: _selectedAcademicYear,
                decoration: const InputDecoration(labelText: AppStrings.academicYear),
                items: ['2024-2025', '2025-2026']
                    .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                    .toList(),
                onChanged: (val) => setState(() => _selectedAcademicYear = val),
                validator: (value) => value == null ? AppStrings.requiredField : null,
              ),
              if (widget.isLocked) ...[
                SizedBox(height: AppSizes.h16),
                DropdownButtonFormField<String>(
                  value: _selectedReligion,
                  decoration: const InputDecoration(labelText: 'Religion (Optional)'),
                  items: ["",'Hindu', 'Christian', 'Muslim', 'Jain', 'Sikh', 'Buddhist', 'Other']
                      .map((e) => DropdownMenuItem(value: e, child: Text(e.toString())))
                      .toList(),
                  onChanged: (val) => setState(() => _selectedReligion = val),
                ),
                SizedBox(height: AppSizes.h16),
                TextFormField(
                  controller: _casteController,
                  decoration: const InputDecoration(labelText: 'Caste (Optional)'),
                ),
                SizedBox(height: AppSizes.h16),
                DropdownButtonFormField<String>(
                  value: _selectedCategory,
                  decoration: const InputDecoration(labelText: 'Category (Optional)'),
                  items: ["",'General', 'OBC', 'OEC', 'SC', 'ST']
                      .map((e) => DropdownMenuItem(value: e, child: Text(e.toString())))
                      .toList(),
                  onChanged: (val) => setState(() => _selectedCategory = val),
                ),
                SizedBox(height: AppSizes.h16),
                TextFormField(
                  controller: _motherTongueController,
                  decoration: const InputDecoration(labelText: 'Mother Tongue (Optional)'),
                ),
                SizedBox(height: AppSizes.h16),
                DropdownButtonFormField<String>(
                  value: _selectedBloodGroup,
                  decoration: const InputDecoration(labelText: 'Blood Group (Optional)'),
                  items: ["",'A+', 'A-', 'B+', 'B-', 'O+', 'O-', 'AB+', 'AB-']
                      .map((e) => DropdownMenuItem(value: e, child: Text(e.toString())))
                      .toList(),
                  onChanged: (val) => setState(() => _selectedBloodGroup = val),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
