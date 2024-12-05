import 'package:flutter/material.dart';
import 'package:instagram_clone/utils/color.dart';
import 'package:instagram_clone/widgets/custom_text.dart';

class CustomElevatedButton extends StatelessWidget {
  final String buttonText;
  final double? buttonWidth;
  final Color? buttonColor;
  final Function? buttonHandler;
  final double? buttonPadding;

  const CustomElevatedButton({
    super.key,
    required this.buttonText,
    this.buttonWidth,
    this.buttonColor,
    this.buttonHandler,
    this.buttonPadding,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: buttonWidth ?? double.infinity,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: buttonColor ?? AppColors.primaryButtonColor,
          padding: buttonPadding == null
              ? const EdgeInsets.all(5)
              : EdgeInsets.all(buttonPadding!),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
        ),
        child: const CustomText(
          title: 'Log in',
          fontSize: 14,
          fontWeight: FontWeight.w600,
          textColor: Color(0xFFFFFFFF),
        ),
      ),
    );
  }
}
