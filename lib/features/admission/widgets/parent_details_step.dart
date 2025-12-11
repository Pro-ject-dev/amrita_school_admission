import 'package:amrita_vidyalyam_admission/constants/app_sizes.dart';
import 'package:amrita_vidyalyam_admission/constants/app_strings.dart';
import 'package:amrita_vidyalyam_admission/data/models/parent_contact_model.dart';
import 'package:flutter/material.dart';


class ParentDetailsStep extends StatefulWidget {
  final Function(ParentContactModel) onSave;
  final ParentContactModel? initialData;

  const ParentDetailsStep({
    super.key,
    required this.onSave,
    this.initialData,
  });

  @override
  State<ParentDetailsStep> createState() => ParentDetailsStepState();
}

class ParentDetailsStepState extends State<ParentDetailsStep> {
  final _formKey = GlobalKey<FormState>();

  // Controllers
  late TextEditingController _pNameCtrl;
  late TextEditingController _pMobCtrl;
  late TextEditingController _sNameCtrl;
  late TextEditingController _sMobCtrl;

  // Relations
  String? _selectedPrimaryRelation;
  String? _selectedSecondaryRelation;

  @override
  void initState() {
    super.initState();

    _pNameCtrl = TextEditingController(text: widget.initialData?.primaryName ?? "");
    _pMobCtrl = TextEditingController(text: widget.initialData?.primaryMobile ?? "");

    _sNameCtrl = TextEditingController(text: widget.initialData?.secondaryName ?? "");
    _sMobCtrl = TextEditingController(text: widget.initialData?.secondaryMobile ?? "");

    _selectedPrimaryRelation = widget.initialData?.primaryRelation;
    _selectedSecondaryRelation = widget.initialData?.secondaryRelation;
  }

  @override
  void dispose() {
    _pNameCtrl.dispose();
    _pMobCtrl.dispose();
    _sNameCtrl.dispose();
    _sMobCtrl.dispose();
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
        ],
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
              items: ['Parent', 'Guardian', 'Other']
                  .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                  .toList(),
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
              validator: (v) => v!.isEmpty ? AppStrings.requiredField : null,
            ),
          ],
        ),
      ),
    );
  }
}
