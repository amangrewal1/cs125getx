import '../controller/iphone_se_two_controller.dart';
import 'package:get/get.dart';

/// A binding class for the IphoneSeTwoScreen.
///
/// This class ensures that the IphoneSeTwoController is created when the
/// IphoneSeTwoScreen is first loaded.
class IphoneSeTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => IphoneSeTwoController());
  }
}
