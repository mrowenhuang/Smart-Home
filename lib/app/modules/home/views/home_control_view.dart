import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

import 'package:get/get.dart';
import 'package:smart_home_p1/app/modules/home/controllers/home_controller.dart';
import 'package:smart_home_p1/app/routes/app_pages.dart';
import 'package:smart_home_p1/const.dart';

class HomeControlView extends GetView<HomeController> {
  const HomeControlView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        height: Get.height,
        width: Get.width,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Have a nice day",
                      style: smallText,
                    ),
                    Text(
                      "Home Control",
                      style: mediumTextSemiBold,
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: () {
                    Get.toNamed(Routes.LAMP);
                  },
                  child: const CircleAvatar(
                    backgroundImage: AssetImage('assets/owen_huang_logo.png'),
                    maxRadius: 30,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Obx(
              () => SizedBox(
                width: Get.width,
                height: Get.height / 2.1,
                child: GridView.builder(
                  gridDelegate:
                      const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  itemCount: controller.smartItems.length,
                  itemBuilder: (context, index) {
                    var itemsData = controller.smartItems[index];
                    return Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 15,
                        horizontal: 20,
                      ),
                      decoration: BoxDecoration(
                        color: itemsData.status
                            ? color2
                            : color2.withOpacity(.2),
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(color: color2),
                        boxShadow: [
                          itemsData.status
                              ? const BoxShadow(
                                  color: color2,
                                  blurRadius: 15,
                                  offset: Offset(3, 3),
                                )
                              : const BoxShadow(
                                  blurRadius: 0,
                                  color: Colors.transparent,
                                )
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    itemsData.status ? "ON" : "OFF",
                                    style: smallTextBold.copyWith(
                                      color: itemsData.status
                                          ? Colors.white
                                          : Colors.blue,
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  Image.asset(
                                    itemsData.icon,
                                    height: 60,
                                    color: itemsData.status
                                        ? Colors.white
                                        : color1,
                                  )
                                ],
                              ),
                              RotatedBox(
                                quarterTurns: -1,
                                child: CupertinoSwitch(
                                  value: itemsData.status,
                                  onChanged: (value) {
                                    if (value) {
                                      controller.changeStatus(itemsData.name);
                                    } else {
                                      controller.deleteData(itemsData.name);
                                    }
                                  },
                                  thumbColor: itemsData.status
                                      ? color1
                                      : Colors.white,
                                  trackColor: color3,
                                  activeColor: color3,
                                ),
                              ),
                            ],
                          ),
                          const Spacer(),
                          Text(
                            itemsData.name,
                            style: smallTextThinp1.copyWith(fontSize: 14),
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),

            SizedBox(
              width: Get.width,
              height: Get.height / 3,
              child: Column(
                children: [
                  Obx(
                    () => DropdownButton(
                      items: controller.selectedItems
                          .map(
                            (element) => DropdownMenuItem(
                              value: element.name,
                              child: Text(element.name),
                            ),
                          )
                          .toList(),
                      value: controller.activeItems.toString() == ''
                          ? null
                          : controller.activeItems.toString(),
                      hint: const Text("Need Turn On"),
                      onChanged: (value) {
                        controller.activeItems.value = value.toString();

                        controller.getActiveData(value.toString());
                      },
                    ),
                  ),
                  SizedBox(
                    height: Get.height / 4,
                    child: Row(
                      children: [
                        Flexible(
                          flex: 1,
                          child: Container(
                            height: Get.height,
                            width: Get.width,
                            decoration: BoxDecoration(
                              color: textColor,
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Material(
                              color: Colors.transparent,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      FeatherIcons.chevronUp,
                                      size: 30,
                                      color: color1,
                                    ),
                                    splashColor: color3,
                                  ),
                                  IconButton(
                                    onPressed: () {
                                      controller.increment();
                                    },
                                    icon: const Icon(
                                      FeatherIcons.plus,
                                      size: 30,
                                    ),
                                    splashColor: color3,
                                  ),
                                  IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      FeatherIcons.chevronDown,
                                      size: 30,
                                      color: color1,
                                    ),
                                    splashColor: color3,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Flexible(
                          flex: 3,
                          child: Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                              border: Border.all(
                                width: 10,
                                color: textColor,
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.shade400,
                                  blurRadius: 15,
                                )
                              ],
                            ),
                            alignment: Alignment.center,
                            child: Obx(
                              () => Text(
                                controller.activenumber.toString(),
                                style: bigText,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                            color: textColor,
                            // shape: BoxShape.circle,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Material(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(50),
                            child: InkWell(
                              splashColor: color3,
                              borderRadius: BorderRadius.circular(50),
                              onTap: () {
                                controller.decrement();
                              },
                              child: const Icon(
                                FeatherIcons.minus,
                                size: 30,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )

            // Positioned(child: )
          ],
        ),
      ),
    );
  }
}
