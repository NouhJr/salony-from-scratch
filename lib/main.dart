import 'dart:async';
import 'package:flutter/material.dart';
import 'package:salony_from_scratch/components/custom_page_router_animation.dart';
import 'package:salony_from_scratch/ui/signIn_screen.dart';
// import 'package:salony_from_scratch/ui/home_screen.dart';

void main() {
  runApp(MyApp());
}

//Root State.
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Salony',
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

//Splash Screen.
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    Timer(
      Duration(seconds: 4),
      () => Navigator.pushReplacement(
        context,
        AnimatedRouting(
          childScreen: SignIn(),
          transitionDirection: AxisDirection.up,
        ),
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image(
        image: AssetImage("assets/images/salonysplashscreen.jpg"),
        fit: BoxFit.cover,
        width: double.infinity,
        height: double.infinity,
      ),
    );
  }
}
