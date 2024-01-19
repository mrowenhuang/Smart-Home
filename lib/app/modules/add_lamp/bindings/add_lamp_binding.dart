import 'package:get/get.dart';

import '../controllers/add_lamp_controller.dart';

class AddLampBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AddLampController>(
      () => AddLampController(),
    );
  }
}
