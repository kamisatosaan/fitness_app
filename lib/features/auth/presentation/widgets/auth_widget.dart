import 'package:flutter/material.dart';
import 'package:new_bloc_app/core/theme/app_pallete.dart';

class AuthWidget extends StatelessWidget {
  final String labelText;
  final TextEditingController controller;
  final bool obscureText;
  final TextInputType keyboardType;

  const AuthWidget({
    super.key,
    required this.labelText,
    required this.controller,
    this.obscureText = false,
    required this.keyboardType,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: const TextStyle(
          color: AppPallete.backgroundColor2,
          fontWeight: FontWeight.w500,
          fontSize: 18,
        ),
      ),
      validator: (String? value) {
        if (value!.isEmpty) {
          return '$labelText can not be empty';
        } else {
          return '';
        }
      },
    );
  }
}
