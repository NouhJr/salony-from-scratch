import 'package:flutter/material.dart';
import 'package:connectivity/connectivity.dart';
import 'package:salony_from_scratch/components/constants.dart';
import 'package:salony_from_scratch/components/textField.dart';
import 'package:salony_from_scratch/components/registerAndLogInButton.dart';
import 'package:salony_from_scratch/components/flushBar.dart';
import 'package:salony_from_scratch/components/custom_page_router_animation.dart';
import 'package:salony_from_scratch/ui/signIn_screen.dart';
import 'package:salony_from_scratch/ui/home_screen.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _confirmPasswordController = TextEditingController();
  TextEditingController _addressController = TextEditingController();
  bool isPassword = true;
  bool isConfirmPassword = true;

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _phoneController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    _addressController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    var oneThirdScreenHeight = screenSize.height / 3;
    return Scaffold(
      body: Stack(
        children: [
          //Background Image.
          Container(
            child: Image(
              image: AssetImage("assets/images/salonybackground.jpg"),
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
          ),
          //Back Button.
          Positioned(
            top: 20.0,
            left: 0.0,
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back,
                color: Colors.black,
                size: 30.0,
              ),
            ),
          ),
          //Greeting Message.
          Positioned(
              top: 120.0,
              left: 10.0,
              child: Text(
                "Welocme to Salony",
                style: KMainWelcomeMessageTextStyle,
              )),
          //Screen Body.
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
                      //Salony Text Logo.
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
                      //Name Text Field.
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
                      //Email Text Field.
                      Container(
                        width: 350.0,
                        child: CustomTextField(
                          controller: _emailController,
                          hint: "Email",
                          isPassword: false,
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      //Phone Text Field.
                      Container(
                        width: 350.0,
                        child: CustomTextField(
                          controller: _phoneController,
                          hint: "Phone",
                          isPassword: false,
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      //Password Text Field.
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
                      //Confirm Password Text Field.
                      Container(
                        width: 350.0,
                        child: CustomTextField(
                          controller: _confirmPasswordController,
                          hint: "Confirm Password",
                          isPassword: isConfirmPassword,
                          icon: IconButton(
                            onPressed: () {
                              setState(() {
                                isConfirmPassword = !isConfirmPassword;
                              });
                            },
                            icon: Icon(
                              isConfirmPassword
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
                      //Address Text Field.
                      Container(
                        width: 350.0,
                        child: CustomTextField(
                          controller: _addressController,
                          hint: "Address",
                          isPassword: false,
                        ),
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      //Register Button.
                      InkWell(
                        onTap: () {
                          register();
                        },
                        child: Container(
                          width: 200.0,
                          height: 50.0,
                          child: AuthButton(
                            label: "Register",
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      //Sign In Button.
                      Container(
                        width: 350.0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Already have an account?",
                              style: KAuthMessageTextStyle,
                            ),
                            SizedBox(
                              width: 5.0,
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  AnimatedRouting(
                                    childScreen: SignIn(),
                                    transitionDirection: AxisDirection.left,
                                  ),
                                );
                              },
                              child: Text(
                                "Sign in",
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
      resizeToAvoidBottomInset: true,
    );
  }

  void register() async {
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
    } else if (_emailController.text.isEmpty) {
      Warning().errorMessage(
        context,
        title: "Email field can't be empty !",
        message: "Please enter your email.",
        icons: Icons.warning,
      );
    } else if (!_emailController.text.contains('@')) {
      Warning().errorMessage(
        context,
        title: 'Invalid email !',
        message: "Email must contain '@' ",
        icons: Icons.warning,
      );
    } else if (_phoneController.text.isEmpty) {
      Warning().errorMessage(
        context,
        title: "Phone field can't be empty !",
        message: "Please enter your phone.",
        icons: Icons.warning,
      );
    } else if (_passwordController.text.isEmpty) {
      Warning().errorMessage(
        context,
        title: "Password field can't be empty !",
        message: "Please enter your password.",
        icons: Icons.warning,
      );
    } else if (_confirmPasswordController.text.isEmpty) {
      Warning().errorMessage(
        context,
        title: "ConfirmPassword field can't be empty !",
        message: "Please confirm your password.",
        icons: Icons.warning,
      );
    } else if (_passwordController.text != _confirmPasswordController.text) {
      Warning().errorMessage(
        context,
        title: "Password values doesn't match !",
        message: "Please confirm your password.",
        icons: Icons.warning,
      );
    } else if (_addressController.text.isEmpty) {
      Warning().errorMessage(
        context,
        title: "Address field can't be empty !",
        message: "Please enter your address.",
        icons: Icons.warning,
      );
    } else {
      Navigator.pushReplacement(
        context,
        AnimatedRouting(
          childScreen: Home(),
          transitionDirection: AxisDirection.up,
        ),
      );
    }
  }
}
