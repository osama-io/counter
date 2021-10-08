import 'package:counter/controllers/firebase_controllers.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

class HomeScreen extends GetWidget<FirebaseController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 400.0),
              child: MaterialButton(
                color: Colors.red,
                child: Text("logout"),
                height: 30,
                minWidth: 12,
                onPressed: (){
                  controller.signOut();
                  controller.google_signOut();

                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
