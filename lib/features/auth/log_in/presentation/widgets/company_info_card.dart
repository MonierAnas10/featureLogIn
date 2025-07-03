import 'package:flutter/material.dart';
import 'package:taskorderrate/features/auth/log_in/presentation/widgets/log_in_text_widget.dart';
import 'package:taskorderrate/features/auth/log_in/presentation/widgets/upload_Commercial_Registration.dart';

import '../../../../../core/shared/class_shared_import.dart';
import 'radio_Commercial_Registratio.dart';

class CompanyInfoCard extends StatelessWidget {
  const CompanyInfoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AppHelpers.scrollList(
      children: [
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.r),
            border: Border.all(
              color: AppColor.black.resolveOpacity(0.15),
              width: 3.0.w,
            ),
          ),
          child: Padding(
            padding: REdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                25.verticalSpace,
                AppText(
                  text: AppMessage.infoCompany,
                  fontWeight: FontWeight.bold,
                  fontSize: AppSize.heading2,
                ),
                Divider(
                  color: AppColor.mainColor,
                  thickness: 4,
                  radius: BorderRadius.circular(20.r),
                  endIndent: 240.w,
                ),
                20.verticalSpace,
                const LogInText(text: AppMessage.commercialRegistrationNumber),
                10.verticalSpace,
                const AppTextFields(),
                20.verticalSpace,
                const LogInText(text: AppMessage.companyName),
                10.verticalSpace,
                const AppTextFields(),
                20.verticalSpace,
                const LogInText(text: AppMessage.companyAddress),
                10.verticalSpace,
                const AppTextFields(),
                20.verticalSpace,
                const RadioCommercialRegistrationDate(),
                20.verticalSpace,
                const AppText(text: AppMessage.listofPermittedActivities),
                10.verticalSpace,
                AppTextFields(
                  contentPadding: REdgeInsets.symmetric(
                    horizontal: 12.w,
                    vertical: 30.h,
                  ),
                ),
                15.verticalSpace,
                const UploadCommercialRegistration(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
