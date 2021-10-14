import 'package:counter/controllers/firebase_controllers.dart';
import 'package:counter/main.dart';
import 'package:counter/services/helper.dart';
import 'package:counter/ui/login_screen.dart';
import 'package:counter/ui/verify.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';



class SignupScreen extends GetWidget<FirebaseController> {
  var _obscureTextPassword = true.obs;
  var dateOfBirth = "Date of birth".obs;
  final GlobalKey<FormState> _key = new GlobalKey();
  AutovalidateMode _validate = AutovalidateMode.disabled;
  final TextEditingController _nameController = new TextEditingController();
  final TextEditingController _emailController = new TextEditingController();
  final TextEditingController _passwordController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Expanded(
              flex: 6,
              child: Stack(
                children: [
                  Positioned(
                    left: 50,
                    top: 100,
                    child: Image.asset("assets/logo.png"),
                  ),
                  Positioned(
                    left: 130,
                    top: 50,
                    child: Image.asset("assets/heart.png"),
                  ),
                  Positioned(
                    left: 30,
                    top: 250,
                    child: Text(
                      "Sign up",
                      style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 8,
              child: ListView(
                children: [
                  Form(
                    key: _key,
                    autovalidateMode: _validate,
                    child: Column(
                      children: [
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(24.0, 0, 24, 24),
                            child: TextFormField(
                              controller: _nameController,
                              validator: validateName,
                              decoration: InputDecoration(
                                hintText: 'Name',
                                hintStyle: TextStyle(fontSize: 16),
                                fillColor: Color(0xffFCF0F0),
                                filled: true,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: BorderSide(
                                    width: 0,
                                    style: BorderStyle.none,
                                  ),
                                ),
                                contentPadding: EdgeInsets.all(16),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(24.0, 0, 24, 24),
                            child: TextFormField(
                              controller: _emailController,
                              validator: validateEmail,
                              decoration: InputDecoration(
                                hintText: 'Email',
                                hintStyle: TextStyle(fontSize: 16),
                                fillColor: Color(0xffFCF0F0),
                                filled: true,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: BorderSide(
                                    width: 0,
                                    style: BorderStyle.none,
                                  ),
                                ),
                                contentPadding: EdgeInsets.all(16),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(24, 0, 24, 24),
                            child: TextFormField(
                              controller: _passwordController,
                             obscureText: true,
                             // validator: validatePassword,
                              decoration: InputDecoration(
                                hintText: 'Password',
                                hintStyle: TextStyle(fontSize: 16),
                                fillColor: Color(0xffFCF0F0),
                                filled: true,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: BorderSide(
                                    width: 0,
                                    style: BorderStyle.none,
                                  ),
                                ),
                                contentPadding: EdgeInsets.all(16),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.fromLTRB(24.0, 0, 24, 24),
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text(
                          "Date of birth",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ),
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: const Color(0xffFCF0F0),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      _signUp();
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: Container(
                        child: Center(
                          child: Text(
                            "Continue",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: const Color(0xfffd6378),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                   //   print(controller.)
                      Get.offAll(VerificationScreen());
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: double.infinity,
                        child: Center(
                          child: Text("Already have account? Login now"),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  _register() {
    controller.signUp(
        _nameController.text,
        _emailController.text,
        _passwordController.text);

  }

  /// use for validation
  _signUp() async {
    if (_key.currentState?.validate() ?? false) {
      _key.currentState!.save();
      await _register();
    } else {
      print(_validate);
      _validate = AutovalidateMode.onUserInteraction;
    }
  }

  void _toggleLogin() {
    _obscureTextPassword.value = !_obscureTextPassword.value;
  }
}

