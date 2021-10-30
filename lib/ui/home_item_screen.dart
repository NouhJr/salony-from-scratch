import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:salony_from_scratch/components/home_screen_card.dart';
import 'package:salony_from_scratch/components/home_screen_card_vertical.dart';
import 'package:salony_from_scratch/components/constants.dart';
import 'package:salony_from_scratch/components/circleAvatar.dart';
import 'package:salony_from_scratch/components/searchContainer.dart';
import 'package:salony_from_scratch/components/custom_page_router_animation.dart';
import 'package:salony_from_scratch/ui/user_profile_screen.dart';

class HomeItem extends StatefulWidget {
  @override
  _HomeItemState createState() => _HomeItemState();
}

class _HomeItemState extends State<HomeItem> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    var oneThirdScreenHeight = screenSize.height / 3;
    return Column(
      children: [
        //The First One Third Of The Screen.
        Container(
          height: oneThirdScreenHeight,
          width: screenSize.width,
          color: Colors.white,
          child: Stack(
            children: [
              //Background Image.
              Positioned(
                top: -20.0,
                right: 0.0,
                child: Container(
                  width: 350.0,
                  height: 270.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        "assets/images/homebackground.png",
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              //Salony Text Logo.
              Positioned(
                top: 10.0,
                left: 10.0,
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
              //Profile Avatar.
              Positioned(
                top: 15.0,
                right: 10.0,
                child: InkWell(
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
                    avatarRadius: 20.0,
                    isAssetImage: false,
                  ),
                ),
              ),
              //Search TextField.
              Positioned(
                top: 70.0,
                left: 10.0,
                child: CustomSearchContainer(
                  customWidth: 180.0,
                  customHeight: 35.0,
                  customFontSize: 18.0,
                ),
              ),
              //Salony Image Logo.
              Positioned(
                top: 165.0,
                left: 15.0,
                child: Container(
                  width: 60.0,
                  height: 70.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        "assets/images/salonylogoimage.png",
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              //Favourite Label.
              Positioned(
                top: oneThirdScreenHeight - 30.0,
                left: 10.0,
                child: Container(
                  width: 100.0,
                  height: 25.0,
                  child: Text(
                    "Favourite",
                    style: TextStyle(
                      fontFamily: KPrimaryFontFamily,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              //MakeUp Artisit Tab.
              Positioned(
                top: oneThirdScreenHeight - 100.0,
                left: (screenSize.width / 2) - 30.0,
                child: Container(
                  height: 95.0,
                  width: 75.0,
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
                        top: 10.0,
                        left: 10.0,
                        child: IconButton(
                          onPressed: () {
                            // setState(() {
                            //   isSalons = true;
                            //   isMakeUpArtist = false;
                            //   isSkinCare = false;
                            //   isNisha = false;
                            //   isOffers = false;
                            // });
                          },
                          icon: Image.asset('assets/images/womenhairbig.png'),
                          iconSize: 55.0,
                        ),
                      ),
                      Positioned(
                        top: 52.0,
                        left: 8.0,
                        child: Text(
                          "Artists",
                          style: TextStyle(
                            fontSize: 13.0,
                            fontFamily: KPrimaryFontFamily,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              //Salons Tab.
              Positioned(
                top: 110.0,
                left: 70.0,
                child: Container(
                  height: 70.0,
                  width: 50.0,
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
                        top: 5.0,
                        left: 3.0,
                        child: IconButton(
                          onPressed: () {
                            // setState(() {
                            //   isSalons = true;
                            //   isMakeUpArtist = false;
                            //   isSkinCare = false;
                            //   isNisha = false;
                            //   isOffers = false;
                            // });
                          },
                          icon: Image.asset(
                            'assets/images/facialtreatmentbig.png',
                          ),
                        ),
                      ),
                      Positioned(
                        top: 40.0,
                        left: 10.0,
                        child: Text(
                          "Salons",
                          style: TextStyle(
                            fontSize: 10.0,
                            fontFamily: KPrimaryFontFamily,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              //Offers Tab.
              Positioned(
                top: 150.0,
                left: 120.0,
                child: Container(
                  height: 70.0,
                  width: 50.0,
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
                        top: 7.0,
                        left: 3.0,
                        child: IconButton(
                          onPressed: () {
                            // setState(() {
                            //   isSalons = true;
                            //   isMakeUpArtist = false;
                            //   isSkinCare = false;
                            //   isNisha = false;
                            //   isOffers = false;
                            // });
                          },
                          icon: Image.asset('assets/images/botox.png'),
                        ),
                      ),
                      Positioned(
                        top: 42.0,
                        left: 10.0,
                        child: Text(
                          "Offers",
                          style: TextStyle(
                            fontSize: 10.0,
                            fontFamily: KPrimaryFontFamily,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              //Skin Care Tab.
              Positioned(
                top: 195.0,
                left: 270.0,
                child: Container(
                  height: 70.0,
                  width: 50.0,
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
                        top: 5.0,
                        left: 3.0,
                        child: IconButton(
                          onPressed: () {
                            // setState(() {
                            //   isSalons = true;
                            //   isMakeUpArtist = false;
                            //   isSkinCare = false;
                            //   isNisha = false;
                            //   isOffers = false;
                            // });
                          },
                          icon: Image.asset('assets/images/shampoobig.png'),
                        ),
                      ),
                      Positioned(
                        top: 40.0,
                        left: 8.0,
                        child: Text(
                          "SkinCare",
                          style: TextStyle(
                            fontSize: 10.0,
                            fontFamily: KPrimaryFontFamily,
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              //Nisha Tab.
              Positioned(
                top: 200.0,
                left: 340.0,
                child: Container(
                  height: 70.0,
                  width: 50.0,
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
                        top: 5.0,
                        left: 3.0,
                        child: IconButton(
                          onPressed: () {
                            // setState(() {
                            //   isSalons = true;
                            //   isMakeUpArtist = false;
                            //   isSkinCare = false;
                            //   isNisha = false;
                            //   isOffers = false;
                            // });
                          },
                          icon: Image.asset('assets/images/creambig.png'),
                        ),
                      ),
                      Positioned(
                        top: 40.0,
                        left: 13.0,
                        child: Text(
                          "Nisha",
                          style: TextStyle(
                            fontSize: 10.0,
                            fontFamily: KPrimaryFontFamily,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        //The Second One Third Of The Screen.
        Container(
          height: oneThirdScreenHeight,
          width: screenSize.width,
          child: Swiper(
            itemBuilder: (BuildContext context, index) => CustomCard(),
            itemCount: 3,
            viewportFraction: 0.9,
            loop: false,
          ),
        ),
        //Recent Label.
        Container(
          width: screenSize.width,
          height: 25.0,
          margin: EdgeInsets.only(
            left: screenSize.width * 0.05,
          ),
          child: Text(
            "Recent",
            style: TextStyle(
              fontFamily: KPrimaryFontFamily,
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
              color: Colors.black,
            ),
          ),
        ),
        //The Third One Third Of The Screen.
        Expanded(
          child: Swiper(
            itemBuilder: (BuildContext context, int index) =>
                CustomCardVertical(),
            itemCount: 3,
            viewportFraction: 0.6,
            loop: false,
            scrollDirection: Axis.vertical,
          ),
        ),
      ],
    );
  }
}
