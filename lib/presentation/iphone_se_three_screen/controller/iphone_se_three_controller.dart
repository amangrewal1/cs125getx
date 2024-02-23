import 'package:css125_pro/core/app_export.dart';
import 'package:css125_pro/presentation/iphone_se_three_screen/models/iphone_se_three_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the IphoneSeThreeScreen.
///
/// This class manages the state of the IphoneSeThreeScreen, including the
/// current iphoneSeThreeModelObj
class IphoneSeThreeController extends GetxController {
  TextEditingController caloriesController = TextEditingController();

  TextEditingController weightSectionController = TextEditingController();

  Rx<IphoneSeThreeModel> iphoneSeThreeModelObj = IphoneSeThreeModel().obs;

  @override
  void onClose() {
    super.onClose();
    caloriesController.dispose();
    weightSectionController.dispose();
  }
}
