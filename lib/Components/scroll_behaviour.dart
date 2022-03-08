import 'package:flutter/material.dart';

class ScrollWithoutMaterialOverflowGlow extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}
