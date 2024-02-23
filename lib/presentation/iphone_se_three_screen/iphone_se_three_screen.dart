import 'package:flutter/material.dart';
import 'package:css125_pro/core/app_export.dart';
import 'package:css125_pro/widgets/custom_floating_text_field.dart';
import 'package:css125_pro/widgets/custom_outlined_button.dart';
import 'package:css125_pro/widgets/custom_text_form_field.dart';
import 'controller/iphone_se_three_controller.dart';

// ignore_for_file: must_be_immutable
class IphoneSeThreeScreen extends GetWidget<IphoneSeThreeController> {
  const IphoneSeThreeScreen({Key? key})
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildLogAMealSection(),
                  SizedBox(height: 14.v),
                  Padding(
                    padding: EdgeInsets.only(left: 31.h),
                    child: Text(
                      "lbl_calories".tr,
                      style: theme.textTheme.titleLarge,
                    ),
                  ),
                  SizedBox(height: 7.v),
                  Padding(
                    padding: EdgeInsets.only(left: 31.h),
                    child: CustomTextFormField(
                      width: 156.h,
                      controller: controller.caloriesController,
                      hintText: "lbl_1000kcal".tr,
                      suffix: Container(
                        margin: EdgeInsets.fromLTRB(14.h, 11.v, 8.h, 11.v),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgEdit,
                          height: 32.adaptSize,
                          width: 32.adaptSize,
                        ),
                      ),
                      suffixConstraints: BoxConstraints(
                        maxHeight: 54.v,
                      ),
                    ),
                  ),
                  SizedBox(height: 16.v),
                  Padding(
                    padding: EdgeInsets.only(left: 31.h),
                    child: Text(
                      "lbl_hydration".tr,
                      style: theme.textTheme.titleLarge,
                    ),
                  ),
                  SizedBox(height: 6.v),
                  Container(
                    margin: EdgeInsets.only(left: 31.h),
                    padding: EdgeInsets.symmetric(
                      horizontal: 6.h,
                      vertical: 9.v,
                    ),
                    decoration: AppDecoration.outlineOnPrimary.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder20,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            left: 15.h,
                            top: 3.v,
                            bottom: 3.v,
                          ),
                          child: Text(
                            "lbl_500ml".tr,
                            style: CustomTextStyles.titleLargeGray600,
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgEdit,
                          height: 32.adaptSize,
                          width: 32.adaptSize,
                          margin: EdgeInsets.only(left: 24.h),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 17.v),
                  _buildWeightSection(),
                  SizedBox(height: 55.v),
                  _buildNavigationSection(),
                  SizedBox(height: 15.v),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildLogAMealSection() {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 38.h,
        vertical: 34.v,
      ),
      decoration: AppDecoration.fillYellow,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(right: 47.h),
            child: Text(
              "lbl_log_a_meal".tr,
              style: theme.textTheme.headlineSmall,
            ),
          ),
          SizedBox(height: 31.v),
          Text(
            "msg_please_input_meal".tr,
            style: theme.textTheme.titleLarge,
          ),
          SizedBox(height: 3.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildWeightSection() {
    return Padding(
      padding: EdgeInsets.only(left: 31.h),
      child: CustomFloatingTextField(
        width: 156.h,
        controller: controller.weightSectionController,
        labelText: "lbl_sugar".tr,
        labelStyle: CustomTextStyles.titleLargeGray600,
        hintText: "lbl_sugar".tr,
        textInputAction: TextInputAction.done,
        suffix: Container(
          margin: EdgeInsets.symmetric(horizontal: 8.h),
          child: CustomImageView(
            imagePath: ImageConstant.imgEdit,
            height: 32.adaptSize,
            width: 32.adaptSize,
          ),
        ),
        suffixConstraints: BoxConstraints(
          maxHeight: 77.v,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildNavigationSection() {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.only(
          left: 31.h,
          right: 28.h,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomOutlinedButton(
              width: 102.h,
              text: "lbl_back".tr,
            ),
            CustomOutlinedButton(
              width: 102.h,
              text: "lbl_next".tr,
            ),
          ],
        ),
      ),
    );
  }
}
