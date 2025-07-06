import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taskorderrate/core/constants/app_color.dart';
import 'package:taskorderrate/core/shared/class_shared_import.dart';
import 'package:taskorderrate/core/widgets/app_check_box.dart';
import 'package:taskorderrate/core/widgets/app_radio.dart';
import 'package:taskorderrate/features/auth/log_in/presentation/widgets/log_in_text_widget.dart';

class TaxInfoCard extends StatefulWidget {
  const TaxInfoCard({super.key});

  @override
  State<TaxInfoCard> createState() => _TaxInfoCardState();
}

class _TaxInfoCardState extends State<TaxInfoCard> {
  final TextEditingController _controllerPickerFile = TextEditingController();
  bool isChecked = false;
  int selectedValue = 1;
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
                  text: AppMessage.taxInformation,
                  fontWeight: FontWeight.bold,
                  fontSize: AppSize.heading2,
                ),
                Divider(
                  color: AppColor.mainColor,
                  thickness: 4,
                  radius: BorderRadius.circular(20.r),
                ),
                AppRadio(
                  labelName: AppMessage.companyIsRegisteredForVAT,
                  groupValue: selectedValue,
                  value: 1,
                  onChanged: (value) {
                    setState(() {
                      selectedValue = value ?? 1;
                    });
                  },
                ),
                20.verticalSpace,
                const LogInText(text: AppMessage.taxNumber),
                10.verticalSpace,
                const AppTextFields(),
                20.verticalSpace,
                const LogInText(text: AppMessage.taxCertificate),
                10.verticalSpace,
                AppTextFields(
                  hintText: AppMessage.noFileSelected,
                  controller: _controllerPickerFile,
                  readOnly: true,
                  onTap: () async {
                    final file = await AppHelpers.pickDocument();
                    if (file != null) {
                      print('اسم الملف: ${file.name}');
                      print('المسار: ${file.path}');
                      _controllerPickerFile.text = file.name;
                    }
                  },
                ),
                15.verticalSpace,
                Transform.translate(
                  offset: Offset(10.w, 0),
                  child: Row(
                    children: [
                      Radio(
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        fillColor: WidgetStateColor.resolveWith(
                          (states) =>
                              states.contains(WidgetState.selected)
                                  ? AppColor
                                      .mainColor // Active Color
                                  : AppColor.lightGray, // Inactive Color
                        ),
                        value: 2,
                        groupValue: selectedValue,
                        onChanged: (value) {
                          setState(() {
                            selectedValue = value ?? 2;
                          });
                        },
                      ),
                      Flexible(
                        child: AppText(
                          text: AppMessage.companyIsNotRegisteredForVAT,
                          color: AppColor.textColor,
                          fontSize: AppSize.captionText,
                          overflow: TextOverflow.visible,
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    AppCheckBox(
                      label: AppMessage.agreeToTheTerm,
                      value: isChecked,
                      onChanged: (newValue) {
                        setState(() {
                          isChecked = newValue ?? false;
                        });
                      },
                    ),
                    TextButton(
                      onPressed: () async {},
                      child: RichText(
                        text: TextSpan(
                          text: AppMessage.terms,
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
