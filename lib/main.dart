import 'package:designer_hires/constants/theme_data.dart';
import 'package:designer_hires/screens/designer_profile/responsive_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Designer Hire',
      theme: customThemeData,
      home: const DesignerProfile(),
    ),
  );
}
