import 'package:flutter/material.dart';

import '../utils/color.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final String errorMessage;
  final bool? obscureText;
  final TextEditingController controller;
  final Function(String)? onChangedBehavior;

  const CustomTextField({
    super.key,
    required this.hintText,
    required this.errorMessage,
    this.obscureText,
    required this.controller,
    this.onChangedBehavior,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value!.isEmpty) {
          return errorMessage;
        }
        return null;
      },
      controller: controller,
      onChanged: onChangedBehavior,
      obscureText: obscureText ?? false,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(
          color: AppColors.textBlack.withOpacity(0.5),
          fontSize: 14,
          fontWeight: FontWeight.normal,
        ),
        border: InputBorder.none,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 13.5,
        ),
        filled: true,
        fillColor: Colors.black.withOpacity(0.05),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            width: 0,
            color: Colors.black.withOpacity(0.05),
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            width: 0,
            color: Colors.black.withOpacity(0.05),
          ),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
