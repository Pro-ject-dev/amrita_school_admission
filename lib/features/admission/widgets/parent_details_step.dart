import 'package:flutter/material.dart';
import 'package:amrita_vidhyalayam_admission/constants/app_strings.dart';
import 'package:amrita_vidhyalayam_admission/constants/app_sizes.dart';
import 'package:amrita_vidhyalayam_admission/data/models/parent_contact_model.dart';

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
  
  late TextEditingController _pNameCtrl;
  late TextEditingController _pRelCtrl;
  late TextEditingController _pMobCtrl;
  
  late TextEditingController _sNameCtrl;
  late TextEditingController _sRelCtrl;
  late TextEditingController _sMobCtrl;

  @override
  void initState() {
    super.initState();
    _pNameCtrl = TextEditingController(text: widget.initialData?.primaryName);
    _pRelCtrl = TextEditingController(text: widget.initialData?.primaryRelation);
    _pMobCtrl = TextEditingController(text: widget.initialData?.primaryMobile);
    
    _sNameCtrl = TextEditingController(text: widget.initialData?.secondaryName);
    _sRelCtrl = TextEditingController(text: widget.initialData?.secondaryRelation);
    _sMobCtrl = TextEditingController(text: widget.initialData?.secondaryMobile);
  }

  @override
  void dispose() {
    _pNameCtrl.dispose();
    _pRelCtrl.dispose();
    _pMobCtrl.dispose();
    _sNameCtrl.dispose();
    _sRelCtrl.dispose();
    _sMobCtrl.dispose();
    super.dispose();
  }

  void validateAndSave() {
    if (_formKey.currentState!.validate()) {
      final model = ParentContactModel(
        primaryName: _pNameCtrl.text,
        primaryRelation: _pRelCtrl.text,
        primaryMobile: _pMobCtrl.text,
        secondaryName: _sNameCtrl.text,
        secondaryRelation: _sRelCtrl.text,
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
          _buildContactCard(
            context,
            title: AppStrings.primaryContact,
            nameCtrl: _pNameCtrl,
            relCtrl: _pRelCtrl,
            mobCtrl: _pMobCtrl,
          ),
          SizedBox(height: AppSizes.h16),
          _buildContactCard(
            context,
            title: AppStrings.secondaryContact,
            nameCtrl: _sNameCtrl,
            relCtrl: _sRelCtrl,
            mobCtrl: _sMobCtrl,
          ),
        ],
      ),
    );
  }

  Widget _buildContactCard(
    BuildContext context, {
    required String title,
    required TextEditingController nameCtrl,
    required TextEditingController relCtrl,
    required TextEditingController mobCtrl,
  }) {
    return Card(
      elevation: 2,
      margin: EdgeInsets.symmetric(horizontal: AppSizes.p16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(AppSizes.r12)),
      child: Padding(
        padding: EdgeInsets.all(AppSizes.p16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: Theme.of(context).textTheme.titleMedium),
            SizedBox(height: AppSizes.h16),
            TextFormField(
              controller: nameCtrl,
              decoration: const InputDecoration(labelText: AppStrings.contactName),
              validator: (v) => v!.isEmpty ? AppStrings.requiredField : null,
            ),
            SizedBox(height: AppSizes.h12),
            TextFormField(
              controller: relCtrl,
              decoration: const InputDecoration(labelText: AppStrings.relation),
              validator: (v) => v!.isEmpty ? AppStrings.requiredField : null,
            ),
            SizedBox(height: AppSizes.h12),
            TextFormField(
              controller: mobCtrl,
              decoration: const InputDecoration(labelText: AppStrings.contactNumber),
              keyboardType: TextInputType.phone,
              validator: (v) => v!.isEmpty ? AppStrings.requiredField : null,
            ),
          ],
        ),
      ),
    );
  }
}
