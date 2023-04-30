import 'package:designer_hires/responsive/device_width.dart';
import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout(
      {super.key,
      required this.mobileScreen,
      required this.ipadScreen,
      required this.desktopScreen});

  final Widget mobileScreen;
  final Widget ipadScreen;
  final Widget desktopScreen;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraint) {
        if (constraint.maxWidth < iPadWidth) {
          return mobileScreen;
        } else if (constraint.maxWidth < desktopWidth) {
          return ipadScreen;
        } else {
          return desktopScreen;
        }
      },
    );
  }
}
