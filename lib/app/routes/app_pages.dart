import 'package:get/get.dart';

import '../modules/add_lamp/bindings/add_lamp_binding.dart';
import '../modules/add_lamp/views/add_lamp_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/lamp/bindings/lamp_binding.dart';
import '../modules/lamp/views/lamp_view.dart';
import '../modules/room/bindings/room_binding.dart';
import '../modules/room/views/room_view.dart';
import '../modules/update_lamp/bindings/update_lamp_binding.dart';
import '../modules/update_lamp/views/update_lamp_view.dart';
import '../modules/welcome/bindings/welcome_binding.dart';
import '../modules/welcome/views/welcome_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.WELCOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.WELCOME,
      page: () => const WelcomeView(),
      binding: WelcomeBinding(),
    ),
    GetPage(
      name: _Paths.LAMP,
      page: () => const LampView(),
      binding: LampBinding(),
    ),
    GetPage(
      name: _Paths.ROOM,
      page: () => const RoomView(),
      binding: RoomBinding(),
    ),
    GetPage(
      name: _Paths.ADD_LAMP,
      page: () => const AddLampView(),
      binding: AddLampBinding(),
    ),
    GetPage(
      name: _Paths.UPDATE_LAMP,
      page: () => const UpdateLampView(),
      binding: UpdateLampBinding(),
    ),
  ];
}
