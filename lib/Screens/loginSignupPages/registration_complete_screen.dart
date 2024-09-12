import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:travel_app/Screens/loginSignupPages/login_screen.dart';
import 'package:travel_app/utils/Colors/colors.dart';

class RegistrationComplete extends StatefulWidget {
  const RegistrationComplete({super.key});

  @override
  State<RegistrationComplete> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<RegistrationComplete> {
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
            'image/registerImage.jpg',
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
                  MyColor.green.withOpacity(0.1), // Light color at the top
                  MyColor.green.withOpacity(1), // Dark color at the bottom
                ],
                stops: [0.1, 0.5],
              ),
            ),
          ),
          Positioned(
              top: 130,
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
                        "Register",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Completed!",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Text(
                        "You're all set! Get ready to explore the world with us.",
                        textAlign: TextAlign.start,
                        style:
                            TextStyle(color: MyColor.yellow.withOpacity(0.4)),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Center(
                        child: Container(
                          padding: const EdgeInsets.all(16.0),
                          margin: const EdgeInsets.only(top: 30),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: MyColor.lightGreen.withOpacity(0.5),
                            ),
                          ),
                          child: Stack(
                            alignment: Alignment.bottomRight,
                            children: [
                              const CircleAvatar(
                                radius: 50,
                                backgroundImage: AssetImage('image/n1.jpg'),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Center(
                        child: Text(
                          "Noman Ahmed",
                          style: TextStyle(
                              color: MyColor.yellow,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 50),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Expanded(
                              flex: 3,
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
                                      backgroundColor: MyColor.yellow,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(
                                            20), // <-- Make it rounded
                                      ),
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 50,
                                          vertical: 20), // Button size
                                    ),
                                    child: Text("Start Exploring")),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                    ],
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
