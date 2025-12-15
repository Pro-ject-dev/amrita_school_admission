import 'package:amrita_vidyalyam_admission/constants/app_sizes.dart';
import 'package:amrita_vidyalyam_admission/constants/app_strings.dart';
import 'package:amrita_vidyalyam_admission/data/models/parent_contact_model.dart';
import 'package:flutter/material.dart';

class ParentDetailsStep extends StatefulWidget {
  final Function(ParentContactModel) onSave;
  final ParentContactModel? initialData;

  const ParentDetailsStep({super.key, required this.onSave, this.initialData});

  @override
  State<ParentDetailsStep> createState() => ParentDetailsStepState();
}

class ParentDetailsStepState extends State<ParentDetailsStep> {
  final _formKey = GlobalKey<FormState>();

  // Controllers
  TextEditingController _pNameCtrl = TextEditingController();
  TextEditingController _pMobCtrl = TextEditingController();
  TextEditingController _sNameCtrl = TextEditingController();
  TextEditingController _sMobCtrl = TextEditingController();

  // Relations
  String? _selectedPrimaryRelation;
  String? _selectedSecondaryRelation;

  // Guardian
  final TextEditingController _gNameCtrl = TextEditingController();
  final TextEditingController _gMobCtrl = TextEditingController();
  final TextEditingController _gOccCtrl = TextEditingController();
  final TextEditingController _gAddrCtrl = TextEditingController();
  final TextEditingController _gEmailCtrl = TextEditingController();
  final TextEditingController _gOfficeCtrl = TextEditingController();
  final TextEditingController _gAadhaarCtrl = TextEditingController();

  // Father
  final TextEditingController _fNameCtrl = TextEditingController();
  final TextEditingController _fAadhaarCtrl = TextEditingController();
  final TextEditingController _fOccCtrl = TextEditingController();
  final TextEditingController _fIncomeCtrl = TextEditingController();
  final TextEditingController _fMobCtrl = TextEditingController();
  final TextEditingController _fTelCtrl = TextEditingController();
  final TextEditingController _fPostCtrl = TextEditingController();
  final TextEditingController _fAddrCtrl = TextEditingController();
  final TextEditingController _fLangCtrl = TextEditingController();
  final TextEditingController _fEmailCtrl = TextEditingController();
  final TextEditingController _fEduCtrl = TextEditingController();
  final TextEditingController _fCompCtrl = TextEditingController();
  final TextEditingController _fBusAddrCtrl = TextEditingController();

  // Mother
  final TextEditingController _mNameCtrl = TextEditingController();
  final TextEditingController _mAadhaarCtrl = TextEditingController();
  final TextEditingController _mOccCtrl = TextEditingController();
  final TextEditingController _mIncomeCtrl = TextEditingController();
  final TextEditingController _mMobCtrl = TextEditingController();
  final TextEditingController _mEmailCtrl = TextEditingController();
  final TextEditingController _mLangCtrl = TextEditingController();
  final TextEditingController _mCompCtrl = TextEditingController();
  final TextEditingController _mBusAddrCtrl = TextEditingController();
  final TextEditingController _mEduCtrl = TextEditingController();
  final TextEditingController _mAddrCtrl = TextEditingController();
  final TextEditingController _mPostCtrl = TextEditingController();
  final TextEditingController _mTelCtrl = TextEditingController();

  @override
  void initState() {
    super.initState();
    _initializeFields();
  }

  @override
  void didUpdateWidget(ParentDetailsStep oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.initialData != oldWidget.initialData) {
      print(
        "UI DEBUG: ParentDetailsStep updated. Father: ${widget.initialData?.fathersName}",
      );
      _initializeFields();
    }
  }

  void _initializeFields() {
    _pNameCtrl.text = widget.initialData?.primaryName ?? _pNameCtrl.text;
    _pMobCtrl.text = widget.initialData?.primaryMobile ?? _pMobCtrl.text;

    _sNameCtrl.text = widget.initialData?.secondaryName ?? _sNameCtrl.text;
    _sMobCtrl.text = widget.initialData?.secondaryMobile ?? _sMobCtrl.text;

    _selectedPrimaryRelation =
        widget.initialData?.primaryRelation ?? _selectedPrimaryRelation;
    _selectedSecondaryRelation =
        widget.initialData?.secondaryRelation ?? _selectedSecondaryRelation;

    // Guardian Init
    _gNameCtrl.text = widget.initialData?.guardiansName ?? _gNameCtrl.text;
    _gMobCtrl.text =
        widget.initialData?.guardiansMobileNumber ?? _gMobCtrl.text;
    _gOccCtrl.text = widget.initialData?.guardiansOccupation ?? _gOccCtrl.text;
    _gAddrCtrl.text = widget.initialData?.guardiansAddress ?? _gAddrCtrl.text;
    _gEmailCtrl.text =
        widget.initialData?.guardiansEmailAddress ?? _gEmailCtrl.text;
    _gOfficeCtrl.text =
        widget.initialData?.guardiansOfficeNumber ?? _gOfficeCtrl.text;
    _gAadhaarCtrl.text =
        widget.initialData?.guardiansAadhaarNumber ?? _gAadhaarCtrl.text;

    // Father Init
    _fNameCtrl.text = widget.initialData?.fathersName ?? _fNameCtrl.text;
    _fAadhaarCtrl.text =
        widget.initialData?.fathersAadhaarNumber ?? _fAadhaarCtrl.text;
    _fOccCtrl.text = widget.initialData?.fathersOccupation ?? _fOccCtrl.text;
    _fIncomeCtrl.text =
        widget.initialData?.fathersAnnualIncome ?? _fIncomeCtrl.text;
    _fMobCtrl.text = widget.initialData?.fathersMobileNumber ?? _fMobCtrl.text;
    _fTelCtrl.text =
        widget.initialData?.fathersTelephoneOffice ?? _fTelCtrl.text;
    _fPostCtrl.text = widget.initialData?.fathersPostHeld ?? _fPostCtrl.text;
    _fAddrCtrl.text =
        widget.initialData?.fathersPermanentAddress ?? _fAddrCtrl.text;
    _fLangCtrl.text =
        widget.initialData?.fathersLanguagesKnown ?? _fLangCtrl.text;
    _fEmailCtrl.text =
        widget.initialData?.fathersEmailAddress ?? _fEmailCtrl.text;
    _fEduCtrl.text =
        widget.initialData?.fathersEducationalQualification ?? _fEduCtrl.text;
    _fCompCtrl.text = widget.initialData?.fathersCompanyName ?? _fCompCtrl.text;
    _fBusAddrCtrl.text =
        widget.initialData?.fathersBusinessAddress ?? _fBusAddrCtrl.text;

    // Mother Init
    _mNameCtrl.text = widget.initialData?.mothersName ?? _mNameCtrl.text;
    _mAadhaarCtrl.text =
        widget.initialData?.mothersAadhaarNumber ?? _mAadhaarCtrl.text;
    _mOccCtrl.text = widget.initialData?.mothersOccupation ?? _mOccCtrl.text;
    _mIncomeCtrl.text =
        widget.initialData?.mothersAnnualIncome ?? _mIncomeCtrl.text;
    _mMobCtrl.text = widget.initialData?.mothersMobileNumber ?? _mMobCtrl.text;
    _mEmailCtrl.text =
        widget.initialData?.mothersEmailAddress ?? _mEmailCtrl.text;
    _mLangCtrl.text =
        widget.initialData?.mothersLanguagesKnown ?? _mLangCtrl.text;
    _mCompCtrl.text = widget.initialData?.mothersCompanyName ?? _mCompCtrl.text;
    _mBusAddrCtrl.text =
        widget.initialData?.mothersBusinessAddress ?? _mBusAddrCtrl.text;
    _mEduCtrl.text =
        widget.initialData?.mothersEducationalQualification ?? _mEduCtrl.text;
    _mAddrCtrl.text =
        widget.initialData?.mothersPermanentAddress ?? _mAddrCtrl.text;
    _mPostCtrl.text = widget.initialData?.mothersPostHeld ?? _mPostCtrl.text;
    _mTelCtrl.text =
        widget.initialData?.mothersTelephoneOffice ?? _mTelCtrl.text;
  }

  @override
  void dispose() {
    _pNameCtrl.dispose();
    _pMobCtrl.dispose();
    _sNameCtrl.dispose();
    _sMobCtrl.dispose();
    _gNameCtrl.dispose();
    _gMobCtrl.dispose();
    _gOccCtrl.dispose();
    _gAddrCtrl.dispose();
    _gEmailCtrl.dispose();
    _gOfficeCtrl.dispose();
    _gAadhaarCtrl.dispose();
    _fNameCtrl.dispose();
    _fAadhaarCtrl.dispose();
    _fOccCtrl.dispose();
    _fIncomeCtrl.dispose();
    _fMobCtrl.dispose();
    _fTelCtrl.dispose();
    _fPostCtrl.dispose();
    _fAddrCtrl.dispose();
    _fLangCtrl.dispose();
    _fEmailCtrl.dispose();
    _fEduCtrl.dispose();
    _fCompCtrl.dispose();
    _fBusAddrCtrl.dispose();
    _mNameCtrl.dispose();
    _mAadhaarCtrl.dispose();
    _mOccCtrl.dispose();
    _mIncomeCtrl.dispose();
    _mMobCtrl.dispose();
    _mEmailCtrl.dispose();
    _mLangCtrl.dispose();
    _mCompCtrl.dispose();
    _mBusAddrCtrl.dispose();
    _mEduCtrl.dispose();
    _mAddrCtrl.dispose();
    _mPostCtrl.dispose();
    _mTelCtrl.dispose();
    super.dispose();
  }

  void validateAndSave() {
    if (_formKey.currentState!.validate()) {
      final model = ParentContactModel(
        primaryName: _pNameCtrl.text,
        primaryRelation: _selectedPrimaryRelation.toString(),
        primaryMobile: _pMobCtrl.text,
        secondaryName: _sNameCtrl.text,
        secondaryRelation: _selectedSecondaryRelation.toString(),
        secondaryMobile: _sMobCtrl.text,

        guardiansName: _gNameCtrl.text,
        guardiansMobileNumber: _gMobCtrl.text,
        guardiansOccupation: _gOccCtrl.text,
        guardiansAddress: _gAddrCtrl.text,
        guardiansEmailAddress: _gEmailCtrl.text,
        guardiansOfficeNumber: _gOfficeCtrl.text,
        guardiansAadhaarNumber: _gAadhaarCtrl.text,

        fathersName: _fNameCtrl.text,
        fathersAadhaarNumber: _fAadhaarCtrl.text,
        fathersOccupation: _fOccCtrl.text,
        fathersAnnualIncome: _fIncomeCtrl.text,
        fathersMobileNumber: _fMobCtrl.text,
        fathersTelephoneOffice: _fTelCtrl.text,
        fathersPostHeld: _fPostCtrl.text,
        fathersPermanentAddress: _fAddrCtrl.text,
        fathersLanguagesKnown: _fLangCtrl.text,
        fathersEmailAddress: _fEmailCtrl.text,
        fathersEducationalQualification: _fEduCtrl.text,
        fathersCompanyName: _fCompCtrl.text,
        fathersBusinessAddress: _fBusAddrCtrl.text,

        mothersName: _mNameCtrl.text,
        mothersAadhaarNumber: _mAadhaarCtrl.text,
        mothersOccupation: _mOccCtrl.text,
        mothersAnnualIncome: _mIncomeCtrl.text,
        mothersMobileNumber: _mMobCtrl.text,
        mothersEmailAddress: _mEmailCtrl.text,
        mothersLanguagesKnown: _mLangCtrl.text,
        mothersCompanyName: _mCompCtrl.text,
        mothersBusinessAddress: _mBusAddrCtrl.text,
        mothersEducationalQualification: _mEduCtrl.text,
        mothersPermanentAddress: _mAddrCtrl.text,
        mothersPostHeld: _mPostCtrl.text,
        mothersTelephoneOffice: _mTelCtrl.text,
      );
      widget.onSave(model);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // PRIMARY
          buildContactCard(
            context,
            title: AppStrings.primaryContact,
            nameCtrl: _pNameCtrl,
            relation: _selectedPrimaryRelation,
            onRelationChanged: (val) {
              setState(() => _selectedPrimaryRelation = val);
            },
            mobCtrl: _pMobCtrl,
          ),
          SizedBox(height: AppSizes.h16),

          // SECONDARY
          buildContactCard(
            context,
            title: AppStrings.secondaryContact,
            nameCtrl: _sNameCtrl,
            relation: _selectedSecondaryRelation,
            onRelationChanged: (val) {
              setState(() => _selectedSecondaryRelation = val);
            },
            mobCtrl: _sMobCtrl,
          ),
          SizedBox(height: AppSizes.h16),

          _buildExpansionCard("Guardian Details", [
            _buildTextField("Guardian's Name", _gNameCtrl),
            _buildTextField(
              "Mobile Number",
              _gMobCtrl,
              type: TextInputType.phone,
              onValidate: (value) =>
                  value.length != 10 ? 'Mobile number must be 10 digits' : null,
            ),
            _buildTextField("Occupation", _gOccCtrl),
            _buildTextField("Address", _gAddrCtrl),
            _buildTextField(
              "Email Address",
              _gEmailCtrl,
              type: TextInputType.emailAddress,
              onValidate: (value) =>
                  !RegExp(
                    r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
                  ).hasMatch(value)
                  ? "Enter a valid email address"
                  : null,
            ),
            _buildTextField(
              "Office Number",
              _gOfficeCtrl,
              type: TextInputType.phone,
              onValidate: (value) =>
                  !RegExp(r'^0\d{2,4}\d{6,8}$').hasMatch(value)
                  ? "Enter valid landline number"
                  : null,
            ),
            _buildTextField(
              "Aadhaar Number",
              _gAadhaarCtrl,
              type: TextInputType.number,
              onValidate: (value) =>
                  value.length != 12 ? "Enter Valid Aadhar No." : null,
            ),
          ]),
          SizedBox(height: AppSizes.h16),

          _buildExpansionCard("Father's Details", [
            _buildTextField("Name", _fNameCtrl),
            _buildTextField(
              "Aadhaar Number",
              _fAadhaarCtrl,
              type: TextInputType.number,
              onValidate: (value) => value.length != 12
                  ? 'Aadhaar number must be 12 digits'
                  : null,
            ),
            _buildTextField("Occupation", _fOccCtrl),
            _buildTextField(
              "Annual Income",
              _fIncomeCtrl,
              type: TextInputType.number,
            ),
            _buildTextField(
              "Mobile Number",
              _fMobCtrl,
              type: TextInputType.phone,
              onValidate: (value) =>
                  value.length != 10 ? 'Mobile number must be 10 digits' : null,
            ),
            _buildTextField(
              "Office Telephone",
              _fTelCtrl,
              type: TextInputType.phone,
              onValidate: (value) =>
                  !RegExp(r'^0\d{2,4}\d{6,8}$').hasMatch(value)
                  ? "Enter valid landline number"
                  : null,
            ),
            _buildTextField("Post Held", _fPostCtrl),
            _buildTextField("Permanent Address", _fAddrCtrl),
            _buildTextField("Languages Known", _fLangCtrl),
            _buildTextField(
              "Email Address",
              _fEmailCtrl,
              type: TextInputType.emailAddress,
              onValidate: (value) =>
                  !RegExp(
                    r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
                  ).hasMatch(value)
                  ? "Enter a valid email address"
                  : null,
            ),
            _buildTextField("Educational Qualification", _fEduCtrl),
            _buildTextField("Company Name", _fCompCtrl),
            _buildTextField("Business Address", _fBusAddrCtrl),
          ]),
          SizedBox(height: AppSizes.h16),

          _buildExpansionCard("Mother's Details", [
            _buildTextField("Name", _mNameCtrl),
            _buildTextField(
              "Aadhaar Number",
              _mAadhaarCtrl,
              type: TextInputType.number,
              onValidate: (value) => value.length != 12
                  ? 'Aadhaar number must be 12 digits'
                  : null,
            ),
            _buildTextField("Occupation", _mOccCtrl),
            _buildTextField(
              "Annual Income",
              _mIncomeCtrl,
              type: TextInputType.number,
            ),
            _buildTextField(
              "Mobile Number",
              _mMobCtrl,
              type: TextInputType.phone,
              onValidate: (value) =>
                  value.length != 10 ? 'Mobile number must be 10 digits' : null,
            ),
            _buildTextField(
              "Email Address",
              _mEmailCtrl,
              type: TextInputType.emailAddress,
              onValidate: (value) =>
                  !RegExp(
                    r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
                  ).hasMatch(value)
                  ? "Enter a valid email address"
                  : null,
            ),
            _buildTextField("Languages Known", _mLangCtrl),
            _buildTextField("Company Name", _mCompCtrl),
            _buildTextField("Business Address", _mBusAddrCtrl),
            _buildTextField("Educational Qualification", _mEduCtrl),
            _buildTextField("Permanent Address", _mAddrCtrl),
            _buildTextField("Post Held", _mPostCtrl),
            _buildTextField(
              "Office Telephone",
              _mTelCtrl,
              type: TextInputType.phone,
              onValidate: (value) =>
                  !RegExp(r'^0\d{2,4}\d{6,8}$').hasMatch(value)
                  ? "Enter valid landline number"
                  : null,
            ),
          ]),
        ],
      ),
    );
  }

  Widget _buildTextField(
    String label,
    TextEditingController ctrl, {
    TextInputType type = TextInputType.text,
    String? Function(String value)? onValidate,
  }) {
    return Padding(
      padding: EdgeInsets.only(bottom: AppSizes.h12),
      child: TextFormField(
        controller: ctrl,
        decoration: InputDecoration(labelText: label),
        keyboardType: type,
        validator: (v) {
          if (v == null || v.isEmpty) return null;
          return onValidate?.call(v);
        },
      ),
    );
  }

  Widget _buildExpansionCard(String title, List<Widget> children) {
    return Card(
      color: Colors.white,
      elevation: 2,
      margin: EdgeInsets.symmetric(horizontal: AppSizes.p16),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppSizes.r12),
      ),
      child: ExpansionTile(
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
        childrenPadding: EdgeInsets.all(AppSizes.p16),
        children: children,
      ),
    );
  }

  Widget buildContactCard(
    BuildContext context, {
    required String title,
    required TextEditingController nameCtrl,
    required String? relation,
    required ValueChanged<String?> onRelationChanged,
    required TextEditingController mobCtrl,
  }) {
    // ... Existing implementation
    return Card(
      color: Colors.white,
      elevation: 2,
      margin: EdgeInsets.symmetric(horizontal: AppSizes.p16),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppSizes.r12),
      ),
      child: Padding(
        padding: EdgeInsets.all(AppSizes.p16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: Theme.of(context).textTheme.titleMedium),
            SizedBox(height: AppSizes.h16),

            // Contact Name
            TextFormField(
              controller: nameCtrl,
              decoration: const InputDecoration(
                labelText: AppStrings.contactName,
              ),
              validator: (v) => v!.isEmpty ? AppStrings.requiredField : null,
            ),
            SizedBox(height: AppSizes.h12),

            // Relation Dropdown
            DropdownButtonFormField<String>(
              value: relation,
              decoration: const InputDecoration(labelText: AppStrings.relation),
              items: [
                'Parent',
                'Guardian',
                'Other',
              ].map((e) => DropdownMenuItem(value: e, child: Text(e))).toList(),
              onChanged: onRelationChanged,
              validator: (value) =>
                  value == null ? AppStrings.requiredField : null,
            ),
            SizedBox(height: AppSizes.h12),

            // Contact Number
            TextFormField(
              controller: mobCtrl,
              decoration: const InputDecoration(
                labelText: AppStrings.contactNumber,
              ),
              keyboardType: TextInputType.phone,
              validator: (v) {
                if (v == null || v.isEmpty) {
                  return AppStrings.requiredField;
                }
                if (v.length != 10) {
                  return 'Contact number must be 10 digits';
                }
                return null;
              },
            ),
          ],
        ),
      ),
    );
  }
}
