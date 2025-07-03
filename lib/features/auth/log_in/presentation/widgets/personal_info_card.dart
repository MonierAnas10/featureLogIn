import 'package:flutter/material.dart';
import 'package:taskorderrate/core/widgets/app_check_box.dart';

import '../../../../../core/shared/class_shared_import.dart';
import 'log_in_text_widget.dart';

class PersonalInfoCard extends StatefulWidget {
  const PersonalInfoCard({super.key});

  @override
  State<PersonalInfoCard> createState() => _PersonalInfoCardState();
}

class _PersonalInfoCardState extends State<PersonalInfoCard> {
  bool isChecked = false;
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
                  text: AppMessage.personalInformation,
                  fontWeight: FontWeight.bold,
                  fontSize: AppSize.heading2,
                ),
                Divider(
                  color: AppColor.mainColor,
                  thickness: 4,
                  radius: BorderRadius.circular(20.r),
                  endIndent: 210.w,
                ),
                20.verticalSpace,
                const AppText(text: AppMessage.phone),
                10.verticalSpace,
                const AppTextFields(),
                20.verticalSpace,
                const LogInText(text: AppMessage.firstName),
                10.verticalSpace,
                const AppTextFields(),
                20.verticalSpace,
                const LogInText(text: AppMessage.lastName),
                10.verticalSpace,
                const AppTextFields(),
                20.verticalSpace,
                const LogInText(text: AppMessage.idNumber),
                10.verticalSpace,
                const AppTextFields(),
                20.verticalSpace,
                const LogInText(text: AppMessage.email),
                10.verticalSpace,
                const AppTextFields(),
                15.verticalSpace,
                AppText(
                  text:
                      AppMessage.yourPhoneNumberAndEmailMayBeUsedByTheShipping,
                  color: AppColor.subtextColor,
                  fontSize: AppSize.smallText,
                ),
                Row(
                  children: [
                    AppCheckBox(
                      label: AppMessage.wouldLikeToBeContacted,
                      value: isChecked,
                      onChanged: (newValue) {
                        setState(() {
                          isChecked = newValue ?? false;
                        });
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
