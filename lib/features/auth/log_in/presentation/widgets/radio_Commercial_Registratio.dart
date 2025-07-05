import 'package:flutter/material.dart';
import 'package:taskorderrate/core/shared/class_shared_import.dart';
import 'package:taskorderrate/features/auth/log_in/presentation/widgets/log_in_text_widget.dart';
import '../../../../../core/constants/app_color.dart';
import '../../../../../core/constants/app_size.dart';
import '../../../../../core/constants/app_string.dart';
import '../../../../../core/widgets/app_radio.dart';
import '../../../../../core/widgets/app_text.dart';

class RadioCommercialRegistrationDate extends StatefulWidget {
  const RadioCommercialRegistrationDate({super.key});

  @override
  State<RadioCommercialRegistrationDate> createState() =>
      _RadioCommercialRegistrationDateState();
}

class _RadioCommercialRegistrationDateState
    extends State<RadioCommercialRegistrationDate> {
  int selectedDateType = 0; // 0 = hijriDate, 1 = gregorianDate

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            AppText(
              text: AppMessage.commercialRegistrationDate,
              fontSize: AppSize.smallText,
              color: AppColor.subtextColor,
            ),
            5.horizontalSpace,
            AppRadio(
              labelName: AppMessage.hijriDate,
              fontSize: AppSize.smallText,
              groupValue: selectedDateType,
              value: 0,
              onChanged: (val) {
                setState(() => selectedDateType = val!);
              },
              textColor: AppColor.subtextColor,
            ),
            AppRadio(
              labelName: AppMessage.gregorianDate,
              fontSize: AppSize.smallText,
              groupValue: selectedDateType,
              value: 1,
              onChanged: (val) {
                setState(() => selectedDateType = val!);
              },
              textColor: AppColor.subtextColor,
            ),
          ],
        ),
        25.verticalSpace,
        Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const LogInText(
                    text: AppMessage.commercialRegistrationIssueDate,
                  ),
                  10.verticalSpace,
                  const AppTextFields(),
                ],
              ),
            ),
            13.horizontalSpace,
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const LogInText(
                    text: AppMessage.commercialRegistrationExpiryDate,
                  ),
                  10.verticalSpace,
                  const AppTextFields(),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
