import 'dart:async';

import 'package:flutter/material.dart';
import 'package:travel_app/data/map_data/famous_place_data.dart';
import 'package:travel_app/utils/Colors/colors.dart';
import 'package:travel_app/widgets/search_bar_wid.dart';

class HomeScreen extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<HomeScreen> {
  bool _isEnabled = true; // To track if TextField is enabled
  bool _obscureText = true; // Controls if the password is hidden or visible
  final PageController _pageController = PageController();

  void _onPageChanged(int page) {
    print('Page changed to: $page');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: MyColor.green,
          title: Row(
            children: [
              Expanded(
                child: ListTile(
                  contentPadding: EdgeInsets.zero, // Remove default padding
                  leading: Container(
                    width: 40, // Set width to ensure it fits well in the AppBar
                    height:
                        40, // Set height to ensure it fits well in the AppBar
                    decoration: BoxDecoration(
                      border: Border.all(width: 0.8, color: MyColor.yellow),
                      color: MyColor.green, // Background color
                      borderRadius:
                          BorderRadius.circular(10), // Rounded corners
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(4),
                      child: ClipRRect(
                        borderRadius:
                            BorderRadius.circular(7), // Match the border radius
                        child: Image.asset(
                          'image/n1.jpg', // Ensure the path is correct and the image is added in pubspec.yaml
                          fit: BoxFit
                              .cover, // Cover the container without distortion
                        ),
                      ),
                    ),
                  ),
                  title: Text(
                    "Pakistan",
                    style: TextStyle(
                        color: Colors.white.withOpacity(0.5), fontSize: 10),
                  ),
                  subtitle: Text(
                    'Noman Ahmed',
                    style: TextStyle(
                        color: MyColor.yellow,
                        fontSize: 15,
                        fontWeight: FontWeight.w900),
                  ),
                ),
              ),
              Stack(
                children: [
                  IconButton(
                    icon: Icon(Icons.notifications, color: Colors.white),
                    onPressed: () {
                      // Handle notification icon press
                    },
                  ),
                  Positioned(
                    right: 0,
                    child: CircleAvatar(
                      radius: 8,
                      backgroundColor: Colors.red,
                      child: Text(
                        '3',
                        style: TextStyle(fontSize: 12, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        // body: Center(
        //   child: Padding(
        //     padding: const EdgeInsets.symmetric(horizontal: 20),
        //     child: SizedBox(
        //       height: 500,
        //       width: double.infinity,
        //       child: PageView(
        //         controller: _pageController,
        //         onPageChanged: _onPageChanged,
        //         children: <Widget>[
        //           Container(
        //             color: Colors.red,
        //             child: Center(child: Text('Page 1')),
        //           ),
        //           Container(
        //             color: Colors.green,
        //             child: Center(child: Text('Page 2')),
        //           ),
        //           Container(
        //             color: Colors.blue,
        //             child: Center(child: Text('Page 3')),
        //           ),
        //         ],
        //       ),
        //     ),
        //   ),
        // ),
        backgroundColor: MyColor.green,
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Container(
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
                  padding: const EdgeInsets.all(5.0),
                  child: TextField(
                    enabled:
                        _isEnabled, // Control if the TextField is enabled or disabled
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      hintStyle:
                          TextStyle(color: Colors.white.withOpacity(0.2)),

                      prefixIcon: Icon(Icons.search),
                      prefixIconColor: _isEnabled
                          ? MyColor.yellow
                          : Colors.grey, // Icon color based on enabled state
                      hintText: "Search",
                      border:
                          InputBorder.none, // No border on the TextField itself
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Center(
                        child: RotatedBox(
                          quarterTurns: 3,
                          child:
                              //  Padding(
                              //   padding: const EdgeInsets.only(right: 100, left: 230),
                              //   child: Container(
                              //     // color: Colors.amber,
                              //     child: Row(
                              //       mainAxisAlignment: MainAxisAlignment.spaceAround,
                              //       children: [
                              //         Text(
                              //           "Noman",
                              //           style: TextStyle(
                              //               fontWeight: FontWeight.w900,
                              //               color: MyColor.yellow,
                              //               fontSize: 15),
                              //         ),
                              //         Text(
                              //           "Noman",
                              //           style: TextStyle(
                              //               fontWeight: FontWeight.w900,
                              //               color: MyColor.yellow,
                              //               fontSize: 15),
                              //         ),
                              //         Text(
                              //           "Noman",
                              //           style: TextStyle(
                              //               fontWeight: FontWeight.w900,
                              //               color: MyColor.yellow,
                              //               fontSize: 15),
                              //         ),
                              //       ],
                              //     ),
                              //   ),
                              // ),

                              Container(
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(right: 80, left: 250),
                              child: DefaultTabController(
                                length: 3, // Number of tabs
                                child: TabBar(
                                  labelColor: Colors.white,
                                  unselectedLabelColor: MyColor.lightGreen,
                                  labelPadding: EdgeInsets.only(right: 5),
                                  labelStyle: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w900),
                                  unselectedLabelStyle: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700),
                                  indicator: BoxDecoration(),
                                  dividerColor: Colors.transparent,
                                  tabs: [
                                    Tab(text: 'Home'),
                                    Tab(text: 'Contact'),
                                    Tab(text: 'About'),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(child: AutoScrollPageView()),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AutoScrollPageView extends StatefulWidget {
  @override
  _AutoScrollPageViewState createState() => _AutoScrollPageViewState();
}

class _AutoScrollPageViewState extends State<AutoScrollPageView> {
  PageController _pageController = PageController();
  int _currentPage = 0;
  Timer? _timer;

  // List of colors for pages (replace with your actual content)
  // List<Map<String, dynamic>> famousPlaces = [
  //   {
  //     'color': Colors.red,
  //     'text': 'Eiffel Tower, France',
  //   },
  //   {
  //     'color': Colors.green,
  //     'text': 'Great Wall of China, China',
  //   },
  //   {
  //     'color': Colors.blue,
  //     'text': 'Colosseum, Italy',
  //   },
  //   // Add more pages if needed
  // ];

  @override
  void initState() {
    super.initState();
    // Start the timer for auto-scrolling
    _timer = Timer.periodic(Duration(seconds: 3), (Timer timer) {
      if (_currentPage < famousPlaces.length - 1) {
        _currentPage++;
      } else {
        _currentPage = 0; // Go back to the first page when last is reached
      }

      _pageController.animateToPage(
        _currentPage,
        duration: Duration(milliseconds: 600),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 900,
        width: double.infinity,
        child: PageView.builder(
          controller: _pageController,
          onPageChanged: (int page) {
            setState(() {
              _currentPage = page;
            });
          },
          itemCount: famousPlaces.length, // Use the length of your data
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 100,
                // color: Colors.amber,
                // color: famousPlaces![index]['color'], // Replace with actual data
                child: Stack(
                  children: [
                    ClipRRect(
                      child: Image.asset(
                        famousPlaces[index]['imagePath'],
                        width: double.infinity,
                        height: double.infinity,
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(40),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.transparent, // Light color at the top
                            MyColor.green
                                .withOpacity(0.8), // Dark color at the bottom
                          ],
                          stops: [0.6, .9],
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 20,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  famousPlaces[index][
                                      'placeName'], // Place name or description
                                  style: const TextStyle(
                                      fontWeight: FontWeight.w900,
                                      color: Colors.white,
                                      fontSize: 20),
                                ),
                                Text(
                                  famousPlaces[index]
                                      ['country'], // Place name or description
                                  style: TextStyle(
                                      fontWeight: FontWeight.w900,
                                      color: MyColor.yellow,
                                      fontSize: 15),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          ElevatedButton(
                              onPressed: () {
                                // Navigator.push(context,
                                //     MaterialPageRoute(builder: (context) {
                                //   return OnBoardingScreen3();
                                // }
                                // ));
                              },
                              style: ElevatedButton.styleFrom(
                                foregroundColor: MyColor.green,
                                backgroundColor:
                                    MyColor.yellow.withOpacity(0.5),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      15), // <-- Make it rounded
                                ),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 30,
                                    vertical: 10), // Button size
                              ),
                              child: Image.asset(
                                'image/arrow.png',
                                width: 20,
                              )),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
