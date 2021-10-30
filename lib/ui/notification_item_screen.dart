import 'package:flutter/material.dart';
import 'package:salony_from_scratch/components/constants.dart';
import 'package:salony_from_scratch/components/circleAvatar.dart';
import 'package:salony_from_scratch/components/custom_page_router_animation.dart';
import 'package:salony_from_scratch/ui/user_profile_screen.dart';

class Notifications extends StatefulWidget {
  @override
  _NotificationsState createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    var oneThirdScreenHeight = screenSize.height / 3;
    var space = screenSize.height - (oneThirdScreenHeight - 75.0);
    return Stack(
      children: [
        //Background Image.
        Positioned(
          top: 0.0,
          child: Stack(
            children: [
              Container(
                width: screenSize.width,
                height: oneThirdScreenHeight + 15.0,
                child: Image(
                  image:
                      AssetImage("assets/images/notificationsbackground.jpg"),
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: double.infinity,
                ),
              ),
              Container(
                width: screenSize.width,
                height: oneThirdScreenHeight + 15.0,
                color: Colors.white.withOpacity(0.7),
              ),
            ],
          ),
        ),
        //User Data.
        Positioned(
          top: 110.0,
          left: 35.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    AnimatedRouting(
                      childScreen: UserProfile(),
                      transitionDirection: AxisDirection.up,
                    ),
                  );
                },
                child: CustomCircleAvatar(
                  imageSource:
                      'https://p4.wallpaperbetter.com/wallpaper/322/317/310/look-face-style-portrait-makeup-hd-wallpaper-preview.jpg',
                  avatarRadius: 30.0,
                  isAssetImage: false,
                ),
              ),
              SizedBox(
                width: 10.0,
              ),
              Text(
                "User Name",
                style: TextStyle(
                  fontFamily: KPrimaryFontFamily,
                  fontSize: 19.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              )
            ],
          ),
        ),
        //Screen Body.
        Positioned(
          top: oneThirdScreenHeight - 75.0,
          left: 0.0,
          right: 0.0,
          child: Container(
            height: screenSize.height - (oneThirdScreenHeight - 75.0),
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
            //Screen Content.
            child: Column(
              children: [
                SizedBox(
                  height: 15.0,
                ),
                //Notifications Title.
                Center(
                  child: Text(
                    "Notifications",
                    style: TextStyle(
                      fontFamily: KPrimaryFontFamily,
                      fontSize: 20.0,
                      color: Color(0xFFafaeae),
                      fontWeight: FontWeight.w700,
                      height: 1.0,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                //Buttons.
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: 110.0,
                      height: 35.0,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          elevation: MaterialStateProperty.all(10.0),
                          backgroundColor: MaterialStateProperty.all(
                            Color(0xFFf0a3ad),
                          ),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                        ),
                        onPressed: () {},
                        child: Text(
                          "All",
                          style: TextStyle(
                            fontFamily: KPrimaryFontFamily,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 110.0,
                      height: 35.0,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          elevation: MaterialStateProperty.all(10.0),
                          backgroundColor: MaterialStateProperty.all(
                            Color(0xFF323C57),
                          ),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                        ),
                        onPressed: () {},
                        child: Text(
                          "Orders",
                          style: TextStyle(
                            fontFamily: KPrimaryFontFamily,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30.0,
                ),
                Container(
                  height: space - 120.0,
                  width: screenSize.width,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListView.separated(
                      shrinkWrap: true,
                      itemCount: 5,
                      itemBuilder: (BuildContext context, index) => ListTile(
                        leading: CustomCircleAvatar(
                          imageSource:
                              'https://p4.wallpaperbetter.com/wallpaper/322/317/310/look-face-style-portrait-makeup-hd-wallpaper-preview.jpg',
                          avatarRadius: 25.0,
                          isAssetImage: false,
                        ),
                        title: Text(
                          "Title",
                          style: TextStyle(
                            fontFamily: KPrimaryFontFamily,
                            fontSize: 19.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      separatorBuilder: (BuildContext context, index) =>
                          Divider(
                        thickness: 0.5,
                        indent: 20.0,
                        endIndent: 20.0,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
