import 'package:flutter/material.dart';
import 'package:instagram_clone/utils/color.dart';
import 'package:instagram_clone/widgets/custom_text.dart';

class CustomElevatedButton extends StatelessWidget {
  final String buttonText;
  final double? buttonWidth;
  final Color? buttonColor;
  final VoidCallback buttonHandler;
  final double? buttonPadding;
  final FontWeight? buttonFontWeight;

  const CustomElevatedButton({
    super.key,
    required this.buttonText,
    this.buttonWidth,
    this.buttonColor,
    required this.buttonHandler,
    this.buttonPadding,
    this.buttonFontWeight,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: buttonWidth ?? double.infinity,
      child: ElevatedButton(
        onPressed: buttonHandler,
        style: ElevatedButton.styleFrom(
          backgroundColor: buttonColor ?? AppColors.primaryButtonColor,
          padding: buttonPadding == null
              ? const EdgeInsets.all(5)
              : EdgeInsets.all(buttonPadding!),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
        ),
        child: CustomText(
          title: 'Log in',
          fontSize: 14,
          fontWeight: buttonFontWeight ?? FontWeight.normal,
          textColor: const Color(0xFFFFFFFF),
        ),
      ),
    );
  }
}
