import 'package:flutter/material.dart';
import 'package:css125_pro/core/app_export.dart';
import 'package:css125_pro/widgets/custom_outlined_button.dart';
import 'controller/iphone_se_one_controller.dart';

// ignore_for_file: must_be_immutable
class IphoneSeOneScreen extends GetWidget<IphoneSeOneController> {
  const IphoneSeOneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 26.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                        width: 195.h,
                        child: Text(
                          "msg_what_would_you_like".tr,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: theme.textTheme.headlineSmall!.copyWith(
                            height: 1.30,
                          ),
                        ),
                      ),
                      SizedBox(height: 29.v),
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 18.h,
                          vertical: 14.v,
                        ),
                        decoration: AppDecoration.fillBlue.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder24,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            _buildGingerColumn(),
                            SizedBox(height: 34.v),
                            CustomOutlinedButton(
                              height: 62.v,
                              text: "lbl_log_a_meal".tr,
                              margin: EdgeInsets.only(
                                left: 11.h,
                                right: 12.h,
                              ),
                              buttonStyle: CustomButtonStyles.outlineGray,
                              buttonTextStyle: theme.textTheme.titleLarge!,
                            ),
                            SizedBox(height: 31.v),
                            CustomOutlinedButton(
                              height: 62.v,
                              text: "lbl_about_my_habits".tr,
                              margin: EdgeInsets.symmetric(horizontal: 11.h),
                              buttonStyle: CustomButtonStyles.outlineGray,
                              buttonTextStyle: theme.textTheme.titleLarge!,
                            ),
                            SizedBox(height: 31.v),
                            CustomOutlinedButton(
                              height: 62.v,
                              text: "msg_update_preferences".tr,
                              margin: EdgeInsets.only(
                                left: 11.h,
                                right: 12.h,
                              ),
                              buttonStyle: CustomButtonStyles.outlineGray,
                              buttonTextStyle: theme.textTheme.titleLarge!,
                            ),
                            SizedBox(height: 62.v),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildGingerColumn() {
    return Container(
      margin: EdgeInsets.only(right: 4.h),
      padding: EdgeInsets.symmetric(
        horizontal: 31.h,
        vertical: 9.v,
      ),
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder24,
      ),
      child: SizedBox(
        width: 217.h,
        child: Text(
          "msg_mealtime_in".tr,
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
          style: theme.textTheme.titleLarge!.copyWith(
            height: 1.30,
          ),
        ),
      ),
    );
  }
}
