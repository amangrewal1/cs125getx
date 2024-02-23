import 'package:flutter/material.dart';
import 'package:css125_pro/core/app_export.dart';
import 'package:css125_pro/widgets/custom_outlined_button.dart';
import 'package:css125_pro/widgets/custom_text_form_field.dart';
import 'controller/iphone_se_five_controller.dart';

// ignore_for_file: must_be_immutable
class IphoneSeFiveScreen extends GetWidget<IphoneSeFiveController> {
  const IphoneSeFiveScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
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
                  _buildUpdatePreferences(),
                  SizedBox(height: 39.v),
                  _buildThemeIcon(),
                  SizedBox(height: 29.v),
                  _buildRemindersIcon(),
                  SizedBox(height: 28.v),
                  _buildResetStatisticsIcon(),
                  SizedBox(height: 68.v),
                  _buildBack(),
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
  Widget _buildUpdatePreferences() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 38.h,
        vertical: 61.v,
      ),
      decoration: AppDecoration.fillYellow,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 6.v),
          Text(
            "msg_update_preferences".tr,
            style: theme.textTheme.headlineSmall,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildThemeIcon() {
    return Padding(
      padding: EdgeInsets.only(
        left: 32.h,
        right: 27.h,
      ),
      child: CustomTextFormField(
        controller: controller.themeIconController,
        hintText: "msg_theme_icon".tr,
        contentPadding: EdgeInsets.symmetric(
          horizontal: 30.h,
          vertical: 18.v,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRemindersIcon() {
    return Padding(
      padding: EdgeInsets.only(
        left: 30.h,
        right: 27.h,
      ),
      child: CustomTextFormField(
        controller: controller.remindersIconController,
        hintText: "msg_reminders_icon".tr,
        contentPadding: EdgeInsets.symmetric(
          horizontal: 30.h,
          vertical: 18.v,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildResetStatisticsIcon() {
    return Padding(
      padding: EdgeInsets.only(
        left: 32.h,
        right: 27.h,
      ),
      child: CustomTextFormField(
        controller: controller.resetStatisticsIconController,
        hintText: "msg_reset_statistics".tr,
        textInputAction: TextInputAction.done,
        contentPadding: EdgeInsets.symmetric(
          horizontal: 11.h,
          vertical: 18.v,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildBack() {
    return CustomOutlinedButton(
      width: 102.h,
      text: "lbl_back".tr,
      margin: EdgeInsets.only(left: 11.h),
      alignment: Alignment.centerLeft,
    );
  }
}
