import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:salony_from_scratch/components/home_screen_card.dart';
import 'package:salony_from_scratch/components/home_screen_card_vertical.dart';
import 'package:salony_from_scratch/components/constants.dart';

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
          color: Colors.red,
          child: Center(
            child: Text(
              "Under Development",
              style: TextStyle(
                color: Colors.black,
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          // child: Stack(
          //   children: [
          //     Positioned(
          //       top: 0.0,
          //       right: 0.0,
          //       child: Container(
          //         height: oneThirdScreenHeight - (oneThirdScreenHeight * 0.2),
          //         width: screenSize.width - (screenSize.width * 0.3),
          //         color: Colors.white,
          //         // child: ClipPath(
          //         //   clipper: TriangleClipper(),
          //         //   child: Image.asset(
          //         //     "assets/images/salonyhomebackground.jpg",
          //         //     fit: BoxFit.cover,
          //         //   ),
          //         // ),
          //       ),
          //     ),
          //   ],
          // ),
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

// class TriangleClipper extends CustomClipper<Path> {
//   @override
//   Path getClip(Size size) {
//     final path = Path();
//     path.lineTo(
//       size.width,
//       size.height - (size.height * 0.2),
//     );
//     path.quadraticBezierTo(
//       size.width / 2,
//       size.height,
//       size.width * 0.1,
//       size.height - (size.height * 0.2),
//     );
//     path.quadraticBezierTo(
//       0.0,
//       size.height / 2,
//       size.width * 0.2,
//       0.0,
//     );
//     path.lineTo(
//       size.width * 0.2,
//       0.0,
//     );
//     path.close();
//     return path;
//   }

//   @override
//   bool shouldReclip(TriangleClipper oldClipper) => false;
// }
