import 'package:flutter/material.dart';
import 'package:taskorderrate/core/shared/class_shared_import.dart';

class AppRadio extends StatelessWidget {
  final String labelName;
  final int? groupValue;
  final int value;
  final Color? textColor;
  final double? fontSize;
  final void Function(int?) onChanged;
  const AppRadio({
    super.key,
    required this.labelName,
    required this.groupValue,
    required this.value,
    required this.onChanged,
    this.textColor,
    this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
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
            value: value,
            groupValue: groupValue,
            onChanged: onChanged,
          ),
          AppText(
            text: labelName,
            color: textColor ?? AppColor.textColor,
            fontSize: fontSize ?? AppSize.captionText,
            overflow: TextOverflow.visible,
          ),
        ],
      ),
    );
  }
}
