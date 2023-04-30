class Designer {
  String name;
  String basedIn;
  String profilePictureUrl;
  String about;
  int yearsOfExperience;
  int handledProjects;
  int clients;
  List uiPortfolio;
  String linkinUrl;
  String dribbleUrl;
  String twitterUrl;
  String instagramUrl;

  Designer({
    required this.name,
    required this.basedIn,
    required this.profilePictureUrl,
    required this.about,
    required this.yearsOfExperience,
    required this.handledProjects,
    required this.clients,
    required this.uiPortfolio,
    required this.linkinUrl,
    required this.dribbleUrl,
    required this.twitterUrl,
    required this.instagramUrl,
  });

  factory Designer.fromJson(Map<String, dynamic> json) {
    return Designer(
      name: json['personal_data']['name'],
      basedIn: json['personal_data']['based_in'],
      profilePictureUrl: json['personal_data']['profile_picture_url'],
      about: json['personal_data']['about'],
      yearsOfExperience: json['portfolio']['years_of_experience'],
      handledProjects: json['portfolio']['handled_projects'],
      clients: json['portfolio']['clients'],
      uiPortfolio: json['portfolio']['ui_portfolio'],
      linkinUrl: json['social_media']['linkedin'],
      dribbleUrl: json['social_media']['dribble'],
      twitterUrl: json['social_media']['twitter'],
      instagramUrl: json['social_media']['instagram'],
    );
  }
}


// {
//     "personal_data": {
//         "name": "Bima Sakti",
//         "based_in": "Tanjung Pinang",
//         "profile_picture_url": "sample",
//         "about": ""
//     },
//     "portfolio": {
//         "years_of_experience": 2,
//         "handled_projects": 54,
//         "clients": 40,
//         "ui_portfolio": [
//             "link1",
//             "link2",
//             "link3",
//             "link4",
//             "link5"
//         ]
//     },
//     "social_media": {
//         "linkedin": "",
//         "dribble": "",
//         "twitter": "",
//         "instagram": ""
//     }
// }