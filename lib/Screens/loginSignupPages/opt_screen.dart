import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:travel_app/Screens/loginSignupPages/reset_password_screen.dart';
import 'package:travel_app/utils/Colors/colors.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});
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
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 35),
                  Text(
                    "Verification",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 35,
                        fontWeight: FontWeight.w900),
                  ),
                  Text(
                    "Code",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 35,
                        fontWeight: FontWeight.w900),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    "Enter the code sent to your phone to continue exploring the world with us.",
                    textAlign: TextAlign.start,
                    style: TextStyle(color: MyColor.yellow.withOpacity(0.4)),
                  ),
                  // const SizedBox(height: 16),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.1),
                  const OtpForm(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

const authOutlineInputBorder = OutlineInputBorder(
  borderSide: BorderSide(color: Colors.white),
  borderRadius: BorderRadius.all(Radius.circular(20)),
);

class OtpForm extends StatelessWidget {
  const OtpForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: 64,
                width: 64,
                child: TextFormField(
                  onSaved: (pin) {},
                  onChanged: (pin) {
                    if (pin.isNotEmpty) {
                      FocusScope.of(context).nextFocus();
                    }
                  },
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.number,
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(1),
                    FilteringTextInputFormatter.digitsOnly,
                  ],
                  style: TextStyle(color: MyColor.yellow, fontSize: 25),
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                      hintText: "0",
                      hintStyle: TextStyle(color: MyColor.lightGreen),
                      border: authOutlineInputBorder,
                      enabledBorder: authOutlineInputBorder.copyWith(
                          borderSide: BorderSide(color: MyColor.lightGreen)),
                      focusedBorder: authOutlineInputBorder.copyWith(
                          borderSide: BorderSide(color: MyColor.yellow))),
                ),
              ),
              SizedBox(
                height: 64,
                width: 64,
                child: TextFormField(
                  onSaved: (pin) {},
                  onChanged: (pin) {
                    if (pin.isNotEmpty) {
                      FocusScope.of(context).nextFocus();
                    }
                  },
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.number,
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(1),
                    FilteringTextInputFormatter.digitsOnly,
                  ],
                  style: TextStyle(color: MyColor.yellow, fontSize: 25),
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                      hintText: "0",
                      hintStyle: TextStyle(color: MyColor.lightGreen),
                      border: authOutlineInputBorder,
                      enabledBorder: authOutlineInputBorder.copyWith(
                          borderSide: BorderSide(color: MyColor.lightGreen)),
                      focusedBorder: authOutlineInputBorder.copyWith(
                          borderSide: BorderSide(color: MyColor.yellow))),
                ),
              ),
              SizedBox(
                height: 64,
                width: 64,
                child: TextFormField(
                  onSaved: (pin) {},
                  onChanged: (pin) {
                    if (pin.isNotEmpty) {
                      FocusScope.of(context).nextFocus();
                    }
                  },
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.number,
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(1),
                    FilteringTextInputFormatter.digitsOnly,
                  ],
                  style: TextStyle(color: MyColor.yellow, fontSize: 25),
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                      hintText: "0",
                      hintStyle: TextStyle(color: MyColor.lightGreen),
                      enabledBorder: authOutlineInputBorder.copyWith(
                          borderSide: BorderSide(color: MyColor.lightGreen)),
                      focusedBorder: authOutlineInputBorder.copyWith(
                          borderSide: BorderSide(color: MyColor.yellow))),
                ),
              ),
              SizedBox(
                height: 64,
                width: 64,
                child: TextFormField(
                  onSaved: (pin) {},
                  onChanged: (pin) {
                    if (pin.isNotEmpty) {
                      FocusScope.of(context).nextFocus();
                    }
                  },
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.number,
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(1),
                    FilteringTextInputFormatter.digitsOnly,
                  ],
                  style: TextStyle(color: MyColor.yellow, fontSize: 25),
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                      hintText: "0",
                      hintStyle: TextStyle(color: MyColor.lightGreen),
                      border: authOutlineInputBorder,
                      enabledBorder: authOutlineInputBorder.copyWith(
                          borderSide: BorderSide(color: MyColor.lightGreen)),
                      focusedBorder: authOutlineInputBorder.copyWith(
                          borderSide: BorderSide(color: MyColor.yellow))),
                ),
              ),
            ],
          ),
          const SizedBox(height: 24),
          TextButton(
            onPressed: () {},
            child: Text(
              "Resend OTP Code",
              style: TextStyle(color: MyColor.yellow.withOpacity(0.4)),
            ),
          ),
          const SizedBox(height: 30),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return ResetPasswordScreen();
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
            child: const Text("Continue"),
          )
        ],
      ),
    );
  }
}
