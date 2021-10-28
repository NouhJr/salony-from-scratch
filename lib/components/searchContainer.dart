import 'package:flutter/material.dart';
import 'package:salony_from_scratch/components/constants.dart';

class CustomSearchContainer extends StatelessWidget {
  final double customWidth;
  final double customHeight;
  final double customFontSize;
  CustomSearchContainer({
    required this.customWidth,
    required this.customHeight,
    required this.customFontSize,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      width: customWidth,
      height: customHeight,
      padding: EdgeInsets.all(
        8.0,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.white,
      ),
      child: Text(
        "Search...",
        style: TextStyle(
          fontFamily: KPrimaryFontFamily,
          fontSize: customFontSize,
          color: Color(0xFFafaeae),
          fontWeight: FontWeight.w700,
          height: 1.0,
        ),
      ),
    );
  }
}
