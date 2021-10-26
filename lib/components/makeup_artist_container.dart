import 'package:flutter/material.dart';
import 'package:salony_from_scratch/components/constants.dart';

class CustomContainer extends StatefulWidget {
  @override
  _CustomContainerState createState() => _CustomContainerState();
}

class _CustomContainerState extends State<CustomContainer> {
  bool isFavouite = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      //Container Properties.
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
        color: Colors.white,
      ),
      //Container Body.
      child: Stack(
        children: [
          //Title Text.
          Positioned(
            top: 45.0,
            left: 20.0,
            child: Text(
              'SALON', //data from back end.
              style: TextStyle(
                fontFamily: KPrimaryFontFamily,
                color: Color(0xFFF5989D),
                fontWeight: FontWeight.bold,
                fontSize: 25.0,
              ),
            ),
          ),
          //Price Text.
          Positioned(
            top: 50.0,
            left: 180.0,
            child: Text(
              '300 L.E',
              style: TextStyle(
                fontFamily: KPrimaryFontFamily,
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 17.0,
              ),
            ),
          ),
          //Tags Icons&Text.
          Positioned(
            top: 75.0,
            left: 20.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset('assets/images/cream.png'),
                Text(
                  '  skin care',
                  style: TextStyle(fontSize: 10.0, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 3.0,
                ),
                Image.asset('assets/images/shampoo.png'),
                Text(
                  '  body care',
                  style: TextStyle(fontSize: 10.0, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 3.0,
                ),
                Image.asset('assets/images/facialtreatment.png'),
                Text(
                  '  make up artist',
                  style: TextStyle(fontSize: 10.0, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          //Rating.
          Positioned(
            top: 100.0,
            left: 20.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  Icons.star,
                  size: 20.0,
                  color: Color(0xFFE49F1E),
                ),
                Text(
                  '5.0', //data from back end.
                  style: TextStyle(
                    color: Color(0xFFE49F1E),
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          //Time.
          Positioned(
            top: 102.0,
            left: 90.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  'assets/images/time.png',
                ),
                SizedBox(
                  width: 5.0,
                ),
                Text(
                  '3H', //data from back end.
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          //Book Now Button.
          Positioned(
            top: 95.0,
            left: 160.0,
            child: InkWell(
              onTap: () {},
              child: Container(
                width: 85.0,
                height: 30.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                  color: Color(0xFFf0a3ad),
                ),
                child: Center(
                  child: Text(
                    "Book Now",
                    style: TextStyle(
                      fontFamily: KPrimaryFontFamily,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 12.0,
                    ),
                  ),
                ),
              ),
            ),
          ),
          //Bookmark Icon Button.
          Positioned(
            top: 45.0,
            right: 20.0,
            child: IconButton(
              onPressed: () {
                setState(() {
                  isFavouite = !isFavouite;
                });
              },
              icon: isFavouite
                  ? Image.asset(
                      "assets/images/bookmark.png",
                    )
                  : Image.asset(
                      "assets/images/bookmarkwhite.png",
                    ),
            ),
          ),
          //Salony Logo.
          Positioned(
            top: 50.0,
            right: 70.0,
            child: Container(
              width: 70.0,
              height: 80.0,
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
        ],
      ),
    );
  }
}
