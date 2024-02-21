import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.controller,
    required this.hintText,
    this.suffix,
    this.boardType = TextInputType.number,
    this.validate,
  });

  final TextEditingController controller;
  final TextInputType boardType;
  final String hintText;
  final String? Function(String?)? validate;
  final String? suffix;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: boardType,
      validator: validate,
      cursorColor: const Color(0xFF000000),
      decoration: InputDecoration(
        hintText: hintText,
        suffixText: suffix,
        suffixStyle: const TextStyle(color: Colors.black),
        filled: true,
        fillColor: const Color(0xFFFFFFFF),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(color: Color(0xFFEAECF0)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.grey),
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
