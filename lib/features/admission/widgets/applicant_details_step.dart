import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:amrita_vidhyalayam_admission/constants/app_strings.dart';
import 'package:amrita_vidhyalayam_admission/constants/app_sizes.dart';
import 'package:amrita_vidhyalayam_admission/data/models/applicant_details_model.dart';
import 'package:intl/intl.dart';

class ApplicantDetailsStep extends ConsumerStatefulWidget {
  final Function(ApplicantDetailsModel) onSave;
  final ApplicantDetailsModel? initialData;

  const ApplicantDetailsStep({
    super.key,
    required this.onSave,
    this.initialData,
  });

  @override
  ConsumerState<ApplicantDetailsStep> createState() => ApplicantDetailsStepState();
}

class ApplicantDetailsStepState extends ConsumerState<ApplicantDetailsStep> {
  final _formKey = GlobalKey<FormState>();
  late TextEditingController _nameController;
  late TextEditingController _aadharController;
  late TextEditingController _locationController;
  late TextEditingController _admissionSoughtToController;
  late TextEditingController _academicYearController;
  DateTime? _selectedDate;
  String? _selectedGender;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController(text: widget.initialData?.name);
    _aadharController = TextEditingController(text: widget.initialData?.aadharNumber);
    _locationController = TextEditingController(text: widget.initialData?.location);
    _admissionSoughtToController = TextEditingController(text: widget.initialData?.admissionSoughtTo);
    _academicYearController = TextEditingController(text: widget.initialData?.academicYear);
    _selectedDate = widget.initialData?.dob;
    _selectedGender = widget.initialData?.gender;
  }

  @override
  void dispose() {
    _nameController.dispose();
    _aadharController.dispose();
    _locationController.dispose();
    _admissionSoughtToController.dispose();
    _academicYearController.dispose();
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
        location: _locationController.text,
        admissionSoughtTo: _admissionSoughtToController.text,
        academicYear: _academicYearController.text,
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
              TextFormField(
                controller: _locationController,
                decoration: const InputDecoration(labelText: AppStrings.location),
                validator: (value) => value?.isEmpty ?? true ? AppStrings.requiredField : null,
              ),
              SizedBox(height: AppSizes.h16),
              TextFormField(
                controller: _admissionSoughtToController,
                decoration: const InputDecoration(labelText: AppStrings.admissionSoughtTo),
                validator: (value) => value?.isEmpty ?? true ? AppStrings.requiredField : null,
              ),
              SizedBox(height: AppSizes.h16),
              TextFormField(
                controller: _academicYearController,
                decoration: const InputDecoration(labelText: AppStrings.academicYear),
                validator: (value) => value?.isEmpty ?? true ? AppStrings.requiredField : null,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
