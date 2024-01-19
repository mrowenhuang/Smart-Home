import 'package:get/get.dart';
import 'package:smart_home_p1/app/modules/home/views/home_control_view.dart';
import 'package:smart_home_p1/app/modules/lamp/views/lamp_view.dart';
import 'package:smart_home_p1/app/modules/room/views/room_view.dart';

class ViewsController extends GetxController {
  //TODO: Implement ViewsController

  var views = [
    const HomeControlView(),
    const LampView(),
    const RoomView(),
  ];

  var activeViews = 0.obs;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
