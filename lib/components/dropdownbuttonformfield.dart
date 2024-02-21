import 'package:balanced_meal/cubit/cubit.dart';
import 'package:flutter/material.dart';

class MyDropdownButtonFormField extends StatelessWidget {
  const MyDropdownButtonFormField({super.key});

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      value: AppCubit.get(context).gender,
      decoration: InputDecoration(
        hintText: 'Choose your gender',
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
      items: const [
        DropdownMenuItem(
          value: 'Male',
          child: Text('Male'),
        ),
        DropdownMenuItem(
          value: 'Female',
          child: Text('Female'),
        ),
      ],
      onChanged: (value) {
        AppCubit.get(context).onChangeDropdownButtonFormField(value);
      },
      validator: (value) {
        if (value==null) {
          return 'Please choose your gender';
        } else {
          return null;
        }
      },
    );
  }
}
