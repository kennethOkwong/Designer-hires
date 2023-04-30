import 'package:designer_hires/custom_widgets/about_section.dart';
import 'package:designer_hires/custom_widgets/achievement_section.dart';
import 'package:designer_hires/custom_widgets/hire_me.dart';
import 'package:designer_hires/custom_widgets/ui_portfolio_section.dart';
import 'package:designer_hires/custom_widgets/profile_section.dart';
import 'package:designer_hires/custom_widgets/search_bar.dart';
import 'package:designer_hires/models/designer.dart';
import 'package:flutter/material.dart';

class DesktopScreen extends StatelessWidget {
  const DesktopScreen({super.key, required this.designer});

  final Designer designer;

  @override
  Widget build(BuildContext context) {
    // return const Text('Desktop');
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          height: 350,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  children: [
                    HireMe(textStyle: Theme.of(context).textTheme.titleLarge!),
                    const SizedBox(
                      height: 10,
                    ),
                    Flexible(
                      fit: FlexFit.tight,
                      child: Achievement(
                        experienceCount: designer.yearsOfExperience,
                        projectCount: designer.handledProjects,
                        clientCount: designer.clients,
                        widgetHeight: 150,
                        alignment: CrossAxisAlignment.stretch,
                        countsTextStyle:
                            Theme.of(context).textTheme.titleLarge!,
                        labelsTextStyle:
                            Theme.of(context).textTheme.labelLarge!,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const SearchBar(),
                    const SizedBox(
                      height: 10,
                    ),
                    Expanded(
                      child: Profile(
                        designerName: designer.name,
                        basedIn: designer.basedIn,
                        profilePhotoURL: designer.profilePictureUrl,
                        gridCount: 2,
                        widgetHeight: 250,
                        alignment: CrossAxisAlignment.stretch,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          height: 250,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 4,
                child: Column(
                  children: [
                    Flexible(
                      fit: FlexFit.tight,
                      child: Portfolio(
                        image1: designer.uiPortfolio[0],
                        image2: designer.uiPortfolio[1],
                        image3: designer.uiPortfolio[2],
                        widgetHeight: 150,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 3,
                child: AboutSection(about: designer.about),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
