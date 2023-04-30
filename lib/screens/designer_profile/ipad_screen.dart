import 'package:designer_hires/custom_widgets/about_section.dart';
import 'package:designer_hires/custom_widgets/achievement_section.dart';
import 'package:designer_hires/custom_widgets/hire_me.dart';
import 'package:designer_hires/custom_widgets/ui_portfolio_section.dart';
import 'package:designer_hires/custom_widgets/profile_section.dart';
import 'package:designer_hires/custom_widgets/search_bar.dart';
import 'package:designer_hires/models/designer.dart';
import 'package:flutter/material.dart';

class IpadScreen extends StatelessWidget {
  const IpadScreen({super.key, required this.designer});

  final Designer designer;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SearchBar(),
          HireMe(
            textStyle: Theme.of(context).textTheme.titleMedium!,
          ),
          const SizedBox(
            height: 10,
          ),
          Achievement(
            experienceCount: designer.yearsOfExperience,
            projectCount: designer.handledProjects,
            clientCount: designer.clients,
            widgetHeight: 200,
            countsTextStyle: Theme.of(context).textTheme.titleMedium!,
            labelsTextStyle: Theme.of(context).textTheme.labelMedium!,
          ),
          const SizedBox(
            height: 10,
          ),
          Profile(
            designerName: designer.name,
            basedIn: designer.basedIn,
            profilePhotoURL: designer.profilePictureUrl,
            gridCount: 2,
            widgetHeight: 350,
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
