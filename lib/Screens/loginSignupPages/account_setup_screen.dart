import 'package:flutter/material.dart';
import 'package:travel_app/Screens/loginSignupPages/register_screen.dart';
import 'package:travel_app/utils/Colors/colors.dart';

class AccountSetUpScreen extends StatefulWidget {
  const AccountSetUpScreen({super.key});

  @override
  State<AccountSetUpScreen> createState() => _AccountSetUpScreenState();
}

class _AccountSetUpScreenState extends State<AccountSetUpScreen> {
  bool _isEnabled = true; // To track if TextField is enabled
  bool _obscureText = true;

  Widget buildTextField({
    required String labelText,
    required String hintText,
    required IconData prefixIcon,
    bool enabled = true,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: MyColor.lightGreen,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: TextField(
          style: TextStyle(color: MyColor.yellow, fontWeight: FontWeight.bold),
          enabled: enabled,
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
            hintStyle: TextStyle(color: Colors.white.withOpacity(0.2)),
            labelText: labelText,
            labelStyle: TextStyle(
              color: enabled ? MyColor.yellow : Colors.grey,
            ),
            prefixIcon: Icon(prefixIcon, color: MyColor.yellow),
            hintText: hintText,
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          color: MyColor.lightGreen,
          onPressed: () {},
        ),
        backgroundColor: Colors.transparent,
      ),
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
                  const Text(
                    "Account",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 35,
                        fontWeight: FontWeight.w900),
                  ),
                  const Text(
                    "Setup",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 35,
                        fontWeight: FontWeight.w900),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    "Complete your account setup to access personalized travel suggestions and manage bookings.",
                    style: TextStyle(
                      color: MyColor.yellow.withOpacity(0.4),
                    ),
                  ),
                  Center(
                    child: Container(
                      padding: const EdgeInsets.all(16.0),
                      margin: const EdgeInsets.symmetric(vertical: 16.0),
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
                          InkWell(
                            // onTap: imageUploadBtnPress,
                            child: CircleAvatar(
                              radius: 13,
                              backgroundColor: MyColor.lightGreen,
                              child: Icon(
                                Icons.add,
                                color: MyColor.yellow,
                                size: 20,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  buildTextField(
                    labelText: "Username",
                    hintText: "Noman Ahmed",
                    prefixIcon: Icons.person,
                    enabled: _isEnabled,
                  ),
                  const SizedBox(height: 15),
                  Row(
                    children: [
                      Expanded(
                        child: buildTextField(
                          labelText: "City",
                          hintText: "Karachi",
                          prefixIcon: Icons.location_pin,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: buildTextField(
                          labelText: "Country",
                          hintText: "Pakistan",
                          prefixIcon: Icons.flag,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  Container(
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () {
                          // Navigator.push(context,
                          //     MaterialPageRoute(builder: (context) {
                          //   return RegisterScreen();
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
                              horizontal: 50, vertical: 20), // Button size
                        ),
                        child: Text("Finish Setup")),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
