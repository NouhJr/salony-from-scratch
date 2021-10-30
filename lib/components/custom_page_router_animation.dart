import 'package:flutter/material.dart';

class AnimatedRouting extends PageRouteBuilder {
  final Widget childScreen;
  final AxisDirection transitionDirection;
  AnimatedRouting({
    required this.childScreen,
    required this.transitionDirection,
  }) : super(
          transitionDuration: Duration(
            milliseconds: 500,
          ),
          reverseTransitionDuration: Duration(
            milliseconds: 500,
          ),
          pageBuilder: (context, animation, seconderyAnimation) => childScreen,
        );

  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation,
          Animation<double> secondaryAnimation, Widget child) =>
      SlideTransition(
        position: Tween<Offset>(
          begin: beginOffset(),
          end: Offset.zero,
        ).animate(animation),
        child: child,
      );

  Offset beginOffset() {
    switch (transitionDirection) {
      case AxisDirection.up:
        return Offset(0, 1);
      case AxisDirection.down:
        return Offset(0, -1);
      case AxisDirection.right:
        return Offset(-1, 0);
      case AxisDirection.left:
        return Offset(1, 0);
    }
  }
}
