 
import 'package:get/get.dart';

import 'DataSave.dart';
import 'DebugActivity.dart';

class AppPage {
  static final routes = [
    GetPage(name: "/", page: () => const DataSave_preferences()),
    GetPage(
      name: "/test",
      page: () => const DataSave_preferences(),
      // middlewares: const [] // 中间件
    ),
    GetPage(
        name: "/new",
        page: () => const DebugActivity(),
        transition: Transition.leftToRightWithFade),
  ];
}