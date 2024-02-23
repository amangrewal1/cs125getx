import 'package:flutter/material.dart';
import 'package:css125_pro/core/app_export.dart';
import 'package:css125_pro/widgets/custom_text_form_field.dart';
import 'controller/iphone_se_two_controller.dart';

// ignore_for_file: must_be_immutable
class IphoneSeTwoScreen extends GetWidget<IphoneSeTwoController> {
  const IphoneSeTwoScreen({Key? key})
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
                  _buildWelcomeMessage(),
                  SizedBox(height: 22.v),
                  Padding(
                    padding: EdgeInsets.only(left: 32.h),
                    child: CustomTextFormField(
                      width: 156.h,
                      controller: controller.agevalueController,
                      hintText: "lbl_age".tr,
                      suffix: Container(
                        margin: EdgeInsets.fromLTRB(30.h, 11.v, 8.h, 11.v),
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
                  SizedBox(height: 31.v),
                  Padding(
                    padding: EdgeInsets.only(left: 32.h),
                    child: CustomTextFormField(
                      width: 156.h,
                      controller: controller.heightvalueController,
                      hintText: "lbl_height".tr,
                      textInputAction: TextInputAction.done,
                      suffix: Container(
                        margin: EdgeInsets.fromLTRB(30.h, 11.v, 8.h, 11.v),
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
                  SizedBox(height: 31.v),
                  Padding(
                    padding: EdgeInsets.only(left: 32.h),
                    child: _buildGenderInput(
                      gender: "lbl_weight".tr,
                    ),
                  ),
                  SizedBox(height: 31.v),
                  Padding(
                    padding: EdgeInsets.only(left: 32.h),
                    child: _buildGenderInput(
                      gender: "lbl_gender".tr,
                    ),
                  ),
                  SizedBox(height: 48.v),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildWelcomeMessage() {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 28.h,
        vertical: 21.v,
      ),
      decoration: AppDecoration.fillYellow,
      child: Column(
        children: [
          SizedBox(height: 12.v),
          Container(
            width: 256.h,
            margin: EdgeInsets.only(left: 5.h),
            child: Text(
              "msg_welcome_to_antsleeper".tr,
              maxLines: 5,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: theme.textTheme.titleLarge!.copyWith(
                height: 1.30,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildGenderInput({required String gender}) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 5.h,
        vertical: 9.v,
      ),
      decoration: AppDecoration.outlineOnPrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 4.v,
              bottom: 2.v,
            ),
            child: Text(
              gender,
              style: CustomTextStyles.titleLargeGray600.copyWith(
                color: appTheme.gray600,
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgEdit,
            height: 32.adaptSize,
            width: 32.adaptSize,
            margin: EdgeInsets.only(
              left: 37.h,
              right: 1.h,
            ),
          ),
        ],
      ),
    );
  }
}
