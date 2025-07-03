import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taskorderrate/core/constants/app_color.dart';
import 'package:taskorderrate/core/constants/app_size.dart';

class LogInText extends StatelessWidget {
  final String text;
  const LogInText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: text,
        style: GoogleFonts.almarai(
          fontSize: AppSize.captionText,
          color: AppColor.textColor,
          decorationColor: AppColor.lightGray,
        ),
        children: const [
          TextSpan(
            text: ' *',
            style: TextStyle(
              color: AppColor.mainColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
