import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/room_controller.dart';

class RoomView extends GetView<RoomController> {
  const RoomView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "assets/room_background.jpeg",
            fit: BoxFit.fitHeight,
            height: Get.height,
            color: Colors.black12,
            colorBlendMode: BlendMode.darken,
          ),
          ListView.builder(
            itemCount: 3,
            itemBuilder: (BuildContext context, int index) {
              return Align(
                alignment: Alignment.centerRight,
                child: Container(
                  margin: EdgeInsets.all(10),
                  height: 100,
                  width: 100,
                  color: Colors.red,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
