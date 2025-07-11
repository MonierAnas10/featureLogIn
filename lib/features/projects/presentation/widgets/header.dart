import 'package:flutter/material.dart';
import 'package:taskorderrate/core/shared/class_shared_import.dart';
import 'package:taskorderrate/core/widgets/app_badges.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 10.w,
        right: 10.w,
        top: context.top + (10.h),
      ),
      height: 60.h,
      //color: Colors.red,
      width: AppSize.screenWidth,
      child: Row(
        children: [
          //show profile===========================================================================================
          Expanded(
            flex: 3,
            child: ListTile(
              contentPadding: EdgeInsets.zero,
              //app logo
              leading: IconButton(
                padding: EdgeInsets.zero,
                highlightColor: AppColor.noColor,
                onPressed: () {},
                icon: Icon(
                  AppIcons.drawer,
                  size: AppSize.appBarIconSize + (5.spMin),
                ),
              ),
              title: AppText(text: 'welcome'.tr(), fontWeight: FontWeight.bold),
              subtitle: AppText(
                text: 'subWelcome'.tr(),
                color: AppColor.textColor,
                fontSize: AppSize.smallText,
              ),
            ),
          ),

          //notification count===========================================================================================
          Container(
            margin: EdgeInsets.only(top: 5.h),
            width: 40.spMin,
            height: 40.spMin,

            child: AppBadge(
              badgeCount: 100,

              child: IconButton(
                highlightColor: AppColor.noColor,
                onPressed: () {
                  //AppRoutes.pushTo(context, const NotificationsHome());
                },
                icon: Icon(
                  AppIcons.notification,
                  size: AppSize.appBarIconSize + (10.spMin),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
