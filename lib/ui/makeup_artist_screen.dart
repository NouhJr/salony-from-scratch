import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:salony_from_scratch/components/constants.dart';
import 'package:salony_from_scratch/components/makeup_artist_container.dart';
import 'package:salony_from_scratch/components/home_screen_card_vertical.dart';

class MakeUpArtist extends StatefulWidget {
  @override
  _MakeUpArtistState createState() => _MakeUpArtistState();
}

class _MakeUpArtistState extends State<MakeUpArtist> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    var oneThirdScreenHeight = screenSize.height / 3;
    var availibleHeight = screenSize.height - (oneThirdScreenHeight - 25.0);
    return Column(
      children: [
        //First Part Of The Screen.
        Container(
          width: screenSize.width,
          height: (availibleHeight / 3) - 50.0,
          child: CustomContainer(),
        ),
        //Second Part Of The Screen.
        Container(
          //Container Properties.
          width: screenSize.width,
          height: availibleHeight / 3,
          margin: EdgeInsets.all(
            10.0,
          ),
          color: Colors.white,
          //Container Body.
          child: Card(
            //Container Properties.
            elevation: 5.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(25.0),
              ),
            ),
            //Card Body.
            child: Stack(
              children: [
                //Background Image.
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(25.0),
                    ),
                    image: DecorationImage(
                        image: AssetImage(
                            "assets/images/map.jpg"), //data from back end.
                        fit: BoxFit.cover),
                  ),
                ),
                //Blur Over The Background Image.
                Container(
                  color: Colors.white.withOpacity(0.7),
                ),
                //Location Data.
                Positioned(
                  top: 70.0,
                  left: 70.0,
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/images/location.png",
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        "Location Data",
                        style: TextStyle(
                          fontFamily: KPrimaryFontFamily,
                          fontSize: 20.0,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        //Last Part Of The Screen.
        Container(
          width: screenSize.width,
          height: availibleHeight / 3,
          color: Colors.white,
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
