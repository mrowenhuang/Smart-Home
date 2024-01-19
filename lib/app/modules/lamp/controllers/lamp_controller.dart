import 'package:get/get.dart';
import 'package:smart_home_p1/app/modules/lamp/lamps_model.dart';

class LampController extends GetxController {
  //TODO: Implement LampController

  var lampItems = List<Lamps>.empty().obs;


  void addLamp(String name, String id) {
    lampItems.add(
      Lamps(
        name: name,
        status: false,
        id: id,
      ),
    );
    lampItems.refresh();
  }

  void changeStatus(String id) {
    var data = findById(id);

    data.status = !data.status;

    lampItems.refresh();
  }

  void deleteLapm(String id) {
    lampItems.removeWhere((element) => element.id == id);
    lampItems.refresh();
  }

  void updateLamp(String id, String name) {
    var lampData = findById(id);

    lampData.name = name;
    lampData.id = id;

    lampItems.refresh();
  }

  Lamps findById(String id) {
    var lampData = lampItems.firstWhere((element) => element.id == id);
    return lampData;
  }

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
