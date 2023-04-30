import 'package:designer_hires/models/designer.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('designer ...', () {
    final mockD = {
      "personal_data": {
        "name": "Bima Sakti",
        "based_in": "Tanjung Pinang",
        "profile_picture_url":
            "https://media.licdn.com/dms/image/C4D03AQFsEWQDUDmmcA/profile-displayphoto-shrink_400_400/0/1636151504559?e=1687996800&v=beta&t=P-YtGRYxnAsKREs65hRWkdUom6FN5g4bQhxAcSfIExQ",
        "about":
            "Kenneth Okwong is a first-class Computer Engineering graduate of the University of Uyo. He currently works with @Petro as a Technical Product Manager and is enthusiastic about backend web engineering. Kenneth’s love for teaching led him into video content creation, became a  YouTuber at @Cadenny, a platform he created to document his experience and research touching both the nitty-gritty of software design/development and basic Todos in seeing success in the software marketplace. You can reach him on Twitter at @Kenneth_Okwong."
      },
      "portfolio": {
        "years_of_experience": 2,
        "handled_projects": 54,
        "clients": 40,
        "ui_portfolio": [
          "https://cdn.dribbble.com/userupload/4392384/file/still-5dfad859b672d60d7f0258d6be6d8b9a.png?compress=1&resize=450x338&vertical=top",
          "https://cdn.dribbble.com/userupload/6583934/file/original-1487c5b3efcc6c28917a263705cf36d1.jpg?compress=1&resize=450x338&vertical=top",
          "https://cdn.dribbble.com/userupload/5222127/file/original-1a809fc92770dbf83c336a3c7389cb1c.png?compress=1&resize=450x338&vertical=top",
          "link4",
          "link5"
        ]
      },
      "social_media": {
        "linkedin": "",
        "dribble": "",
        "twitter": "",
        "instagram": ""
      }
    };

    final designer = Designer.fromJson(mockD);
    // print(designer.handledProjects);
    expect(40, designer.clients);
  });
}
