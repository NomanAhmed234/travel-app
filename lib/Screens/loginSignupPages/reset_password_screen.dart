import 'package:flutter/material.dart';
import 'package:travel_app/Screens/loginSignupPages/login_screen.dart';
import 'package:travel_app/utils/Colors/colors.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({super.key});

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  bool _isEnabled = true; // To track if TextField is enabled
  bool _obscureText = true; //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: BackButton(
            color: MyColor.lightGreen,
            onPressed: () {},
          ),
          backgroundColor: Colors.transparent),
      backgroundColor: MyColor.green,
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 35),
                  Text(
                    "Reset",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 35,
                        fontWeight: FontWeight.w900),
                  ),
                  Text(
                    "Password",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 35,
                        fontWeight: FontWeight.w900),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    "Enter your new password below to continue\n discovering the world.",
                    textAlign: TextAlign.start,
                    style: TextStyle(color: MyColor.yellow.withOpacity(0.4)),
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
                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(
                          hintStyle:
                              TextStyle(color: Colors.white.withOpacity(0.2)),
                          labelText: "New Password",
                          labelStyle: TextStyle(
                            color: _isEnabled
                                ? MyColor.yellow
                                : Colors
                                    .grey, // Label color based on enabled state
                          ),
                          prefixIcon: Icon(Icons.lock),
                          prefixIconColor: _isEnabled
                              ? MyColor.yellow
                              : Colors
                                  .grey, // Icon color based on enabled state
                          hintText: "*********",
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
                          hintStyle:
                              TextStyle(color: Colors.white.withOpacity(0.2)),
                          label: Text("Confirm Password"),
                          labelStyle: TextStyle(color: MyColor.yellow),
                          prefixIcon: Icon(Icons.lock),
                          // suffixIcon: IconButton(
                          //   icon: Icon(
                          //     _obscureText
                          //         ? Icons.visibility_off
                          //         : Icons.visibility,
                          //     color: MyColor
                          //         .yellow, // Toggles between visibility icons
                          //   ),
                          //   onPressed: () {
                          //     setState(() {
                          //       _obscureText =
                          //           !_obscureText; // Toggles the password visibility
                          //     });
                          //   },
                          // ),
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
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return LoginScreen();
                      }));
                    },
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      backgroundColor: MyColor.yellow,
                      foregroundColor: MyColor.green,
                      minimumSize: const Size(double.infinity, 48),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                    ),
                    child: const Text("Reset Password"),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
