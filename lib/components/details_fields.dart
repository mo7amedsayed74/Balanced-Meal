import 'package:balanced_meal/components/dropdownbuttonformfield.dart';
import 'package:balanced_meal/custom_widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class MyFields extends StatelessWidget {
  const MyFields({
    super.key,
    required this.weightController,
    required this.heightController,
    required this.ageController,
  });

  final TextEditingController weightController;
  final TextEditingController heightController;
  final TextEditingController ageController;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const SizedBox(height: 10),
        const Text('Gender'),
        const MyDropdownButtonFormField(),
        const SizedBox(height: 10),
        const Text('Weight'),
        const SizedBox(height: 6),
        CustomTextFormField(
          controller: weightController,
          hintText: 'Enter your weight',
          suffix: 'Kg',
          validate: (value) {
            if (value!.isEmpty) {
              return 'Please enter your weight';
            } else {
              return null;
            }
          },
        ),
        const SizedBox(height: 10),
        const Text('Height'),
        const SizedBox(height: 6),
        CustomTextFormField(
          controller: heightController,
          hintText: 'Enter your height',
          suffix: 'Cm',
          validate: (value) {
            if (value!.isEmpty) {
              return 'Please enter your height';
            } else {
              return null;
            }
          },
        ),
        const SizedBox(height: 10),
        const Text('Age'),
        const SizedBox(height: 6),
        CustomTextFormField(
          controller: ageController,
          hintText: 'Enter your age',
          validate: (value) {
            if (value!.isEmpty) {
              return 'Please enter your age';
            } else {
              return null;
            }
          },
        ),
      ],
    );
  }
}