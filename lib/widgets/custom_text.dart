import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String title;
  final double fontSize;
  final FontWeight? fontWeight;
  final Color textColor;
  final TextAlign? alignText;

  const CustomText({
    super.key,
    required this.title,
    required this.fontSize,
    this.fontWeight,
    required this.textColor,
    this.alignText,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: alignText ?? TextAlign.left,
      style: TextStyle(
        fontFamily: 'assets/fonts/SF-Pro-Text-Regular.otf',
        color: textColor,
        fontSize: fontSize,
        fontWeight: fontWeight ?? FontWeight.normal,
      ),
    );
  }
}
