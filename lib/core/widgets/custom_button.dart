import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.borderRadius,
      required this.textColor,
      required this.backgroundColor,
      required this.text,
      this.fontSize});

  final BorderRadiusGeometry borderRadius;
  final Color textColor, backgroundColor;
  final String text;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius,
          ),
        ),
        child: Text(
          text,
          style: Styles.kTextStyle18.copyWith(
              color: textColor,
              fontWeight: FontWeight.w900,
              fontSize: fontSize),
        ),
      ),
    );
  }
}
