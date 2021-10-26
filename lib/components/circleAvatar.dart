import 'package:flutter/material.dart';

class CustomCircleAvatar extends StatelessWidget {
  final String imageSource;
  final double avatarRadius;
  final bool isAssetImage;
  CustomCircleAvatar({
    required this.imageSource,
    required this.avatarRadius,
    required this.isAssetImage,
  });
  @override
  Widget build(BuildContext context) {
    return isAssetImage
        ? CircleAvatar(
            backgroundImage: AssetImage(imageSource),
            radius: avatarRadius,
          )
        : CircleAvatar(
            backgroundImage: NetworkImage(imageSource),
            radius: avatarRadius,
          );
  }
}
