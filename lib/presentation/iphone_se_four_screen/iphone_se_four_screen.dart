import 'package:flutter/material.dart';
import 'package:css125_pro/core/app_export.dart';
import 'package:css125_pro/widgets/custom_outlined_button.dart';
import 'controller/iphone_se_four_controller.dart';

// ignore_for_file: must_be_immutable
class IphoneSeFourScreen extends GetWidget<IphoneSeFourController> {
  const IphoneSeFourScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: Container(
              decoration: AppDecoration.fillBlue.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder24,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  _buildAboutMyHabits(),
                  SizedBox(height: 17.v),
                  Container(
                    width: 292.h,
                    margin: EdgeInsets.only(
                      left: 11.h,
                      right: 17.h,
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: 15.h,
                      vertical: 14.v,
                    ),
                    decoration: AppDecoration.fillGray.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder24,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 36.v),
                        Container(
                          width: 253.h,
                          margin: EdgeInsets.only(right: 8.h),
                          child: Text(
                            "msg_if_possible_insert".tr,
                            maxLines: 9,
                            overflow: TextOverflow.ellipsis,
                            style: theme.textTheme.titleLarge!.copyWith(
                              height: 1.30,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 30.v),
                  CustomOutlinedButton(
                    width: 102.h,
                    text: "lbl_back".tr,
                    margin: EdgeInsets.only(left: 11.h),
                    alignment: Alignment.centerLeft,
                  ),
                  SizedBox(height: 18.v),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAboutMyHabits() {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 56.h,
        vertical: 63.v,
      ),
      decoration: AppDecoration.fillYellow,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 2.v),
          Text(
            "lbl_about_my_habits".tr,
            style: theme.textTheme.headlineSmall,
          ),
        ],
      ),
    );
  }
}
