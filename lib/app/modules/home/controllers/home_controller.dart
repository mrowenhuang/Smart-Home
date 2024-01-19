import 'package:get/get.dart';
import 'package:smart_home_p1/app/modules/home/items_model.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  var smartItems = [
    Items(
      icon: "assets/icons/air-conditioner.png",
      name: "Air Conditioner",
      status: false,
      number: 18,
      param: '\u2103',
    ),
    Items(
      icon: "assets/icons/temperature.png",
      name: "Temperature",
      status: false,
      number: 28,
      param: '\u2103',
    ),
    Items(
      icon: "assets/icons/vacuum-cleaner.png",
      name: "Vacuum Cleaner",
      status: false,
      number: 2,
      param: 'Speed',
    ),
    Items(
      icon: "assets/icons/smart-tv.png",
      name: "Smart Tv",
      status: false,
      number: 8,
      param: 'CH',
    ),
  ].obs;

  var selectedItems = List<Items>.empty().obs;

  var activeItems = "".obs;

  var activenumber = 0.obs;

  void changeStatus(String name) {
    var data = smartItems.firstWhere((element) => element.name == name);
    data.status = !data.status;
    selectedItems.add(data);

    selectedItems.refresh();
    smartItems.refresh();
  }

  void deleteData(String name) {
    var data = smartItems.firstWhere((element) => element.name == name);
    data.status = !data.status;
    selectedItems.removeWhere((element) => element.name == name);

    selectedItems.refresh();
    smartItems.refresh();
  }

  void getActiveData(String name) {
    var data = selectedItems.firstWhere((element) => element.name == name);

    activenumber.value = data.number;
  }

  void increment () {
    activenumber.value++;
  }

  void decrement () {
    activenumber.value--;

    if (activeItems.value == 'Air Conditioner') {
      
    }


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
