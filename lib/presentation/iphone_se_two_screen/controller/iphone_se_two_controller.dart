import 'package:css125_pro/core/app_export.dart';
import 'package:css125_pro/presentation/iphone_se_two_screen/models/iphone_se_two_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the IphoneSeTwoScreen.
///
/// This class manages the state of the IphoneSeTwoScreen, including the
/// current iphoneSeTwoModelObj
class IphoneSeTwoController extends GetxController {
  TextEditingController agevalueController = TextEditingController();

  TextEditingController heightvalueController = TextEditingController();

  Rx<IphoneSeTwoModel> iphoneSeTwoModelObj = IphoneSeTwoModel().obs;

  @override
  void onClose() {
    super.onClose();
    agevalueController.dispose();
    heightvalueController.dispose();
  }
}
