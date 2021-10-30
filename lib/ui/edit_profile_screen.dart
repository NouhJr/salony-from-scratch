import 'package:flutter/material.dart';
import 'package:salony_from_scratch/components/constants.dart';
import 'package:salony_from_scratch/components/circleAvatar.dart';
import 'package:salony_from_scratch/components/edit_profile_textfield.dart';

class EditProfile extends StatefulWidget {
  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  TextEditingController nameController = TextEditingController(
    text: "User Name",
  );
  TextEditingController bioController = TextEditingController(
    text: "Bio Here",
  );
  TextEditingController birthDateController = TextEditingController(
    text: "1998",
  );
  TextEditingController locationController = TextEditingController(
    text: "Egypt,Cairo",
  );
  TextEditingController linkController = TextEditingController(
    text: "http://www.test.com",
  );

  @override
  void dispose() {
    nameController.dispose();
    bioController.dispose();
    birthDateController.dispose();
    locationController.dispose();
    linkController.dispose();
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
          Positioned(
            top: 0.0,
            child: Container(
              width: screenSize.width,
              height: oneThirdScreenHeight + 40.0,
              child: Image(
                image: AssetImage("assets/images/notificationsbackground.jpg"),
                fit: BoxFit.cover,
                width: double.infinity,
                height: double.infinity,
              ),
            ),
          ),
          //User Profile Picture.
          Positioned(
            top: oneThirdScreenHeight - 110.0,
            left: (screenSize.width * 0.5) - 50.0,
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  width: 4.0,
                  color: Colors.white,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(58.0),
                ),
              ),
              child: CustomCircleAvatar(
                imageSource:
                    'https://p4.wallpaperbetter.com/wallpaper/322/317/310/look-face-style-portrait-makeup-hd-wallpaper-preview.jpg',
                avatarRadius: 55.0,
                isAssetImage: false,
              ),
            ),
          ),
          //Hover Container.
          Positioned(
            top: 0.0,
            child: Container(
              width: screenSize.width,
              height: oneThirdScreenHeight + 40.0,
              color: Colors.white.withOpacity(0.7),
            ),
          ),
          //Back Button.
          Positioned(
            top: 40.0,
            left: 15.0,
            child: Container(
              width: 35.0,
              height: 35.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(25.0),
                ),
                color: Color(0xFFF5989D),
              ),
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.close),
                color: Colors.white,
                iconSize: 20.0,
              ),
            ),
          ),
          //Edit Cover Photo Button.
          Positioned(
            top: 40.0,
            right: 15.0,
            child: Container(
              width: 35.0,
              height: 35.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(25.0),
                ),
                color: Color(0xFFF5989D),
              ),
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.add_a_photo),
                color: Colors.white,
                iconSize: 20.0,
              ),
            ),
          ),
          //Edit Profile Picture Button.
          Positioned(
            top: oneThirdScreenHeight - 30.0,
            left: (screenSize.width * 0.5) + 30.0,
            child: Container(
              width: 35.0,
              height: 35.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(25.0),
                ),
                color: Color(0xFFF5989D),
              ),
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.add_a_photo),
                color: Colors.white,
                iconSize: 20.0,
              ),
            ),
          ),
          //Screen Body.
          Positioned(
            top: oneThirdScreenHeight + 20.0,
            left: 0.0,
            right: 0.0,
            child: Container(
              height: screenSize.height - (oneThirdScreenHeight - 75.0),
              width: screenSize.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 50.0,
                  ),
                  //Name Label.
                  Padding(
                    padding: EdgeInsets.only(
                      left: 60.0,
                      bottom: 5.0,
                    ),
                    child: Text(
                      "Name",
                      style: TextStyle(
                        fontFamily: KPrimaryFontFamily,
                        fontSize: 17.0,
                        color: Color(0xFFafaeae),
                        fontWeight: FontWeight.w700,
                        height: 1.0,
                      ),
                    ),
                  ),
                  //Name Value.
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 20.0,
                      right: 20.0,
                    ),
                    child: Container(
                      width: double.infinity,
                      height: 40.0,
                      padding: EdgeInsets.only(
                        top: 8.0,
                        bottom: 8.0,
                        left: 25.0,
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 2.0,
                          color: Color(0xFFF5989D),
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            45.0,
                          ),
                        ),
                      ),
                      child: EditProfileTextField(
                        controller: nameController,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  //Bio Label.
                  Padding(
                    padding: EdgeInsets.only(
                      left: 60.0,
                      bottom: 5.0,
                    ),
                    child: Text(
                      "Bio",
                      style: TextStyle(
                        fontFamily: KPrimaryFontFamily,
                        fontSize: 17.0,
                        color: Color(0xFFafaeae),
                        fontWeight: FontWeight.w700,
                        height: 1.0,
                      ),
                    ),
                  ),
                  //Bio Value.
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 20.0,
                      right: 20.0,
                    ),
                    child: Container(
                      width: double.infinity,
                      height: 40.0,
                      padding: EdgeInsets.only(
                        top: 8.0,
                        bottom: 8.0,
                        left: 25.0,
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 2.0,
                          color: Color(0xFFF5989D),
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            45.0,
                          ),
                        ),
                      ),
                      child: EditProfileTextField(
                        controller: bioController,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  //BirthDate & Location.
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      //Birth Data.
                      Column(
                        children: [
                          //BirthDate Label.
                          Padding(
                            padding: EdgeInsets.only(
                              bottom: 5.0,
                            ),
                            child: Text(
                              "Birth Date",
                              style: TextStyle(
                                fontFamily: KPrimaryFontFamily,
                                fontSize: 17.0,
                                color: Color(0xFFafaeae),
                                fontWeight: FontWeight.w700,
                                height: 1.0,
                              ),
                            ),
                          ),
                          //BirthDate Value.
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 20.0,
                              right: 20.0,
                            ),
                            child: Container(
                              width: 160.0,
                              height: 35.0,
                              padding: EdgeInsets.only(
                                top: 8.0,
                                bottom: 8.0,
                                left: 25.0,
                              ),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: 2.0,
                                  color: Color(0xFFF5989D),
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(
                                    45.0,
                                  ),
                                ),
                              ),
                              child: EditProfileTextField(
                                controller: birthDateController,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      //Location.
                      Column(
                        children: [
                          //Location Label.
                          Padding(
                            padding: EdgeInsets.only(
                              bottom: 5.0,
                            ),
                            child: Text(
                              "Location",
                              style: TextStyle(
                                fontFamily: KPrimaryFontFamily,
                                fontSize: 17.0,
                                color: Color(0xFFafaeae),
                                fontWeight: FontWeight.w700,
                                height: 1.0,
                              ),
                            ),
                          ),
                          //Location Value.
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 20.0,
                              right: 20.0,
                            ),
                            child: Container(
                              width: 160.0,
                              height: 40.0,
                              padding: EdgeInsets.only(
                                top: 8.0,
                                bottom: 8.0,
                                left: 25.0,
                              ),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: 2.0,
                                  color: Color(0xFFF5989D),
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(
                                    45.0,
                                  ),
                                ),
                              ),
                              child: EditProfileTextField(
                                controller: locationController,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  //Link Label.
                  Padding(
                    padding: EdgeInsets.only(
                      left: 60.0,
                      bottom: 5.0,
                    ),
                    child: Text(
                      "Link",
                      style: TextStyle(
                        fontFamily: KPrimaryFontFamily,
                        fontSize: 17.0,
                        color: Color(0xFFafaeae),
                        fontWeight: FontWeight.w700,
                        height: 1.0,
                      ),
                    ),
                  ),
                  //Link Value.
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 20.0,
                      right: 20.0,
                    ),
                    child: Container(
                      width: double.infinity,
                      height: 40.0,
                      padding: EdgeInsets.only(
                        top: 8.0,
                        bottom: 8.0,
                        left: 25.0,
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 2.0,
                          color: Color(0xFFF5989D),
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            45.0,
                          ),
                        ),
                      ),
                      child: EditProfileTextField(
                        controller: linkController,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  //Confirm Button.
                  Center(
                    child: Container(
                      width: 110.0,
                      height: 35.0,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          elevation: MaterialStateProperty.all(5.0),
                          backgroundColor: MaterialStateProperty.all(
                            Color(0xFFf0a3ad),
                          ),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(45.0),
                            ),
                          ),
                        ),
                        onPressed: () {},
                        child: Text(
                          "Confirm",
                          style: TextStyle(
                            fontFamily: KPrimaryFontFamily,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                          ),
                        ),
                      ),
                    ),
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
