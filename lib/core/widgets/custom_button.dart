import 'package:flutter/material.dart';
import 'package:ecommerce_app/core/utils/app_color.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onpressed;
  final double height;
  final double width;
  final double borderRadius;
  final Color backgroundColor;
  final TextStyle? textStyle;

  const CustomButton({
    super.key,
    required this.text,
    required this.onpressed,
    this.height = 50,
    this.width = double.infinity,
    this.borderRadius = 12,
    this.backgroundColor = AppColors.primaryColor,
    this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: ElevatedButton(
        onPressed: onpressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
        ),
        child: Text(
          text,
          style: textStyle ??
              const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
        ),
      ),
    );
  }
}
