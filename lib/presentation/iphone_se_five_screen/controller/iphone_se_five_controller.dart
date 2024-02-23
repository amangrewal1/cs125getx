import 'package:css125_pro/core/app_export.dart';
import 'package:css125_pro/presentation/iphone_se_five_screen/models/iphone_se_five_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the IphoneSeFiveScreen.
///
/// This class manages the state of the IphoneSeFiveScreen, including the
/// current iphoneSeFiveModelObj
class IphoneSeFiveController extends GetxController {
  TextEditingController themeIconController = TextEditingController();

  TextEditingController remindersIconController = TextEditingController();

  TextEditingController resetStatisticsIconController = TextEditingController();

  Rx<IphoneSeFiveModel> iphoneSeFiveModelObj = IphoneSeFiveModel().obs;

  @override
  void onClose() {
    super.onClose();
    themeIconController.dispose();
    remindersIconController.dispose();
    resetStatisticsIconController.dispose();
  }
}
