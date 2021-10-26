import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
    return WillPopScope(
      child: Scaffold(
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
      ),
      onWillPop: () => exitApp(),
    );
  }

  //Exit The Application Programmatically.
  exitApp() async {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return AlertDialog(
            backgroundColor: Colors.white,
            elevation: 1.0,
            title: Text(
              "Exit Salony",
              style: TextStyle(
                color: Colors.black,
                fontFamily: KPrimaryFontFamily,
                fontWeight: FontWeight.bold,
                fontSize: 21.0,
                height: 1.3,
              ),
            ),
            content: Text(
              "Do you want to exit ?",
              style: TextStyle(
                color: Colors.black,
                fontFamily: KPrimaryFontFamily,
                fontWeight: FontWeight.w400,
                fontSize: 18.0,
                height: 1.3,
              ),
            ),
            actions: [
              TextButton(
                child: Text(
                  'Yes',
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: KPrimaryFontFamily,
                    fontWeight: FontWeight.w600,
                    fontSize: 18.0,
                    height: 1.3,
                  ),
                ),
                onPressed: () {
                  SystemNavigator.pop();
                },
              ),
              TextButton(
                child: Text(
                  'No',
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: KPrimaryFontFamily,
                    fontWeight: FontWeight.w600,
                    fontSize: 18.0,
                    height: 1.3,
                  ),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ],
          );
        });
  }
}
