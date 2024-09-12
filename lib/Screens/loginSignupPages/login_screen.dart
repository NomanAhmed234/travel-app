import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:travel_app/Screens/loginSignupPages/forget_password_screen.dart';
import 'package:travel_app/Screens/loginSignupPages/register_screen.dart';
import 'package:travel_app/utils/Colors/colors.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isEnabled = true; // To track if TextField is enabled
  bool _obscureText = true; // Controls if the password is hidden or visible
  @override
  void dispose() {
    ;
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'image/loginImage.jpg',
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.transparent, // Light color at the top
                  MyColor.green.withOpacity(1), // Dark color at the bottom
                ],
                stops: [0.1, 0.5],
              ),
            ),
          ),
          Positioned(
              top: 100,
              left: 20,
              child: Container(
                width: 300,
                height: 600,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Login",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: MyColor.lightGreen,
                          borderRadius: BorderRadius.circular(20),
                          // border: Border.all(
                          //   color: _isEnabled
                          //       ? MyColor.yellow
                          //       : Colors
                          //           .grey, // Change color based on enabled state
                          //   width: 1.0,
                          // ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: TextField(
                            enabled:
                                _isEnabled, // Control if the TextField is enabled or disabled
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              hintStyle: TextStyle(
                                  color: Colors.white.withOpacity(0.2)),
                              labelText: "Email",
                              labelStyle: TextStyle(
                                color: _isEnabled
                                    ? MyColor.yellow
                                    : Colors
                                        .grey, // Label color based on enabled state
                              ),
                              prefixIcon: Icon(Icons.person),
                              prefixIconColor: _isEnabled
                                  ? MyColor.yellow
                                  : Colors
                                      .grey, // Icon color based on enabled state
                              hintText: "noman@gmail.com",
                              border: InputBorder
                                  .none, // No border on the TextField itself
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: MyColor.lightGreen, // Add background color
                          borderRadius:
                              BorderRadius.circular(20), // Rounded corners
                          // border: Border.all(
                          //   color: _isEnabled
                          //       ? MyColor.yellow
                          //       : Colors
                          //           .grey, // Change color based on enabled state
                          //   width: 1.0,
                          // )
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: TextField(
                            keyboardType: TextInputType.visiblePassword,
                            decoration: InputDecoration(
                              hintStyle: TextStyle(
                                  color: Colors.white.withOpacity(0.2)),
                              label: Text("Password"),
                              labelStyle: TextStyle(color: MyColor.yellow),
                              prefixIcon: Icon(Icons.lock),
                              suffixIcon: IconButton(
                                icon: Icon(
                                  _obscureText
                                      ? Icons.visibility_off
                                      : Icons.visibility,
                                  color: MyColor
                                      .yellow, // Toggles between visibility icons
                                ),
                                onPressed: () {
                                  setState(() {
                                    _obscureText =
                                        !_obscureText; // Toggles the password visibility
                                  });
                                },
                              ),
                              prefixIconColor: MyColor.yellow,
                              hintText: "*********",
                              border: InputBorder
                                  .none, // No border on the TextField itself
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Expanded(
                              flex: 3,
                              child: Container(
                                child: ElevatedButton(
                                    onPressed: () {
                                      Navigator.push(context,
                                          MaterialPageRoute(builder: (context) {
                                        return RegisterScreen();
                                      }));
                                    },
                                    style: ElevatedButton.styleFrom(
                                      foregroundColor: MyColor.green,
                                      backgroundColor: MyColor.yellow,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(
                                            20), // <-- Make it rounded
                                      ),
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 50,
                                          vertical: 20), // Button size
                                    ),
                                    child: Text("Login")),
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                child: ElevatedButton(
                                    onPressed: () {
                                      Navigator.push(context,
                                          MaterialPageRoute(builder: (context) {
                                        return ForgetPasswordScreen();
                                      }));
                                    },
                                    style: ElevatedButton.styleFrom(
                                      foregroundColor: MyColor.green,
                                      backgroundColor: MyColor.yellow,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(
                                            20), // <-- Make it rounded
                                      ),
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 10,
                                          vertical: 16.5), // Button size
                                    ),
                                    child: Image.asset(
                                      'image/forgotPassword.png',
                                      width: 23,
                                    )),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Center(
                          child: Text(
                        "continue with",
                        style:
                            TextStyle(color: MyColor.yellow.withOpacity(0.5)),
                      )),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Container(
                              child: ElevatedButton(
                                  onPressed: () {
                                    // Navigator.push(context,
                                    //     MaterialPageRoute(
                                    //         builder: (context) {
                                    //   return OnBoardingScreen2();
                                    // }));
                                  },
                                  style: ElevatedButton.styleFrom(
                                    foregroundColor: MyColor.green,
                                    backgroundColor: MyColor.lightGreen,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                          20), // <-- Make it rounded
                                    ),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 10,
                                        vertical: 20), // Button size
                                  ),
                                  child: Image.asset(
                                    'image/apple.png',
                                    width: 20,
                                  )),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                              child: ElevatedButton(
                                  onPressed: () {
                                    // Navigator.push(context,
                                    //     MaterialPageRoute(
                                    //         builder: (context) {
                                    //   return OnBoardingScreen2();
                                    // }));
                                  },
                                  style: ElevatedButton.styleFrom(
                                    foregroundColor: MyColor.green,
                                    backgroundColor: MyColor.lightGreen,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                          20), // <-- Make it rounded
                                    ),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 10,
                                        vertical: 20), // Button size
                                  ),
                                  child: Image.asset(
                                    'image/google.png',
                                    width: 20,
                                  )),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                              child: ElevatedButton(
                                  onPressed: () {
                                    // Navigator.push(context,
                                    //     MaterialPageRoute(
                                    //         builder: (context) {
                                    //   return OnBoardingScreen2();
                                    // }));
                                  },
                                  style: ElevatedButton.styleFrom(
                                    foregroundColor: MyColor.green,
                                    backgroundColor: MyColor.lightGreen,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                          20), // <-- Make it rounded
                                    ),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 10,
                                        vertical: 20), // Button size
                                  ),
                                  child: Image.asset(
                                    'image/facebook.png',
                                    width: 20,
                                  )),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Center(
                          child: TextButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return RegisterScreen();
                          }));
                        },
                        child: Text(
                          "create an account",
                          style:
                              TextStyle(color: MyColor.yellow.withOpacity(0.5)),
                        ),
                      )),
                    ],
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
