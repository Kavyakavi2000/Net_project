import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:netzary_task/Screens/home_page.dart';

class Navigation extends StatefulWidget {
  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int _currentIndex = 0;
  final tabs = [
    Center(child: Homepage()),
    Center(child: Homepage()),
    Center(child: Homepage()),
    Center(child: Homepage()),
  ];
  @override
  Widget build(BuildContext context) {
    final controller = CarouselController();
    int activeIndex = 0;
    final List<String> AssetImages = ["Images/home1.jpg", "Images/home2.jpg"];
    return Scaffold(
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        iconSize: 25,
        selectedFontSize: 13,
        unselectedFontSize: 13,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.orange,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
              backgroundColor: Colors.orange),
          BottomNavigationBarItem(
              icon: Icon(Icons.explore),
              label: "Explore",
              backgroundColor: Colors.orange),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: "Saved",
              backgroundColor: Colors.orange),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label: "Notifications",
              backgroundColor: Colors.orange)
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }

  Widget buildImage(String AssetImage, int index) => Container(
        color: Colors.white,
        child: Image.asset(AssetImage),
      );
}
