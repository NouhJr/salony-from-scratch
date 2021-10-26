import 'package:flutter/material.dart';
import 'package:salony_from_scratch/components/constants.dart';

class CustomCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Card(
      //Card Properties.
      color: Colors.white,
      elevation: 7.0,
      margin: EdgeInsets.only(
        left: screenSize.width * .01,
        right: screenSize.width * .01,
        top: screenSize.width * .05,
        bottom: screenSize.width * .05,
      ),
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
            width: double.infinity,
            height: 160.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(25.0),
              ),
              image: DecorationImage(
                  image: AssetImage(
                      "assets/images/cardbackgroundjpg.jpg"), //data from back end.
                  fit: BoxFit.cover),
            ),
          ),
          //Salony Text Logo.
          Positioned(
            top: 100.0,
            right: 20.0,
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
          //Rating Container.
          Positioned(
            top: 15.0,
            left: 15.0,
            child: Container(
              width: 60.0,
              height: 25.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(40.0),
                ),
                color: Colors.white,
              ),
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
          ),
          //Title Text.
          Positioned(
            top: 160.0,
            left: 10.0,
            child: Text(
              'SALON', //data from back end.
              style: TextStyle(
                fontFamily: KPrimaryFontFamily,
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 25.0,
              ),
            ),
          ),
          //Tags Icons&Text.
          Positioned(
            top: 200.0,
            left: 10.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset('assets/images/cream.png'),
                Text(
                  '  skin care',
                  style: TextStyle(
                    fontSize: 12.0,
                  ),
                ),
                SizedBox(
                  width: 3.0,
                ),
                Image.asset('assets/images/shampoo.png'),
                Text(
                  '  body care',
                  style: TextStyle(
                    fontSize: 12.0,
                  ),
                ),
                SizedBox(
                  width: 3.0,
                ),
                Image.asset('assets/images/facialtreatment.png'),
                Text(
                  '  make up artist',
                  style: TextStyle(
                    fontSize: 12.0,
                  ),
                ),
              ],
            ),
          ),
          //Book Now Button.
          Positioned(
            top: 195.0,
            right: 10.0,
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
          //Price Text.
          Positioned(
            top: 170.0,
            right: 15.0,
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
        ],
      ),
    );
  }
}
