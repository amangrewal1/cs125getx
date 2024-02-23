import 'package:css125_pro/core/app_export.dart';
import 'package:css125_pro/presentation/iphone_se_four_screen/models/iphone_se_four_model.dart';

/// A controller class for the IphoneSeFourScreen.
///
/// This class manages the state of the IphoneSeFourScreen, including the
/// current iphoneSeFourModelObj
class IphoneSeFourController extends GetxController {
  Rx<IphoneSeFourModel> iphoneSeFourModelObj = IphoneSeFourModel().obs;
}
