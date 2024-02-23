import '../controller/iphone_se_three_controller.dart';
import 'package:get/get.dart';

/// A binding class for the IphoneSeThreeScreen.
///
/// This class ensures that the IphoneSeThreeController is created when the
/// IphoneSeThreeScreen is first loaded.
class IphoneSeThreeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => IphoneSeThreeController());
  }
}
