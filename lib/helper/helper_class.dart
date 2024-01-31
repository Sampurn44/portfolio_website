import 'package:flutter/material.dart';

class HelperClass extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;
  final Widget desktop;
  final double paddingWidth;
  final Color bgColor;
  final bool isfotter;
  const HelperClass({
    super.key,
    required this.mobile,
    required this.tablet,
    required this.desktop,
    required this.paddingWidth,
    required this.bgColor,
    this.isfotter = false,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 768) {
        return Container(
          //height: size.height,
          width: size.width,
          alignment: Alignment.center,
          color: bgColor,
          padding: EdgeInsets.symmetric(
              vertical: size.height * 0.1, horizontal: paddingWidth),
          child: mobile,
        );
      } else if (constraints.maxWidth < 1200) {
        return Container(
          // height: size.height,
          width: size.width,
          alignment: Alignment.center,
          color: bgColor,
          padding: EdgeInsets.symmetric(
              vertical: size.height * 0.1, horizontal: paddingWidth),
          child: tablet,
        );
      } else {
        return Container(
          height: isfotter ? 307 : size.height,
          width: size.width,
          alignment: Alignment.center,
          color: bgColor,
          padding: EdgeInsets.symmetric(
              vertical: size.height * 0.01, horizontal: paddingWidth),
          child: desktop,
        );
      }
    });
  }
}
