import 'package:get/get.dart';
import '../presentation/iphone_se_three_screen/iphone_se_three_screen.dart';
import '../presentation/iphone_se_three_screen/binding/iphone_se_three_binding.dart';
import '../presentation/iphone_se_two_screen/iphone_se_two_screen.dart';
import '../presentation/iphone_se_two_screen/binding/iphone_se_two_binding.dart';
import '../presentation/iphone_se_one_screen/iphone_se_one_screen.dart';
import '../presentation/iphone_se_one_screen/binding/iphone_se_one_binding.dart';
import '../presentation/iphone_se_four_screen/iphone_se_four_screen.dart';
import '../presentation/iphone_se_four_screen/binding/iphone_se_four_binding.dart';
import '../presentation/iphone_se_five_screen/iphone_se_five_screen.dart';
import '../presentation/iphone_se_five_screen/binding/iphone_se_five_binding.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';
import '../presentation/app_navigation_screen/binding/app_navigation_binding.dart';

class AppRoutes {
  static const String iphoneSeThreeScreen = '/iphone_se_three_screen';

  static const String iphoneSeTwoScreen = '/iphone_se_two_screen';

  static const String iphoneSeOneScreen = '/iphone_se_one_screen';

  static const String iphoneSeFourScreen = '/iphone_se_four_screen';

  static const String iphoneSeFiveScreen = '/iphone_se_five_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: iphoneSeThreeScreen,
      page: () => IphoneSeThreeScreen(),
      bindings: [
        IphoneSeThreeBinding(),
      ],
    ),
    GetPage(
      name: iphoneSeTwoScreen,
      page: () => IphoneSeTwoScreen(),
      bindings: [
        IphoneSeTwoBinding(),
      ],
    ),
    GetPage(
      name: iphoneSeOneScreen,
      page: () => IphoneSeOneScreen(),
      bindings: [
        IphoneSeOneBinding(),
      ],
    ),
    GetPage(
      name: iphoneSeFourScreen,
      page: () => IphoneSeFourScreen(),
      bindings: [
        IphoneSeFourBinding(),
      ],
    ),
    GetPage(
      name: iphoneSeFiveScreen,
      page: () => IphoneSeFiveScreen(),
      bindings: [
        IphoneSeFiveBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => IphoneSeThreeScreen(),
      bindings: [
        IphoneSeThreeBinding(),
      ],
    )
  ];
}
