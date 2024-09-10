import 'package:flutter/material.dart';
import 'package:travel_app/Screens/onboarding_screens/onboarding_screen3.dart';
import 'package:travel_app/utils/Colors/colors.dart';

class OnBoardingScreen2 extends StatelessWidget {
  const OnBoardingScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(),
            child: Image.asset(
              "image/onboard2.jpg",
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.maxFinite,
            ),
          ),
          Container(
            width: double.infinity,
            height: double.infinity,
            color: MyColor.green.withOpacity(0.2), // Color with opacity
          ),
          Positioned(
              left: 10,
              bottom: 40,
              child: Container(
                width: 350,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Enjoy",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 35,
                                fontWeight: FontWeight.w900),
                          ),
                          Text(
                            "your travel",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 35,
                                fontWeight: FontWeight.w900),
                          ),
                          Text(
                            "experience!",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 35,
                                fontWeight: FontWeight.w900),
                          ),
                        ],
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
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (context) {
                                      return OnBoardingScreen3();
                                    }));
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
                                  child: Icon(Icons.forward))),
                        ],
                      ),
                    ),
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
