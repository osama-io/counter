import 'package:counter/controllers/firebase_controllers.dart';
import 'package:counter/main.dart';
import 'package:counter/services/helper.dart';
import 'package:counter/ui/sign_up_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends GetWidget<FirebaseController> {
  final GlobalKey<FormState> _key = new GlobalKey();
  final AutovalidateMode _validate = AutovalidateMode.disabled;
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();

  var _obscureTextPassword = true.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Expanded(
              flex: 5,
              child: Stack(
                children: [
                  Positioned(
                    left: 50,
                    top: 100,
                    child: Image.asset("assets/logo.png"),
                  ),
                  Positioned(
                    left: 130,
                    top: 80,
                    child: Image.asset("assets/heart.png"),
                  ),
                  Positioned(
                    left: 30,
                    top: 250,
                    child: Text(
                      "Login",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 6,
              child: ListView(
                children: [
                  Form(
                    key: _key,
                    autovalidateMode: _validate,
                    child: Column(
                      children: [
                        /// Email
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(24.0, 0, 24, 24),
                            child: TextFormField(
                              validator: validateEmail,
                              // onSaved: (val) => email = val!,
                              controller: _emailController,
                              onFieldSubmitted: (_) =>
                                  FocusScope.of(context).nextFocus(),
                              decoration: InputDecoration(
                                hintText: 'Enter your Email',
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

                        ///password
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(24, 0, 24, 24),
                            child: TextFormField(
                              controller: _passwordController,
                              obscureText: true,
                              validator: validatePassword,
                              decoration: InputDecoration(
                                hintText: 'Enter your Password',
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
                  /// continue button
                  Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: GestureDetector(
                      onTap: (){
                        signin();
                      },
                      child: Container(
                        child: Center(
                          child: Text(
                            "Continue",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
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
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                                colors: <Color>[
                                  Colors.white10,
                                  Colors.black,
                                ],
                                begin: FractionalOffset(0.0, 0.0),
                                end: FractionalOffset(1.0, 1.0),
                                stops: <double>[0.0, 1.0],
                                tileMode: TileMode.clamp),
                          ),
                          width: 100.0,
                          height: 1.0,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 15.0, right: 15.0),
                          child: Text(
                            'Or',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 16.0,
                                fontFamily: 'WorkSansMedium'),
                          ),
                        ),
                        Container(
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                                colors: <Color>[
                                  Colors.black,
                                  Colors.black12,
                                ],
                                begin: FractionalOffset(0.0, 0.0),
                                end: FractionalOffset(1.0, 1.0),
                                stops: <double>[0.0, 1.0],
                                tileMode: TileMode.clamp),
                          ),
                          width: 100.0,
                          height: 1.0,
                        ),
                      ],
                    ),
                  ),
                  ///row for social buttons
                  Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Row(
                      children: [
                        /// google
                        Expanded(
                          child: GestureDetector(
                            onTap: (){
                              controller.google_signIn();
                            },
                            child: Container(
                              child: Center(
                                child: Image.asset("assets/google.png"),
                              ),
                              height: 50,
                              width: 70,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                border: Border.all(
                                    width: 0.5, color: const Color(0xffff3d00)),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Container(
                            child: Center(
                              child: Image.asset("assets/fb.png"),
                            ),
                            height: 50,
                            width: 70,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              border: Border.all(
                                width: 0.5,
                                color: const Color(0xff1976D2),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      Get.offAll(SignupScreen());
                    },
                    child: Container(
                      width: double.infinity,
                      child: Center(
                        child: Text("New here? Signup"),
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
  void signin() {
    controller.login(_emailController.text, _passwordController.text);
  }
}
