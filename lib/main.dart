import 'package:flutter/material.dart';
import 'package:travel_app/Screens/bottom_nav_bar_screen.dart';
import 'package:travel_app/Screens/home_screen.dart';
import 'package:travel_app/Screens/loginSignupPages/account_setup_screen.dart';
import 'package:travel_app/Screens/loginSignupPages/forget_password_screen.dart';
import 'package:travel_app/Screens/loginSignupPages/login_screen.dart';
import 'package:travel_app/Screens/loginSignupPages/opt_screen.dart';
import 'package:travel_app/Screens/loginSignupPages/register_screen.dart';
import 'package:travel_app/Screens/loginSignupPages/registration_complete_screen.dart';
import 'package:travel_app/Screens/loginSignupPages/reset_password_screen.dart';
import 'package:travel_app/Screens/loginSignupPages/term_services_screen.dart';
import 'package:travel_app/Screens/onboarding_screens/onboarding_screen1.dart';
import 'package:travel_app/Screens/onboarding_screens/onboarding_screen2.dart';

main() {
  runApp(MaterialApp(
    home: BottomNavScreen(),
  ));
}
