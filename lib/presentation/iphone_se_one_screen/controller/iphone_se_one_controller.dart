import 'package:css125_pro/core/app_export.dart';
import 'package:css125_pro/presentation/iphone_se_one_screen/models/iphone_se_one_model.dart';

/// A controller class for the IphoneSeOneScreen.
///
/// This class manages the state of the IphoneSeOneScreen, including the
/// current iphoneSeOneModelObj
class IphoneSeOneController extends GetxController {
  Rx<IphoneSeOneModel> iphoneSeOneModelObj = IphoneSeOneModel().obs;
}
