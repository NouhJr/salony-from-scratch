import 'package:flutter/material.dart';
import 'package:connectivity/connectivity.dart';
import 'package:salony_from_scratch/components/constants.dart';
import 'package:salony_from_scratch/components/textField.dart';
import 'package:salony_from_scratch/components/registerAndLogInButton.dart';
import 'package:salony_from_scratch/components/flushBar.dart';
import 'package:salony_from_scratch/ui/signUp_screen.dart';

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
    var oneThirdScreenHeight = screenSize.height / 3;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            child: Image(
              image: AssetImage("assets/images/salonybackground.jpg"),
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
          ),
          Positioned(
            top: 100.0,
            left: 10.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Welcome back to",
                  style: KMainWelcomeMessageTextStyle,
                ),
                Text(
                  "Salony",
                  style: KMainWelcomeMessageTextStyle,
                ),
              ],
            ),
          ),
          Positioned(
            top: oneThirdScreenHeight,
            left: 0.0,
            right: 0.0,
            child: Container(
              height: screenSize.height - oneThirdScreenHeight,
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
                      Container(
                        width: 130.0,
                        child: Image(
                          image: AssetImage("assets/images/salonyWord.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
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
                      SizedBox(
                        height: 10.0,
                      ),
                      Container(
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            "Forget Password?",
                            style: KAuthSubButtonTextStyle,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      InkWell(
                        onTap: () {
                          signIn();
                        },
                        child: Container(
                          width: 200.0,
                          height: 50.0,
                          child: AuthButton(
                            label: "Sign In",
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Container(
                        width: 350.0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Don't have an account?",
                              style: KAuthMessageTextStyle,
                            ),
                            SizedBox(
                              width: 5.0,
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => SignUp(),
                                  ),
                                );
                              },
                              child: Text(
                                "Register",
                                style: KAuthSubButtonTextStyle,
                              ),
                            ),
                          ],
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

  void signIn() async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.none) {
      Warning().errorMessage(
        context,
        title: "No internet connection !",
        message: "Please turn on wifi or mobile data",
        icons: Icons.signal_wifi_off,
      );
    } else if (_nameController.text.isEmpty) {
      Warning().errorMessage(
        context,
        title: "Name field can't be empty !",
        message: "Please enter your name.",
        icons: Icons.warning,
      );
    } else if (_passwordController.text.isEmpty) {
      Warning().errorMessage(
        context,
        title: "Password field can't be empty !",
        message: "Please enter your password.",
        icons: Icons.warning,
      );
    }
  }
}
