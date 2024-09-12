import 'package:flutter/material.dart';
import 'package:travel_app/utils/Colors/colors.dart';

class HomeScreen extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<HomeScreen> {
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
        body: Center(
          child: SizedBox(
            height: 300,
            width: 300,
            child: PageView(
              controller: _pageController,
              onPageChanged: _onPageChanged,
              children: <Widget>[
                Container(
                  color: Colors.red,
                  child: Center(child: Text('Page 1')),
                ),
                Container(
                  color: Colors.green,
                  child: Center(child: Text('Page 2')),
                ),
                Container(
                  color: Colors.blue,
                  child: Center(child: Text('Page 3')),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
