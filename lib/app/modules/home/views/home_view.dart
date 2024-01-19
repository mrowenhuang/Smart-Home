import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:smart_home_p1/app/modules/home/controllers/views_controller.dart';
import 'package:smart_home_p1/const.dart';

class HomeView extends GetView<ViewsController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        backgroundColor: Colors.white,
        body: AnimatedSwitcher(
          duration: Duration(milliseconds: 400),
          transitionBuilder: (child, animation) {
            return ScaleTransition(
              scale: animation,
              child: child,
            );
          },
          key: ValueKey(7),
          child: controller.views[controller.activeViews.value],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: Container(
          width: Get.width * .7,
          height: 60,
          decoration: BoxDecoration(
              color: color2,
              borderRadius: BorderRadius.circular(50),
              boxShadow: const [
                BoxShadow(
                  blurRadius: 50,
                  color: Colors.black38,
                  spreadRadius: -10,
                  offset: Offset(0, 30)
                )
              ]),
          child: NavigationBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            destinations: [
              AnimatedSwitcher(
                duration: Duration(milliseconds: 400),
                transitionBuilder: (child, animation) {
                  return ScaleTransition(
                    scale: animation,
                    child: child,
                  );
                },
                child: controller.activeViews.value == 0
                    ? Container(
                        key: ValueKey(1),
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: controller.activeViews.value == 0
                              ? Colors.white
                              : Colors.transparent,
                          shape: BoxShape.circle,
                        ),
                        child: IconButton(
                          onPressed: () {
                            controller.activeViews.value = 0;
                          },
                          icon: Image.asset(
                            'assets/icons/home.png',
                            color: controller.activeViews.value == 0
                                ? color1
                                : Colors.white,
                            height: 28,
                          ),
                        ),
                      )
                    : IconButton(
                        key: ValueKey(2),
                        onPressed: () {
                          controller.activeViews.value = 0;
                        },
                        icon: Image.asset(
                          "assets/icons/home.png",
                          color: Colors.white,
                          height: 28,
                        ),
                      ),
              ),
              AnimatedSwitcher(
                duration: Duration(milliseconds: 400),
                transitionBuilder: (child, animation) {
                  return ScaleTransition(
                    scale: animation,
                    child: child,
                  );
                },
                child: controller.activeViews.value == 1
                    ? Container(
                        key: ValueKey(3),
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: controller.activeViews.value == 1
                              ? Colors.white
                              : Colors.transparent,
                          shape: BoxShape.circle,
                        ),
                        child: IconButton(
                          onPressed: () {
                            controller.activeViews.value = 1;
                          },
                          icon: Image.asset(
                            'assets/icons/floor-lamp.png',
                            color: controller.activeViews.value == 1
                                ? color1
                                : Colors.white,
                            height: 28,
                          ),
                        ),
                      )
                    : IconButton(
                        key: ValueKey(4),
                        onPressed: () {
                          controller.activeViews.value = 1;
                        },
                        icon: Image.asset(
                          "assets/icons/floor-lamp.png",
                          color: Colors.white,
                          height: 28,
                        ),
                      ),
              ),
              AnimatedSwitcher(
                duration: Duration(milliseconds: 400),
                transitionBuilder: (child, animation) {
                  return ScaleTransition(
                    scale: animation,
                    child: child,
                  );
                },
                child: controller.activeViews.value == 2
                    ? Container(
                        key: ValueKey(5),
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: controller.activeViews.value == 2
                              ? Colors.white
                              : Colors.transparent,
                          shape: BoxShape.circle,
                        ),
                        child: IconButton(
                          onPressed: () {
                            controller.activeViews.value = 2;
                          },
                          icon: Image.asset(
                            'assets/icons/bed.png',
                            color: controller.activeViews.value == 2
                                ? color1
                                : Colors.white,
                            height: 28,
                          ),
                        ),
                      )
                    : IconButton(
                        key: ValueKey(6),
                        onPressed: () {
                          controller.activeViews.value = 2;
                        },
                        icon: Image.asset(
                          "assets/icons/bed.png",
                          color: Colors.white,
                          height: 28,
                        ),
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
