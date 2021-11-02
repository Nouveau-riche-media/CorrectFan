// To parse this JSON data, do
//
//     final players = playersFromJson(jsonString);

import 'dart:convert';

List<Players> playersFromJson(String str) =>
    List<Players>.from(json.decode(str).map((x) => Players.fromJson(x)));

String playersToJson(List<Players> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Players {
  Players({
    this.playerId,
    required this.firstName,
    required this.lastName,
    required this.commonName,
    required this.shortName,
    // required this.position,
    // this.positionCategory,
    this.jersey,
    // this.foot,
    this.height,
    this.weight,
    // this.gender,
    this.birthDate,
    this.birthCity,
    this.birthCountry,
    this.nationality,
    // this.injuryStatus,
    // this.injuryBodyPart,
    // this.injuryNotes,
    this.injuryStartDate,
    this.updated,
    this.photoUrl,
    this.rotoWirePlayerId,
    // this.draftKingsPosition,
    this.usaTodayPlayerId,
    this.usaTodayHeadshotUrl,
    this.usaTodayHeadshotNoBackgroundUrl,
    this.usaTodayHeadshotUpdated,
    this.usaTodayHeadshotNoBackgroundUpdated,
  });

  int? playerId;
  String firstName;
  String lastName;
  String commonName;
  String shortName;
  // DraftKingsPosition position;
  // DraftKingsPosition? positionCategory;
  int? jersey;
  // Foot? foot;
  int? height;
  int? weight;
  // Gender? gender;
  DateTime? birthDate;
  String? birthCity;
  String? birthCountry;
  String? nationality;
  // Injury? injuryStatus;
  // Injury? injuryBodyPart;
  // Injury? injuryNotes;
  DateTime? injuryStartDate;
  DateTime? updated;
  String? photoUrl;
  int? rotoWirePlayerId;
  // DraftKingsPosition? draftKingsPosition;
  int? usaTodayPlayerId;
  String? usaTodayHeadshotUrl;
  dynamic? usaTodayHeadshotNoBackgroundUrl;
  DateTime? usaTodayHeadshotUpdated;
  dynamic? usaTodayHeadshotNoBackgroundUpdated;

  factory Players.fromJson(Map<String, dynamic> json) => Players(
        playerId: json["PlayerId"] == null ? null : json["PlayerId"],
        firstName: json["FirstName"] == null ? null : json["FirstName"],
        lastName: json["LastName"] == null ? null : json["LastName"],
        commonName: json["CommonName"] == null ? null : json["CommonName"],
        shortName: json["ShortName"] == null ? null : json["ShortName"],
        // position: json["Position"] == null
        //     ? null
        //     : draftKingsPositionValues.map[json["Position"]],
        // positionCategory: json["PositionCategory"] == null
        //     ? null
        //     : draftKingsPositionValues.map[json["PositionCategory"]],
        jersey: json["Jersey"] == null ? null : json["Jersey"],
        // foot: json["Foot"] == null ? null : footValues.map[json["Foot"]],
        height: json["Height"] == null ? null : json["Height"],
        weight: json["Weight"] == null ? null : json["Weight"],
        // gender:
            // json["Gender"] == null ? null : genderValues.map[json["Gender"]],
        birthDate: json["BirthDate"] == null
            ? null
            : DateTime.parse(json["BirthDate"]),
        birthCity: json["BirthCity"] == null ? null : json["BirthCity"],
        birthCountry:
            json["BirthCountry"] == null ? null : json["BirthCountry"],
        nationality: json["Nationality"] == null ? null : json["Nationality"],
        // injuryStatus: json["InjuryStatus"] == null
        //     ? null
        //     : injuryValues.map[json["InjuryStatus"]],
        // injuryBodyPart: json["InjuryBodyPart"] == null
        //     ? null
        //     : injuryValues.map[json["InjuryBodyPart"]],
        // injuryNotes: json["InjuryNotes"] == null
        //     ? null
        //     : injuryValues.map[json["InjuryNotes"]],
        injuryStartDate: json["InjuryStartDate"] == null
            ? null
            : DateTime.parse(json["InjuryStartDate"]),
        updated:
            json["Updated"] == null ? null : DateTime.parse(json["Updated"]),
        photoUrl: json["PhotoUrl"] == null ? null : json["PhotoUrl"],
        rotoWirePlayerId:
            json["RotoWirePlayerID"] == null ? null : json["RotoWirePlayerID"],
        // draftKingsPosition: json["DraftKingsPosition"] == null
        //     ? null
        //     : draftKingsPositionValues.map[json["DraftKingsPosition"]],
        usaTodayPlayerId:
            json["UsaTodayPlayerID"] == null ? null : json["UsaTodayPlayerID"],
        usaTodayHeadshotUrl: json["UsaTodayHeadshotUrl"] == null
            ? null
            : json["UsaTodayHeadshotUrl"],
        usaTodayHeadshotNoBackgroundUrl:
            json["UsaTodayHeadshotNoBackgroundUrl"],
        usaTodayHeadshotUpdated: json["UsaTodayHeadshotUpdated"] == null
            ? null
            : DateTime.parse(json["UsaTodayHeadshotUpdated"]),
        usaTodayHeadshotNoBackgroundUpdated:
            json["UsaTodayHeadshotNoBackgroundUpdated"],
      );

  Map<String, dynamic> toJson() => {
        "PlayerId": playerId == null ? null : playerId,
        "FirstName": firstName == null ? null : firstName,
        "LastName": lastName == null ? null : lastName,
        "CommonName": commonName == null ? null : commonName,
        "ShortName": shortName == null ? null : shortName,
        // "Position": position == null
        //     ? null
        //     : draftKingsPositionValues.reverse[position],
        // "PositionCategory": positionCategory == null
        //     ? null
        //     : draftKingsPositionValues.reverse[positionCategory],
        "Jersey": jersey == null ? null : jersey,
        // "Foot": foot == null ? null : footValues.reverse[foot],
        "Height": height == null ? null : height,
        "Weight": weight == null ? null : weight,
        // "Gender": gender == null ? null : genderValues.reverse[gender],
        // "BirthDate": birthDate == null ? null : birthDate.toIso8601String(),
        "BirthCity": birthCity == null ? null : birthCity,
        "BirthCountry": birthCountry == null ? null : birthCountry,
        "Nationality": nationality == null ? null : nationality,
        // "InjuryStatus":
            // injuryStatus == null ? null : injuryValues.reverse[injuryStatus],
        // "InjuryBodyPart": injuryBodyPart == null
        //     ? null
        //     : injuryValues.reverse[injuryBodyPart],
        // "InjuryNotes":
        //     injuryNotes == null ? null : injuryValues.reverse[injuryNotes],
        // "InjuryStartDate":
        //     injuryStartDate == null ? null : injuryStartDate.toIso8601String(),
        // "Updated": updated == null ? null : updated.toIso8601String(),
        "PhotoUrl": photoUrl == null ? null : photoUrl,
        "RotoWirePlayerID": rotoWirePlayerId == null ? null : rotoWirePlayerId,
        // "DraftKingsPosition": draftKingsPosition == null
        //     ? null
        //     : draftKingsPositionValues.reverse[draftKingsPosition],
        "UsaTodayPlayerID": usaTodayPlayerId == null ? null : usaTodayPlayerId,
        "UsaTodayHeadshotUrl":
            usaTodayHeadshotUrl == null ? null : usaTodayHeadshotUrl,
        "UsaTodayHeadshotNoBackgroundUrl": usaTodayHeadshotNoBackgroundUrl,
        // "UsaTodayHeadshotUpdated": usaTodayHeadshotUpdated == null
        //     ? null
        //     : usaTodayHeadshotUpdated.toIso8601String(),
        "UsaTodayHeadshotNoBackgroundUpdated":
            usaTodayHeadshotNoBackgroundUpdated,
      };
}

// enum DraftKingsPosition { M, D, A, GK, M_F, F }

// final draftKingsPositionValues = EnumValues({
//   "A": DraftKingsPosition.A,
//   "D": DraftKingsPosition.D,
//   "F": DraftKingsPosition.F,
//   "GK": DraftKingsPosition.GK,
//   "M": DraftKingsPosition.M,
//   "M/F": DraftKingsPosition.M_F
// });

// enum Foot { RIGHT, LEFT, BOTH }

// final footValues =
//     EnumValues({"Both": Foot.BOTH, "Left": Foot.LEFT, "Right": Foot.RIGHT});

// enum Gender { MALE }

// final genderValues = EnumValues({"Male": Gender.MALE});

// enum Injury { SCRAMBLED }

// final injuryValues = EnumValues({"Scrambled": Injury.SCRAMBLED});

// class EnumValues<T> {
//   Map<String, T> map;
//   Map<T, String> reverseMap;

//   EnumValues(this.map);

//   Map<T, String> get reverse {
//     if (reverseMap == null) {
//       reverseMap = map.map((k, v) => new MapEntry(v, k));
//     }
//     return reverseMap;
//   }
// }
