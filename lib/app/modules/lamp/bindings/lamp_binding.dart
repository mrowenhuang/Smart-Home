import 'package:get/get.dart';

import 'package:smart_home_p1/app/modules/lamp/controllers/lamp_controller.dart';


class LampBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LampController>(
      () => LampController(),
    );

  }
}
