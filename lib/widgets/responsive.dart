import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class responsive extends StatelessWidget {
  final Widget desktop;
  final Widget taplet;
  final Widget mobile;
  final Widget mobilelarge;

  responsive(
      {required this.desktop,
      required this.taplet,
      required this.mobile,
      required this.mobilelarge});

  static bool isDesktop(BuildContext context) {
    return MediaQuery.of(context).size.width >= 1024;
  }

  static bool isTaplet(BuildContext context) {
    return MediaQuery.of(context).size.width < 1024;
  }

  static bool isMobilelarge(BuildContext context) {
    return MediaQuery.of(context).size.width <= 700;
  }

  static bool isMobile(BuildContext context) {
    return MediaQuery.of(context).size.width <= 500;
  }

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;

    if (_size.width >= 1024) {
      return desktop;
    } else if (_size.width >= 700 && taplet !=null) {
      return taplet;
    } else if (_size.width >= 450 && mobilelarge !=null) {
      return mobilelarge;
    } else{
      return mobile;
    }
  }
}
