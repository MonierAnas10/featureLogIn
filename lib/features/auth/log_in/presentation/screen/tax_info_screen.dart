import 'package:flutter/material.dart';

import '../../../../../core/shared/class_shared_import.dart';
import '../widgets/tax_info_card.dart';

class TaxInfoScreen extends StatelessWidget {
  const TaxInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(),
      body: Padding(
        padding: REdgeInsets.all(10.h),
        child: Column(
          children: [
            const Expanded(flex: 12, child: TaxInfoCard()),
            Expanded(
              child: Padding(
                padding: REdgeInsets.only(right: 20.w, left: 20.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppButtons(
                      onPressed: () {},
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
