import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Profile extends StatelessWidget {
  const Profile({
    super.key,
    required this.gridCount,
    required this.widgetHeight,
    this.alignment,
    required this.profilePhotoURL,
    required this.designerName,
    required this.basedIn,
  });

  final int gridCount;
  final double widgetHeight;
  final String profilePhotoURL;
  final CrossAxisAlignment? alignment;
  final String designerName;
  final String basedIn;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: alignment ?? CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 3,
          child: ProfilePicture(
            photoURL: profilePhotoURL,
            height: widgetHeight,
          ),
        ),
        Expanded(
          flex: 4,
          child: PersonalData(
            name: designerName,
            basedIn: basedIn,
            height: widgetHeight,
          ),
        ),
      ],
    );
  }
}

class ProfilePicture extends StatelessWidget {
  const ProfilePicture({
    super.key,
    required this.height,
    required this.photoURL,
  });

  final double height;
  final String photoURL;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: double.infinity,
      // padding: const EdgeInsets.only(right: 8),
      child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(15)),
        child: Image.network(
          photoURL,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class PersonalData extends StatelessWidget {
  const PersonalData({
    super.key,
    required this.height,
    required this.name,
    required this.basedIn,
  });
  final double height;
  final String name;
  final String basedIn;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: height,
        child: Column(
          children: [
            Card(
              child: Container(
                padding: const EdgeInsets.all(15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Name:',
                      style: TextStyle(color: Colors.grey),
                    ),
                    Text(
                      name,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Card(
                child: Container(
                  padding: const EdgeInsets.all(15.0),
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/map.jpg'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Based in:',
                        style: TextStyle(color: Colors.grey),
                      ),
                      Text(
                        basedIn,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Card(
              child: Container(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 30,
                      width: 30,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color.fromARGB(255, 17, 109, 184)),
                      child: const Center(
                        child: FaIcon(
                          FontAwesomeIcons.linkedinIn,
                          size: 15,
                        ),
                      ),
                    ),
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey.shade900,
                      ),
                      child: const Center(
                        child: FaIcon(
                          FontAwesomeIcons.dribbble,
                          size: 15,
                        ),
                      ),
                    ),
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey.shade900,
                      ),
                      child: const Center(
                        child: FaIcon(
                          FontAwesomeIcons.twitter,
                          size: 15,
                        ),
                      ),
                    ),
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey.shade900,
                      ),
                      child: const Center(
                        child: FaIcon(
                          FontAwesomeIcons.instagram,
                          size: 15,
                        ),
                      ),
                    ),
                    // Text('Name:'),
                    // Text('Kenneth OKwong'),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
