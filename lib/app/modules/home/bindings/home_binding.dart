import 'package:get/get.dart';

import 'package:smart_home_p1/app/modules/home/controllers/views_controller.dart';

import 'package:smart_home_p1/app/modules/lamp/controllers/lamp_controller.dart';

import '../controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ViewsController>(
      () => ViewsController(),
    );

    Get.lazyPut<HomeController>(
      () => HomeController(),
    );

    Get.lazyPut<LampController>(
      () => LampController(),
    );
  }
}
