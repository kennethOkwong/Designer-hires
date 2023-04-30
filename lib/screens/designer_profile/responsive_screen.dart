import 'dart:convert';
import 'dart:developer';
import 'package:designer_hires/models/designer.dart';
import 'package:designer_hires/responsive/responsive_layout.dart';
import 'package:designer_hires/screens/designer_profile/desktop_screen.dart';
import 'package:designer_hires/screens/designer_profile/ipad_screen.dart';
import 'package:designer_hires/screens/designer_profile/mobile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DesignerProfile extends StatefulWidget {
  const DesignerProfile({super.key});

  @override
  State<DesignerProfile> createState() => _DesignerProfileState();
}

class _DesignerProfileState extends State<DesignerProfile> {
  // late Designer _designer;

  Future<Designer> _readJson() async {
    // Designer designer;
    final jsonString =
        await rootBundle.loadString('assets/jsons/designer_profile.json');
    final decodedJson = jsonDecode(jsonString);
    log(decodedJson.toString());
    final designer = Designer.fromJson(decodedJson);
    return designer;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _readJson(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          log(snapshot.data.toString());
          log('message');
          if (snapshot.hasData) {
            return SafeArea(
              child: Scaffold(
                backgroundColor: Colors.black,
                body: Padding(
                  padding: const EdgeInsets.all(10),
                  child: SingleChildScrollView(
                    child: ResponsiveLayout(
                      mobileScreen: MobileScreen(
                        designer: snapshot.data!,
                      ),
                      ipadScreen: IpadScreen(
                        designer: snapshot.data!,
                      ),
                      desktopScreen: DesktopScreen(
                        designer: snapshot.data!,
                      ),
                    ),
                  ),
                ),
              ),
            );
          } else {
            log(snapshot.stackTrace.toString());
            log(snapshot.error.toString());
            return Center(
              child: Text(snapshot.error.toString()),
            );
          }
        } else {
          return const Center(
            child: Text('Loading data...'),
          );
        }
      },
    );
  }
}
