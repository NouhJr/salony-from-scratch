import 'package:flutter/material.dart';
import 'package:salony_from_scratch/components/constants.dart';
import 'package:salony_from_scratch/components/textField.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  bool isPassword = true;

  @override
  void dispose() {
    _nameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            child: Image(
              image: AssetImage("assets/images/SalonyBackground.png"),
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
          ),
          Positioned(
            top: 10.0,
            left: 10.0,
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.arrow_back),
              iconSize: 30.0,
            ),
          ),
          Positioned(
            left: 10.0,
            top: 50.0,
            child: Text(
              "Sign In",
              style: TextStyle(
                fontFamily: KPrimaryFontFamily,
                fontSize: 26.0,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            top: 10.0,
            right: 80.0,
            child: TextButton(
              child: Text(
                "Register",
                style: TextStyle(
                  fontFamily: KPrimaryFontFamily,
                  color: Colors.black,
                  fontSize: 17.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onPressed: () {},
            ),
          ),
          Positioned(
            top: 230.0,
            left: 0.0,
            right: 0.0,
            child: Container(
              height: screenSize.height - 230.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40.0),
                  topRight: Radius.circular(40.0),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.4),
                    spreadRadius: 7,
                    blurRadius: 7,
                    offset: Offset(0, 3),
                  ),
                ],
                color: Colors.white,
              ),
              child: ListView(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 25.0,
                      ),
                      Container(
                        width: 350.0,
                        child: CustomTextField(
                          controller: _nameController,
                          hint: "User Name",
                          isPassword: false,
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Container(
                        width: 350.0,
                        child: CustomTextField(
                          controller: _passwordController,
                          hint: "Password",
                          isPassword: isPassword,
                          icon: IconButton(
                            onPressed: () {
                              setState(() {
                                isPassword = !isPassword;
                              });
                            },
                            icon: Icon(
                              isPassword
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                            ),
                            iconSize: 25.0,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
