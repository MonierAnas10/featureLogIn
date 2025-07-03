import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taskorderrate/core/constants/app_color.dart';
import 'package:taskorderrate/core/constants/app_size.dart';
import 'package:taskorderrate/core/shared/class_shared_import.dart';

class UploadCommercialRegistration extends StatelessWidget {
  const UploadCommercialRegistration({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120.h,
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColor.subtextColor,
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Column(
        children: [
          TextButton(
            onPressed: () async {
              final file = await AppHelpers.pickDocument();
              if (file != null) {
                print('اسم الملف: ${file.name}');
                print('المسار: ${file.path}');
              }
            },
            child: RichText(
              text: TextSpan(
                text: AppMessage.uploadCommercialRegistration,
                style: GoogleFonts.almarai(
                  fontSize: AppSize.captionText,
                  color: AppColor.mainColor,
                  decoration: TextDecoration.underline,
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
            ),
          ),
          AppText(
            text:
                AppMessage
                    .detailsInTheDocumentMustMatchTheInformationYouEntered,
            fontSize: AppSize.smallText,
            color: AppColor.white,
            overflow: TextOverflow.ellipsis,
          ),
          AppText(
            text: AppMessage.submitAllPages,
            align: TextAlign.center,
            fontSize: AppSize.smallText,
            color: AppColor.white,
            overflow: TextOverflow.visible,
          ),
        ],
      ),
    );
  }
}
