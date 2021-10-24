import 'package:flutter/material.dart';
import 'package:salony_from_scratch/components/constants.dart';
import 'package:salony_from_scratch/ui/home_item_screen.dart';
import 'package:salony_from_scratch/ui/categories_item_screen.dart';
import 'package:salony_from_scratch/ui/notification_item_screen.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentIndex = 0;
  List<Widget> pages = [
    HomeItem(),
    Categories(),
    Notifications(),
  ];
  void onTabTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      //Navigation Bar Theme.
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Color(0xFFF5989D),
          primaryColor: Color(0xFFFFFFFF),
          textTheme: Theme.of(context).textTheme.copyWith(
                caption: new TextStyle(color: Colors.black),
              ),
        ),
        //Navigation Bar.
        child: ClipRRect(
          borderRadius: BorderRadius.all(
            Radius.circular(
              40.0,
            ),
          ),
          child: BottomNavigationBar(
            onTap: onTabTapped,
            currentIndex: currentIndex,
            items: [
              BottomNavigationBarItem(
                icon: Image.asset(
                  "assets/images/home.png",
                  color: Colors.white,
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  "assets/images/category.png",
                  color: Colors.white,
                ),
                label: 'Categories',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  "assets/images/notification.png",
                  color: Colors.white,
                ),
                label: 'Notifications',
              ),
            ],
            selectedLabelStyle: TextStyle(
              fontFamily: KPrimaryFontFamily,
              fontWeight: FontWeight.bold,
              fontSize: 15.0,
              color: Colors.white,
            ),
            selectedItemColor: Colors.white,
            unselectedLabelStyle: TextStyle(
              fontFamily: KPrimaryFontFamily,
              fontWeight: FontWeight.w700,
              fontSize: 15.0,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
