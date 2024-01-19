import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:smart_home_p1/app/routes/app_pages.dart';
import 'package:smart_home_p1/const.dart';

import '../controllers/welcome_controller.dart';

class WelcomeView extends GetView<WelcomeController> {
  const WelcomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          Image.asset(
            "assets/welcome_image.jpeg",
            height: Get.height,
            fit: BoxFit.cover,
          ),
          Positioned(
            top: 70,
            left: 10,
            child: Text(
              "Smart",
              style: bigText,
            ),
          ),
          Positioned(
            top: 120,
            left: 100,
            child: Text(
              "Home",
              style: bigText,
            ),
          ),
          const Positioned(
            top: 50,
            right: 15,
            child: CircleAvatar(
              backgroundImage: AssetImage("assets/owen_huang_logo.png"),
              maxRadius: 30,
            ),
          ),
          Positioned(
            top: Get.height / 2,
            left: Get.width / 8,
            right: Get.width / 8,
            child: Text(
              "Smart home, where your touch brings everything to life.",
              style: smallTextThinp1,
              textAlign: TextAlign.center,
            ),
          ),
          Positioned(
            bottom: Get.height / 5,
            left: Get.width / 5,
            right: Get.width / 5,
            child: Container(
              height: 65,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(50),
              ),
              child: Material(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(50),
                child: InkWell(
                  onTap: () {
                    Get.offNamed(Routes.HOME);
                  },
                  borderRadius: BorderRadius.circular(50),
                  splashColor: color3,
                  child: Center(
                    child: Text(
                      "Go Smart",
                      style: smallTextBold,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: -50,
            left: -50,
            child: CircleAvatar(
              backgroundColor: Colors.transparent,
              backgroundImage: AssetImage("assets/dot_background.png"),
              maxRadius: 100,
            ),
          )
        ],
      ),
    );
  }
}
