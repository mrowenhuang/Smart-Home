import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

import 'package:get/get.dart';

import 'package:smart_home_p1/app/modules/lamp/controllers/lamp_controller.dart';
import 'package:smart_home_p1/app/routes/app_pages.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import 'package:smart_home_p1/const.dart';

class LampView extends GetView<LampController> {
  const LampView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: Get.width,
            height: Get.height,
            child: Image.asset(
              "assets/lamp_background.jpeg",
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 15,
            left: 20,
            child: Text(
              "Light",
              style: bigText,
            ),
          ),
          Positioned(
            top: 65,
            left: 100,
            child: Text(
              "Control",
              style: bigText.copyWith(color: Colors.white),
            ),
          ),
          Positioned(
            right: 20,
            top: 15,
            child: Container(
              width: 150,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(50),
              ),
              child: Material(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(50),
                child: InkWell(
                  borderRadius: BorderRadius.circular(50),
                  onTap: () {
                    Get.toNamed(Routes.ADD_LAMP);
                  },
                  splashColor: color3,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        FeatherIcons.plus,
                        size: 26,
                        color: color1,
                      ),
                      Text(
                        "Add Lamp",
                        style: smallTextThinp1.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 150,
            left: 20,
            right: 20,
            child: Obx(
              () => ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: SizedBox(
                  height: Get.height/1.45,
                  width: Get.width,
                  child: ListView.builder(
                    itemCount: controller.lampItems.length,
                    physics: BouncingScrollPhysics(),
                    itemBuilder: (context, index) {
                      var lampItemsData = controller.lampItems[index];
                      return Slidable(
                        endActionPane: ActionPane(
                          motion: const BehindMotion(),
                          children: [
                            const SizedBox(width: 10),
                            Flexible(
                              flex: 1,
                              child: ElevatedButton(
                                onPressed: () {
                                  Get.toNamed(Routes.UPDATE_LAMP,arguments: lampItemsData.id);
                                },
                                style: ElevatedButton.styleFrom(
                                  fixedSize: Size(80, 80),
                                  backgroundColor: textColor,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                                child: const Icon(
                                  FeatherIcons.edit,
                                  color: color1,
                                ),
                              ),
                            ),
                            const SizedBox(width: 10),
                            Flexible(
                              flex: 1,
                              child: ElevatedButton(
                                onPressed: () {
                                  controller.deleteLapm(lampItemsData.id);
                                },
                                style: ElevatedButton.styleFrom(
                                  fixedSize: Size(80, 80),
                                  backgroundColor: Colors.red,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                                child: const Icon(
                                  Icons.delete,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                        child: Container(
                          margin: const EdgeInsets.only(bottom: 10),
                          padding: const EdgeInsets.symmetric(
                              vertical: 5, horizontal: 10),
                          height: 100,
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(
                              lampItemsData.status ? 1 : 0.5,
                            ),
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Colors.white),
                            boxShadow: const [
                              BoxShadow(
                                blurRadius: 40,
                                color: Colors.black26,
                                spreadRadius: -30,
                                offset: Offset(0, 50),
                              )
                            ],
                          ),
                          child: Row(
                            children: [
                              CircleAvatar(
                                backgroundColor: color1.withOpacity(
                                  lampItemsData.status ? 1 : 0.5,
                                ),
                                child: Text(
                                  "${index + 1}",
                                  style: smallTextBold.copyWith(
                                    color: Colors.white.withOpacity(
                                      lampItemsData.status ? 1 : 0.5,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 20),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    lampItemsData.status ? 'ON' : "OFF",
                                    style: smallTextBold.copyWith(
                                      color: Colors.blue.withOpacity(
                                        lampItemsData.status ? 1 : 0.5,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    lampItemsData.name,
                                    style: smallTextThinp1.copyWith(
                                      fontWeight: FontWeight.bold,
                                      color: color1.withOpacity(
                                        lampItemsData.status ? 1 : 0.5,
                                      ),
                                      fontSize: 22,
                                    ),
                                  ),
                                  Text(
                                    "#${lampItemsData.id}",
                                    style: smallTextThinp1.copyWith(
                                      fontSize: 12,
                                      color: color1.withOpacity(
                                        lampItemsData.status ? 1 : 0.5,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Spacer(),
                              CupertinoSwitch(
                                value: lampItemsData.status,
                                onChanged: (value) {
                                  controller.changeStatus(lampItemsData.id);
                                },
                                trackColor: color4,
                                activeColor: color4,
                                thumbColor: lampItemsData.status
                                    ? color1
                                    : Colors.white,
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
