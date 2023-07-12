import 'package:designer_hires/custom_widgets/about_section.dart';
import 'package:designer_hires/custom_widgets/achievement_section.dart';
import 'package:designer_hires/custom_widgets/hire_me.dart';
import 'package:designer_hires/custom_widgets/ui_portfolio_section.dart';
import 'package:designer_hires/custom_widgets/profile_section.dart';
import 'package:designer_hires/custom_widgets/search_bar.dart';
import 'package:designer_hires/models/designer.dart';
import 'package:flutter/material.dart' hide SearchBar;

class MobileScreen extends StatelessWidget {
  const MobileScreen({
    super.key,
    required this.designer,
  });

  final Designer designer;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SearchBar(),
          HireMe(
            height: 90,
            textStyle: Theme.of(context).textTheme.titleSmall!,
          ),
          const SizedBox(
            height: 10,
          ),
          Achievement(
            experienceCount: designer.yearsOfExperience,
            projectCount: designer.handledProjects,
            clientCount: designer.clients,
            widgetHeight: 130,
            countsTextStyle: Theme.of(context).textTheme.titleSmall!,
            labelsTextStyle: Theme.of(context).textTheme.labelSmall!,
          ),
          const SizedBox(
            height: 10,
          ),
          Wrap(
            alignment: WrapAlignment.center,
            children: [
              ProfilePicture(
                photoURL: designer.profilePictureUrl,
                height: 200,
              ),
              PersonalData(
                name: designer.name,
                basedIn: designer.basedIn,
                height: 300,
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Portfolio(
            image1: designer.uiPortfolio[0],
            image2: designer.uiPortfolio[1],
            image3: designer.uiPortfolio[2],
            widgetHeight: 130,
          ),
          const SizedBox(
            height: 10,
          ),
          AboutSection(about: designer.about),
        ],
      ),
    );
  }
}
