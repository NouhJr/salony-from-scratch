import 'package:flutter/material.dart';
import 'package:salony_from_scratch/components/constants.dart';

class CustomCardVertical extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      //Card Properties.
      elevation: 7.0,
      margin: EdgeInsets.only(
        bottom: 10.0,
        left: 20.0,
        right: 20.0,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(25.0),
        ),
      ),
      //Card Body.
      child: Stack(
        children: [
          //Leading Image.
          Positioned(
            top: 10.0,
            left: 0.0,
            child: Container(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              width: 80.0,
              height: 80.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                image: DecorationImage(
                  image: NetworkImage(
                    "https://p4.wallpaperbetter.com/wallpaper/322/317/310/look-face-style-portrait-makeup-hd-wallpaper-preview.jpg",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          //Salony Text Logo.
          Positioned(
            top: 20.0,
            left: 90.0,
            child: Container(
              width: 120.0,
              height: 40.0,
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
          //Tags Icons&Text.
          Positioned(
            top: 70.0,
            left: 90.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset('assets/images/cream.png'),
                Text(
                  'skin care',
                  style: TextStyle(
                    fontSize: 12.0,
                  ),
                ),
                SizedBox(
                  width: 1.0,
                ),
                Image.asset('assets/images/shampoo.png'),
                Text(
                  'body care',
                  style: TextStyle(
                    fontSize: 12.0,
                  ),
                ),
                SizedBox(
                  width: 1.0,
                ),
                Image.asset('assets/images/facialtreatment.png'),
                Text(
                  'makeup',
                  style: TextStyle(
                    fontSize: 12.0,
                  ),
                ),
              ],
            ),
          ),
          //Salony Logo.
          Positioned(
            top: 15.0,
            right: 20.0,
            child: Container(
              width: 30.0,
              height: 30.0,
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
          //Price Text.
          Positioned(
            top: 45.0,
            right: 15.0,
            child: Text(
              '300 L.E',
              style: TextStyle(
                fontFamily: KPrimaryFontFamily,
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 15.0,
              ),
            ),
          ),
          //Book Now Button.
          Positioned(
            top: 65.0,
            right: 5.0,
            child: InkWell(
              onTap: () {},
              child: Container(
                width: 75.0,
                height: 25.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(40.0),
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
        ],
      ),
    );
  }
}
