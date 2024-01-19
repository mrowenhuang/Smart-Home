import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UpdateLampController extends GetxController {
  //TODO: Implement UpdateLampController

  late TextEditingController nameCont;
  late TextEditingController lampId;

  @override
  void onInit() {
    nameCont = TextEditingController();
    lampId = TextEditingController();
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    nameCont.dispose();
    lampId.dispose();
  }
}
