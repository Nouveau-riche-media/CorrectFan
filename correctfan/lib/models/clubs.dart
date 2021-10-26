// To parse this JSON data, do
//
//     final clubs = clubsFromJson(jsonString);

import 'dart:convert';

List<Clubs> clubsFromJson(String str) =>
    List<Clubs>.from(json.decode(str).map((x) => Clubs.fromJson(x)));

String clubsToJson(List<Clubs> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Clubs {
  Clubs({
    required this.teamId,
    this.areaId,
    this.venueId,
    this.key,
    required this.name,
    this.fullName,
    this.active,
    this.areaName,
    this.venueName,
    // this.gender,
    this.type,
    this.address,
    this.city,
    this.zip,
    this.phone,
    this.fax,
    this.website,
    this.email,
    this.founded,
    // this.clubColor1,
    // this.clubColor2,
    // this.clubColor3,
    this.nickname1,
    this.nickname2,
    this.nickname3,
    // this.wikipediaLogoUrl,
    this.wikipediaWordMarkUrl,
    this.globalTeamId,
  });

  int teamId;
  int? areaId;
  int? venueId;
  String? key;
  String name;
  String? fullName;
  bool? active;
  String? areaName;
  String? venueName;
  // Gender? gender;
  Type? type;
  String? address;
  String? city;
  String? zip;
  String? phone;
  String? fax;
  String? website;
  String? email;
  int? founded;
  // ClubColor? clubColor1;
  // ClubColor? clubColor2;
  // ClubColor? clubColor3;
  String? nickname1;
  String? nickname2;
  String? nickname3;
  // String? wikipediaLogoUrl;
  String? wikipediaWordMarkUrl;
  int? globalTeamId;

  factory Clubs.fromJson(Map<String, dynamic> json) => Clubs(
        teamId: json["TeamId"],
        areaId: json["AreaId"],
        venueId: json["VenueId"] == null ? null : json["VenueId"],
        key: json["Key"] == null ? null : json["Key"],
        name: json["Name"],
        fullName: json["FullName"],
        active: json["Active"],
        areaName: json["AreaName"],
        venueName: json["VenueName"] == null ? null : json["VenueName"],
        // gender: genderValues.map![json["Gender"]],
        // type: typeValues.map![json["Type"]],
        address: json["Address"] == null ? null : json["Address"],
        city: json["City"] == null ? null : json["City"],
        zip: json["Zip"] == null ? null : json["Zip"],
        phone: json["Phone"] == null ? null : json["Phone"],
        fax: json["Fax"] == null ? null : json["Fax"],
        website: json["Website"] == null ? null : json["Website"],
        email: json["Email"] == null ? null : json["Email"],
        founded: json["Founded"] == null ? null : json["Founded"],
        // clubColor1: json["ClubColor1"] == null
        //     ? null
        //     : clubColorValues.map[json["ClubColor1"]],
        // clubColor2: json["ClubColor2"] == null
        //     ? null
        //     : clubColorValues.map[json["ClubColor2"]],
        // clubColor3: json["ClubColor3"] == null
        //     ? null
        //     : clubColorValues.map[json["ClubColor3"]],
        nickname1: json["Nickname1"] == null ? null : json["Nickname1"],
        nickname2: json["Nickname2"] == null ? null : json["Nickname2"],
        nickname3: json["Nickname3"] == null ? null : json["Nickname3"],
        // wikipediaLogoUrl: json["WikipediaLogoUrl"],
        wikipediaWordMarkUrl: json["WikipediaWordMarkUrl"] == null
            ? null
            : json["WikipediaWordMarkUrl"],
        globalTeamId: json["GlobalTeamId"],
      );

  Map<String, dynamic> toJson() => {
        "TeamId": teamId,
        "AreaId": areaId,
        "VenueId": venueId == null ? null : venueId,
        "Key": key == null ? null : key,
        "Name": name,
        "FullName": fullName,
        "Active": active,
        "AreaName": areaName,
        "VenueName": venueName == null ? null : venueName,
        // "Gender": genderValues.reverse[gender],
        // "Type": typeValues.reverse[type],
        "Address": address == null ? null : address,
        "City": city == null ? null : city,
        "Zip": zip == null ? null : zip,
        "Phone": phone == null ? null : phone,
        "Fax": fax == null ? null : fax,
        "Website": website == null ? null : website,
        "Email": email == null ? null : email,
        "Founded": founded == null ? null : founded,
        // "ClubColor1":
        //     clubColor1 == null ? null : clubColorValues.reverse[clubColor1],
        // "ClubColor2":
        //     clubColor2 == null ? null : clubColorValues.reverse[clubColor2],
        // "ClubColor3":
        //     clubColor3 == null ? null : clubColorValues.reverse[clubColor3],
        "Nickname1": nickname1 == null ? null : nickname1,
        "Nickname2": nickname2 == null ? null : nickname2,
        "Nickname3": nickname3 == null ? null : nickname3,
        // "WikipediaLogoUrl": wikipediaLogoUrl,
        "WikipediaWordMarkUrl":
            wikipediaWordMarkUrl == null ? null : wikipediaWordMarkUrl,
        "GlobalTeamId": globalTeamId,
      };
}

// enum ClubColor {
//   RED,
//   CLARET,
//   ROYAL_BLUE,
//   BLUE,
//   SKY_BLUE,
//   BLACK,
//   YELLOW,
//   WHITE,
//   NAVY_BLUE,
//   GREEN,
//   MAROON,
//   ORANGE,
//   LIGHT_BLUE,
//   VIOLET,
//   CRIMSON,
//   DARK_BLUE,
//   PURPLE,
//   BROWN,
//   PINK,
//   BURGUNDY,
//   GOLD,
//   COPPER,
//   EMERALD,
//   GREY,
//   LIME_GREEN,
//   SILVER,
//   CYAN
// }

// // final clubColorValues = EnumValues({
// //   "Black": ClubColor.BLACK,
// //   "Blue": ClubColor.BLUE,
// //   "Brown": ClubColor.BROWN,
// //   "Burgundy": ClubColor.BURGUNDY,
// //   "Claret": ClubColor.CLARET,
// //   "Copper": ClubColor.COPPER,
// //   "Crimson": ClubColor.CRIMSON,
// //   "Cyan": ClubColor.CYAN,
// //   "Dark Blue": ClubColor.DARK_BLUE,
// //   "Emerald": ClubColor.EMERALD,
// //   "Gold": ClubColor.GOLD,
// //   "Green": ClubColor.GREEN,
// //   "Grey": ClubColor.GREY,
// //   "Light Blue": ClubColor.LIGHT_BLUE,
// //   "Lime Green": ClubColor.LIME_GREEN,
// //   "Maroon": ClubColor.MAROON,
// //   "Navy Blue": ClubColor.NAVY_BLUE,
// //   "Orange": ClubColor.ORANGE,
// //   "Pink": ClubColor.PINK,
// //   "Purple": ClubColor.PURPLE,
// //   "Red": ClubColor.RED,
// //   "Royal Blue": ClubColor.ROYAL_BLUE,
// //   "Silver": ClubColor.SILVER,
// //   "Sky Blue": ClubColor.SKY_BLUE,
// //   "Violet": ClubColor.VIOLET,
// //   "White": ClubColor.WHITE,
// //   "Yellow": ClubColor.YELLOW
// // });

// // enum Gender { MALE, MALE_YOUTH }

// // final genderValues =
// //     EnumValues({"Male": Gender.MALE, "Male Youth": Gender.MALE_YOUTH});

// // enum Type { CLUB, NATIONAL }

// // final typeValues = EnumValues({"Club": Type.CLUB, "National": Type.NATIONAL});

// // class EnumValues<T> {
// //   Map<String, T> map;
// //   Map<T, String> reverseMap;

// //   EnumValues(this.map);

// //   Map<T, String> get reverse {
// //     if (reverseMap == null) {
// //       reverseMap = map.map((k, v) => new MapEntry(v, k));
// //     }
// //     return reverseMap;
//   // }
