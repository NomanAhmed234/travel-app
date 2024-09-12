import 'package:flutter/material.dart';
import 'package:travel_app/Screens/loginSignupPages/forget_password_screen.dart';
import 'package:travel_app/utils/Colors/colors.dart';

class TermServicesScreen extends StatefulWidget {
  const TermServicesScreen({super.key});

  @override
  State<TermServicesScreen> createState() => _TermServicesScreenState();
}

class _TermServicesScreenState extends State<TermServicesScreen> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.green,
      appBar: AppBar(
          leading: BackButton(
            color: MyColor.lightGreen,
            onPressed: () {},
          ),
          backgroundColor: Colors.transparent),
      body: SafeArea(
          child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: SingleChildScrollView(
            child: Column(
              children: [
                ListTile(
                  leading: Container(
                    child: ElevatedButton(
                        onPressed: () {
                          // Navigator.push(context,
                          //     MaterialPageRoute(builder: (context) {
                          //   return ForgetPasswordScreen();
                          // }));
                        },
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          foregroundColor: MyColor.yellow.withOpacity(0.7),
                          backgroundColor: MyColor.lightGreen,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                20), // <-- Make it rounded
                          ),
                          padding: EdgeInsets.symmetric(
                              horizontal: 10, vertical: 16.5), // Button size
                        ),
                        child: Icon(Icons.document_scanner)),
                  ),
                  title: Text(
                    "Terms of Services",
                    style: TextStyle(
                        color: Colors.white.withOpacity(0.8),
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    "Your Agreement to Use Our Services",
                    style: TextStyle(
                        color: Colors.white.withOpacity(0.4),
                        fontSize: 12,
                        fontWeight: FontWeight.normal),
                  ),
                ),
                Divider(
                  height: 30,
                  thickness: 1,
                  color: MyColor.lightGreen,
                ),
                ListTile(
                  title: Text(
                    "1. Introduction",
                    style: TextStyle(
                        color: Colors.white.withOpacity(0.7),
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    "By accessing and using our travel app, you agree to abide by the terms and conditions outlined here. These terms govern your use of our services, including the booking of flights, hotels, and other travel-related activities. If you do not agree with these terms, please discontinue using our services immediately.",
                    style: TextStyle(
                        color: Colors.white.withOpacity(0.4),
                        fontSize: 14,
                        fontWeight: FontWeight.normal),
                  ),
                  // leading: Container(
                  //   child: Text(
                  //     "1",
                  //     style: TextStyle(
                  //         color: MyColor.yellow.withOpacity(0.8),
                  //         fontSize: 25,
                  //         fontWeight: FontWeight.bold),
                  //   ),
                  //   decoration: BoxDecoration(
                  //     color: MyColor.lightGreen,
                  //     borderRadius: BorderRadius.circular(20),
                  //   ),
                  //   padding:
                  //       EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  // )
                ),
                Divider(
                  height: 30,
                  thickness: 1,
                  color: MyColor.lightGreen,
                ),
                ListTile(
                  title: Text(
                    "2. Privacy Policy",
                    style: TextStyle(
                        color: Colors.white.withOpacity(0.7),
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    "We value your privacy. Any personal information, such as your email address, payment information, or travel preferences, will be stored securely and used only to enhance your experience within the app. We will not share your data with third parties without your consent, except as required by law or for the functionality of the service.",
                    style: TextStyle(
                        color: Colors.white.withOpacity(0.4),
                        fontSize: 14,
                        fontWeight: FontWeight.normal),
                  ),
                  // leading: Container(
                  //   child: Text(
                  //     "1",
                  //     style: TextStyle(
                  //         color: MyColor.yellow.withOpacity(0.8),
                  //         fontSize: 25,
                  //         fontWeight: FontWeight.bold),
                  //   ),
                  //   decoration: BoxDecoration(
                  //     color: MyColor.lightGreen,
                  //     borderRadius: BorderRadius.circular(20),
                  //   ),
                  //   padding:
                  //       EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  // )
                ),
                Divider(
                  height: 30,
                  thickness: 1,
                  color: MyColor.lightGreen,
                ),
                ListTile(
                  title: Text(
                    "3. Use of Services",
                    style: TextStyle(
                        color: Colors.white.withOpacity(0.7),
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    "Our app allows you to browse, book, and manage travel services. You are responsible for ensuring that all information provided is accurate and up-to-date. Misuse of the app, including but not limited to fraudulent bookings or providing false information, will result in the termination of your account. The app may also use third-party services, and by using the app, you agree to their respective terms.",
                    style: TextStyle(
                        color: Colors.white.withOpacity(0.4),
                        fontSize: 14,
                        fontWeight: FontWeight.normal),
                  ),
                  // leading: Container(
                  //   child: Text(
                  //     "1",
                  //     style: TextStyle(
                  //         color: MyColor.yellow.withOpacity(0.8),
                  //         fontSize: 25,
                  //         fontWeight: FontWeight.bold),
                  //   ),
                  //   decoration: BoxDecoration(
                  //     color: MyColor.lightGreen,
                  //     borderRadius: BorderRadius.circular(20),
                  //   ),
                  //   padding:
                  //       EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  // )
                ),
                Divider(
                  height: 30,
                  thickness: 1,
                  color: MyColor.lightGreen,
                ),
                ListTile(
                  title: Text(
                    "4. Limitation of Liability",
                    style: TextStyle(
                        color: Colors.white.withOpacity(0.7),
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    "While we strive to provide a seamless experience, the app and its services are provided as is without any warranties. We are not responsible for any direct or indirect losses resulting from the use of the app, including missed flights, incorrect bookings, or system errors. It is your responsibility to verify all bookings and arrangements with the respective service providers.",
                    style: TextStyle(
                        color: Colors.white.withOpacity(0.4),
                        fontSize: 14,
                        fontWeight: FontWeight.normal),
                  ),
                  // leading: Container(
                  //   child: Text(
                  //     "1",
                  //     style: TextStyle(
                  //         color: MyColor.yellow.withOpacity(0.8),
                  //         fontSize: 25,
                  //         fontWeight: FontWeight.bold),
                  //   ),
                  //   decoration: BoxDecoration(
                  //     color: MyColor.lightGreen,
                  //     borderRadius: BorderRadius.circular(20),
                  //   ),
                  //   padding:
                  //       EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  // )
                ),
                ListTile(
                  leading: Checkbox(
                    activeColor: MyColor.yellow,
                    checkColor: MyColor.green,
                    value: isChecked,
                    onChanged: (bool? value) {
                      setState(() {
                        isChecked = value ?? false;
                      });
                    },
                  ),
                  title: Text(
                    "By checking this box, I confirm that I have read and agree to the Terms of Service and Privacy Policy.",
                    style: TextStyle(
                        color: Colors.white.withOpacity(0.4),
                        fontSize: 12,
                        fontWeight: FontWeight.normal),
                  ),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(right: 40),
                          child: ElevatedButton(
                              onPressed: () {
                                // Navigator.push(context,
                                //     MaterialPageRoute(builder: (context) {
                                //   return OnBoardingScreen3();
                                // }
                                // ));
                              },
                              style: ElevatedButton.styleFrom(
                                foregroundColor: MyColor.green,
                                backgroundColor: MyColor.yellow,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      15), // <-- Make it rounded
                                ),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 30,
                                    vertical: 10), // Button size
                              ),
                              child: Text("Agree"))),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                )
              ],
            ),
          ),
        ),
      )),
    );
  }
}
