import 'package:get/get.dart';

import '../controllers/update_lamp_controller.dart';

class UpdateLampBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<UpdateLampController>(
      () => UpdateLampController(),
    );
  }
}
