import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobile;
  final Widget tablat;
  final Widget desktop;
  const ResponsiveLayout(
      {super.key,
      required this.mobile,
      required this.tablat,
      required this.desktop});

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 750;
  static bool istablet(BuildContext context) =>
      MediaQuery.of(context).size.width < 1100 &&
      MediaQuery.of(context).size.width >= 750;
  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1100;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constrains) {
      if (constrains.maxWidth >= 1100) {
        return desktop;
      } else if (constrains.maxWidth >= 650) {
        return tablat;
      } else {
        return mobile;
      }
    });
  }
}
