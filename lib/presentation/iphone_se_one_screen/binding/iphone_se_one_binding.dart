import '../controller/iphone_se_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the IphoneSeOneScreen.
///
/// This class ensures that the IphoneSeOneController is created when the
/// IphoneSeOneScreen is first loaded.
class IphoneSeOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => IphoneSeOneController());
  }
}
