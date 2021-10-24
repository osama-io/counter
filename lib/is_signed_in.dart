import 'package:counter/ui/bottom_nav_bar.dart';
import 'package:counter/ui/login_screen.dart';

import 'package:get/get.dart';
import 'package:flutter/material.dart';

import 'controllers/firebase_controllers.dart';

class IsSignedIn extends GetWidget<FirebaseController> {
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Get.find<FirebaseController>().userEmail != null
          ? BottomNav()
          : LoginScreen();
    });
  }
}
