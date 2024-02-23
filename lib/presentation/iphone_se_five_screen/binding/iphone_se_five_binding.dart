import '../controller/iphone_se_five_controller.dart';
import 'package:get/get.dart';

/// A binding class for the IphoneSeFiveScreen.
///
/// This class ensures that the IphoneSeFiveController is created when the
/// IphoneSeFiveScreen is first loaded.
class IphoneSeFiveBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => IphoneSeFiveController());
  }
}
