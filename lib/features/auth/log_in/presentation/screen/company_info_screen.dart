import 'package:flutter/material.dart';
import 'package:taskorderrate/core/shared/class_shared_import.dart';
import 'package:taskorderrate/features/auth/log_in/presentation/screen/personal_info_screen.dart';
import 'package:taskorderrate/features/auth/log_in/presentation/widgets/company_info_card.dart';

class CompanyInfoScreen extends StatelessWidget {
  const CompanyInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(),
      body: Padding(
        padding: REdgeInsets.all(10.h),
        child: Column(
          children: [
            const Expanded(flex: 12, child: CompanyInfoCard()),
            20.verticalSpace,
            Expanded(
              child: Padding(
                padding: REdgeInsets.only(left: 20.w, right: 20.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppButtons(
                      onPressed: () {
                        AppRoutes.pushTo(context, const PersonalInfoScreen());
                      },
                      text: AppMessage.next,
                      height: 30.h,
                      width: 110.w,
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
