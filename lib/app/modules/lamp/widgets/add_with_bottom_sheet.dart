// import 'package:flutter/material.dart';
// import 'package:flutter_feather_icons/flutter_feather_icons.dart';
// import 'package:get/get.dart';
// import 'package:smart_home_p1/app/modules/lamp/controllers/lamp_controller.dart';
// import 'package:smart_home_p1/const.dart';

// class AddWithBottomSheet extends GetView<LampController> {
//   AddWithBottomSheet({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 150,
//       height: 50,
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(50),
//       ),
//       child: Material(
//         color: Colors.transparent,
//         borderRadius: BorderRadius.circular(50),
//         child: InkWell(
//           borderRadius: BorderRadius.circular(50),
//           onTap: () {
//             if (Get.isBottomSheetOpen! == false) {
//               print("succes");
//               Get.put(AddLampController());
//             } else {
//               print("wrong");
//             }

//             Get.bottomSheet(
//               enterBottomSheetDuration: const Duration(milliseconds: 500),
//               exitBottomSheetDuration: const Duration(milliseconds: 400),
//               enableDrag: true,
//               Container(
//                 padding:
//                     const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
//                 decoration: const BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.only(
//                     topLeft: Radius.circular(30),
//                     topRight: Radius.circular(30),
//                   ),
//                 ),
//                 child: SingleChildScrollView(
//                   child: Column(
//                     children: [
//                       Text(
//                         "Add Your Lamp",
//                         style: mediumTextSemiBold.copyWith(
//                           color: color1,
//                         ),
//                       ),
//                       Text(
//                         "A lamp is a silent storyteller, painting warmth and memories in the canvas of your room",
//                         style: smallText,
//                         textAlign: TextAlign.center,
//                       ),
//                       const SizedBox(height: 20),
//                       TextField(
//                         controller: Get.find<AddLampController>().nameCont,
//                         cursorColor: color1,
//                         style: smallTextThinp1,
//                         decoration: InputDecoration(
//                           focusedBorder: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(20)),
//                           enabledBorder: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(20)),
//                           fillColor: textColor,
//                           filled: true,
//                           hintText: "ex: Bed Room",
//                           label: const Text("Room Name"),
//                           labelStyle: const TextStyle(
//                             color: Colors.blueGrey,
//                           ),
//                         ),
//                       ),
//                       const SizedBox(height: 20),
//                       TextField(
//                         controller: Get.find<AddLampController>().lampId,
//                         cursorColor: color1,
//                         style: smallTextThinp1,
//                         decoration: InputDecoration(
//                           focusedBorder: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(20)),
//                           enabledBorder: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(20)),
//                           fillColor: textColor,
//                           filled: true,
//                           hintText: "ex: lp01232404",
//                           label: const Text("Lamp Id"),
//                           labelStyle: const TextStyle(
//                             color: Colors.blueGrey,
//                           ),
//                         ),
//                         onSubmitted: (value) {
//                           controller.addLamp(
//                             Get.find<AddLampController>().nameCont.text,
//                             Get.find<AddLampController>().lampId.text,
//                           );
//                           TextInputAction.done;
//                           Get.back();
//                         },
//                       ),
//                       const SizedBox(height: 30),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                         children: [
//                           Container(
//                             width: 150,
//                             height: 50,
//                             decoration: BoxDecoration(
//                               color: Colors.red,
//                               borderRadius: BorderRadius.circular(50),
//                             ),
//                             child: Material(
//                               color: Colors.transparent,
//                               borderRadius: BorderRadius.circular(50),
//                               child: InkWell(
//                                 borderRadius: BorderRadius.circular(50),
//                                 onTap: () {
//                                   controller.addLamp(
//                                     Get.find<AddLampController>().nameCont.text,
//                                     Get.find<AddLampController>().lampId.text,
//                                   );
//                                   controller.dispose();
//                                   Get.back();
//                                 },
//                                 splashColor: Colors.white,
//                                 child: Center(
//                                   child: Text(
//                                     "Cancel",
//                                     style: smallTextThinp1.copyWith(
//                                         color: Colors.white),
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ),
//                           Container(
//                             width: 150,
//                             height: 50,
//                             decoration: BoxDecoration(
//                               color: color1,
//                               borderRadius: BorderRadius.circular(50),
//                             ),
//                             child: Material(
//                               color: Colors.transparent,
//                               borderRadius: BorderRadius.circular(50),
//                               child: InkWell(
//                                 borderRadius: BorderRadius.circular(50),
//                                 onTap: () {
//                                   controller.addLamp(
//                                     Get.find<AddLampController>().nameCont.text,
//                                     Get.find<AddLampController>().lampId.text,
//                                   );
//                                   // controller.nameCont.dispose();
//                                   // controller.lampId.dispose();
//                                   Get.back();
//                                 },
//                                 splashColor: Colors.white,
//                                 child: Center(
//                                   child: Text(
//                                     "Submit",
//                                     style: smallTextThinp1.copyWith(
//                                       color: Colors.white,
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ],
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//             );
//           },
//           splashColor: color3,
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               const Icon(
//                 FeatherIcons.plus,
//                 size: 26,
//                 color: color1,
//               ),
//               Text(
//                 "Add Lamp",
//                 style: smallTextThinp1.copyWith(
//                   fontWeight: FontWeight.bold,
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
