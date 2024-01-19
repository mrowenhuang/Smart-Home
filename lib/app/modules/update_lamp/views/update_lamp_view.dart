import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

import 'package:get/get.dart';
import 'package:smart_home_p1/app/modules/lamp/controllers/lamp_controller.dart';
import 'package:smart_home_p1/const.dart';

import '../controllers/update_lamp_controller.dart';

class UpdateLampView extends GetView<UpdateLampController> {
  const UpdateLampView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var lampCont = Get.find<LampController>();
    var getArgu = Get.arguments;
    var getDataById = lampCont.findById(getArgu.toString());
    controller.nameCont.text = getDataById.name;
    controller.lampId.text = getDataById.id;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    height: 70,
                    width: 300,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black38,
                          blurRadius: 55,
                          spreadRadius: -10,
                        )
                      ],
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Material(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(50),
                      child: Row(
                        children: [
                          const SizedBox(width: 12),
                          IconButton(
                            onPressed: () {
                              Get.back();
                            },
                            icon: const Icon(
                              FeatherIcons.chevronLeft,
                              size: 30,
                            ),
                          ),
                          const SizedBox(width: 10),
                          Text(
                            'Update Your Light Bulb',
                            style: smallTextThinp1.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Image.asset(
                  "assets/icons/lightbulb.png",
                  height: 200,
                  color: color4,
                ),
                const SizedBox(height: 10),
                Text(
                  "A lamp is a silent storyteller, painting warmth and memories in the canvas of your room",
                  style: smallText,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 10),
                SizedBox(
                  height: 160,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TextField(
                        controller: controller.nameCont,
                        cursorColor: color1,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: BorderSide(color: color1),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: BorderSide(color: color1),
                          ),
                          prefixIcon: const Icon(
                            Icons.light,
                            size: 30,
                            color: color1,
                          ),
                          label: const Text('Room Name'),
                          labelStyle: TextStyle(color: Colors.black54),
                          hintText: 'ex: Bed Room',
                        ),
                      ),
                      const SizedBox(height: 10),
                      TextField(
                        controller: controller.lampId,
                        cursorColor: color1,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: BorderSide(color: color1),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: BorderSide(color: color1),
                          ),
                          prefixIcon: const Icon(
                            FeatherIcons.hash,
                            size: 30,
                            color: color1,
                          ),
                          label: const Text('Lamp Id'),
                          labelStyle: TextStyle(color: Colors.black54),
                          hintText: 'ex: Lp12345',
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                // Spacer(),
                Container(
                  height: 60,
                  width: 250,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black45,
                        blurRadius: 55,
                        spreadRadius: -10,
                      ),
                    ],
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Material(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(50),
                    child: InkWell(
                      onTap: () {
                        lampCont.updateLamp(
                          controller.lampId.text,
                          controller.nameCont.text,
                        );
                        Get.back();
                      },
                      borderRadius: BorderRadius.circular(50),
                      splashColor: color2,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            FeatherIcons.plus,
                            size: 30,
                          ),
                          const SizedBox(width: 10),
                          Text(
                            'Update Light Bulb',
                            style: smallTextThinp1.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
