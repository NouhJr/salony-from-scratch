import 'package:flutter/material.dart';
import 'package:salony_from_scratch/components/constants.dart';
import 'package:salony_from_scratch/components/circleAvatar.dart';
import 'package:salony_from_scratch/ui/makeup_artist_screen.dart';

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  bool isMakeUpArtist = true;
  bool isSalons = false;
  bool isOffers = false;
  bool isSkinCare = false;
  bool isNisha = false;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    var oneThirdScreenHeight = screenSize.height / 3;
    return Stack(
      children: [
        //Background Image.
        Positioned(
          top: 0.0,
          child: Container(
            width: screenSize.width,
            height: oneThirdScreenHeight + 15.0,
            child: Image(
              image: AssetImage("assets/images/categoriesbackground.jpg"),
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
          ),
        ),
        //Account & Searsh tabs.
        Positioned(
          top: 20.0,
          right: 15.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomCircleAvatar(
                imageSource:
                    'https://p4.wallpaperbetter.com/wallpaper/322/317/310/look-face-style-portrait-makeup-hd-wallpaper-preview.jpg',
                avatarRadius: 20.0,
                isAssetImage: false,
              ),
              SizedBox(
                width: 10.0,
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search,
                  size: 35.0,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
        //Salony Text Logo.
        Positioned(
          top: 160.0,
          right: 35.0,
          child: Container(
            width: 150.0,
            height: 50.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "assets/images/salonyWord.png",
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        //Screen Body.
        Positioned(
          top: oneThirdScreenHeight - 25.0,
          left: 0.0,
          right: 0.0,
          child: Container(
            height: screenSize.height - (oneThirdScreenHeight - 25.0),
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
            child: isMakeUpArtist ? MakeUpArtist() : null,
          ),
        ),
        //Animated tabs.
        Positioned(
          top: 200.0,
          left: 38.0,
          child: Row(
            children: [
              //Salons Tab.
              AnimatedContainer(
                duration: Duration(milliseconds: 400),
                height: isSalons ? 95.0 : 75.0,
                width: isSalons ? 75.0 : 55.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      spreadRadius: 5,
                      blurRadius: 5,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: isSalons ? 15.0 : 10.0,
                      left: isSalons ? 15.0 : 5.0,
                      child: IconButton(
                        onPressed: () {
                          setState(() {
                            isSalons = true;
                            isMakeUpArtist = false;
                            isSkinCare = false;
                            isNisha = false;
                            isOffers = false;
                          });
                        },
                        icon:
                            Image.asset('assets/images/facialtreatmentbig.png'),
                      ),
                    ),
                    Positioned(
                      top: isSalons ? 55.0 : 45.0,
                      left: isSalons ? 15.0 : 13.0,
                      child: Text(
                        "Salons",
                        style: TextStyle(
                          fontSize: isSalons ? 16.0 : 10.0,
                          fontFamily: KPrimaryFontFamily,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 10.0,
              ),
              //Offers Tab.
              AnimatedContainer(
                duration: Duration(milliseconds: 400),
                height: isOffers ? 95.0 : 75.0,
                width: isOffers ? 75.0 : 55.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      spreadRadius: 5,
                      blurRadius: 5,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: isOffers ? 15.0 : 10.0,
                      left: isOffers ? 15.0 : 5.0,
                      child: IconButton(
                        onPressed: () {
                          setState(() {
                            isSalons = false;
                            isMakeUpArtist = false;
                            isSkinCare = false;
                            isNisha = false;
                            isOffers = true;
                          });
                        },
                        icon: Image.asset('assets/images/botox.png'),
                      ),
                    ),
                    Positioned(
                      top: isOffers ? 55.0 : 45.0,
                      left: isOffers ? 16.0 : 15.0,
                      child: Text(
                        "Offers",
                        style: TextStyle(
                          fontSize: isOffers ? 16.0 : 10.0,
                          fontFamily: KPrimaryFontFamily,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 10.0,
              ),
              //MakeUp Artists Tab.
              AnimatedContainer(
                duration: Duration(milliseconds: 400),
                height: isMakeUpArtist ? 95.0 : 75.0,
                width: isMakeUpArtist ? 75.0 : 55.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      spreadRadius: 5,
                      blurRadius: 5,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: isMakeUpArtist ? 10.0 : 5.0,
                      left: isMakeUpArtist ? 10.0 : 5.0,
                      child: IconButton(
                        onPressed: () {
                          setState(() {
                            isSalons = false;
                            isMakeUpArtist = true;
                            isSkinCare = false;
                            isNisha = false;
                            isOffers = false;
                          });
                        },
                        icon: Image.asset('assets/images/womenhairbig.png'),
                        iconSize: isMakeUpArtist ? 55.0 : 45.0,
                      ),
                    ),
                    Positioned(
                      top: isMakeUpArtist ? 52.0 : 40.0,
                      left: isMakeUpArtist ? 8.0 : 7.0,
                      child: Text(
                        "Artists",
                        style: TextStyle(
                          fontSize: isMakeUpArtist ? 13.0 : 10.0,
                          fontFamily: KPrimaryFontFamily,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 10.0,
              ),
              //Skin Care Tab.
              AnimatedContainer(
                duration: Duration(milliseconds: 400),
                height: isSkinCare ? 95.0 : 75.0,
                width: isSkinCare ? 75.0 : 55.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      spreadRadius: 5,
                      blurRadius: 5,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: isSkinCare ? 12.0 : 5.0,
                      left: isSkinCare ? 15.0 : 5.0,
                      child: IconButton(
                        onPressed: () {
                          setState(() {
                            isSalons = false;
                            isMakeUpArtist = false;
                            isSkinCare = true;
                            isNisha = false;
                            isOffers = false;
                          });
                        },
                        icon: Image.asset('assets/images/shampoobig.png'),
                      ),
                    ),
                    Positioned(
                      top: isSkinCare ? 52.0 : 42.0,
                      left: isSkinCare ? 12.0 : 10.0,
                      child: Text(
                        "Skin Care",
                        style: TextStyle(
                          fontSize: isSkinCare ? 13.0 : 9.0,
                          fontFamily: KPrimaryFontFamily,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 10.0,
              ),
              //Nisha Tab.
              AnimatedContainer(
                duration: Duration(milliseconds: 400),
                height: isNisha ? 95.0 : 75.0,
                width: isNisha ? 75.0 : 55.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      spreadRadius: 5,
                      blurRadius: 5,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: isNisha ? 13.0 : 8.0,
                      left: isNisha ? 13.0 : 5.0,
                      child: IconButton(
                        onPressed: () {
                          setState(() {
                            isSalons = false;
                            isMakeUpArtist = false;
                            isSkinCare = false;
                            isNisha = true;
                            isOffers = false;
                          });
                        },
                        icon: Image.asset('assets/images/creambig.png'),
                      ),
                    ),
                    Positioned(
                      top: isNisha ? 52.0 : 42.0,
                      left: isNisha ? 17.0 : 15.0,
                      child: Text(
                        "Nisha",
                        style: TextStyle(
                          fontSize: isNisha ? 16.0 : 10.0,
                          fontFamily: KPrimaryFontFamily,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
