import '../controller/iphone_se_four_controller.dart';
import 'package:get/get.dart';

/// A binding class for the IphoneSeFourScreen.
///
/// This class ensures that the IphoneSeFourController is created when the
/// IphoneSeFourScreen is first loaded.
class IphoneSeFourBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => IphoneSeFourController());
  }
}
