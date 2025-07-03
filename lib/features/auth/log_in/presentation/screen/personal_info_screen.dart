import 'package:flutter/material.dart';
import 'package:taskorderrate/features/auth/log_in/presentation/screen/tax_info_screen.dart';

import '../../../../../core/shared/class_shared_import.dart';
import '../widgets/personal_info_card.dart';

class PersonalInfoScreen extends StatelessWidget {
  const PersonalInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(),
      body: Padding(
        padding: REdgeInsets.all(10.h),
        child: Column(
          children: [
            const Expanded(flex: 12, child: PersonalInfoCard()),
            20.verticalSpace,
            Expanded(
              child: Padding(
                padding: REdgeInsets.only(left: 20.w, right: 20.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppButtons(
                      onPressed: () {
                        AppRoutes.pushTo(context, const TaxInfoScreen());
                      },
                      text: AppMessage.next,
                      height: 30.h,
                      width: 110.w,
                    ),
                    AppButtons(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      side: const BorderSide(),
                      text: AppMessage.previous,
                      height: 30.h,
                      width: 110.w,
                      textStyleColor: AppColor.subtextColor,
                      backgroundColor: AppColor.white,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
