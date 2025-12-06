import 'package:flutter/material.dart';
import 'package:amrita_vidhyalayam_admission/constants/app_strings.dart';
import 'package:amrita_vidhyalayam_admission/constants/app_sizes.dart';
import 'package:amrita_vidhyalayam_admission/data/models/address_model.dart';

class AddressStep extends StatefulWidget {
  final Function(AddressModel) onSave;
  final AddressModel? initialData;

  const AddressStep({
    super.key,
    required this.onSave,
    this.initialData,
  });

  @override
  State<AddressStep> createState() => AddressStepState();
}

class AddressStepState extends State<AddressStep> {
  final _formKey = GlobalKey<FormState>();
  late TextEditingController _addressCtrl;

  @override
  void initState() {
    super.initState();
    _addressCtrl = TextEditingController(text: widget.initialData?.address);
  }

  @override
  void dispose() {
    _addressCtrl.dispose();
    super.dispose();
  }

  void validateAndSave() {
    if (_formKey.currentState!.validate()) {
      widget.onSave(AddressModel(address: _addressCtrl.text));
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
                AppStrings.step3Title, 
                style: Theme.of(context).textTheme.titleLarge,
              ),
              SizedBox(height: AppSizes.h16),
              TextFormField(
                controller: _addressCtrl,
                decoration: const InputDecoration(
                  labelText: AppStrings.address,
                  alignLabelWithHint: true,
                ),
                maxLines: 4,
                validator: (v) => v!.isEmpty ? AppStrings.requiredField : null,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
