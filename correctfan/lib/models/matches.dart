// To parse this JSON data, do
//
//     final fixtures = fixturesFromJson(jsonString);

import 'dart:convert';

List<Fixtures> fixturesFromJson(String str) =>
    List<Fixtures>.from(json.decode(str).map((x) => Fixtures.fromJson(x)));

String fixturesToJson(List<Fixtures> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Fixtures {
  Fixtures({
    this.gameId,
    this.roundId,
    this.season,
    this.seasonType,
    this.group,
    this.awayTeamId,
    this.homeTeamId,
    this.venueId,
    this.day,
    this.dateTime,
    // this.status,
    this.week,
    // this.period,
    this.clock,
    // this.winner,
    // this.venueType,
    this.awayTeamKey,
    required this.awayTeamName,
    this.awayTeamCountryCode,
    this.awayTeamScore,
    this.awayTeamScorePeriod1,
    this.awayTeamScorePeriod2,
    this.awayTeamScoreExtraTime,
    this.awayTeamScorePenalty,
    this.homeTeamKey,
    required this.homeTeamName,
    this.homeTeamCountryCode,
    this.homeTeamScore,
    this.homeTeamScorePeriod1,
    this.homeTeamScorePeriod2,
    this.homeTeamScoreExtraTime,
    this.homeTeamScorePenalty,
    this.homeTeamMoneyLine,
    this.awayTeamMoneyLine,
    this.drawMoneyLine,
    // this.pointSpread,
    this.homeTeamPointSpreadPayout,
    this.awayTeamPointSpreadPayout,
    this.overUnder,
    this.overPayout,
    this.underPayout,
    this.attendance,
    this.updated,
    this.updatedUtc,
    this.globalGameId,
    this.globalAwayTeamId,
    this.globalHomeTeamId,
    this.clockExtra,
    // this.clockDisplay,
    this.isClosed,
    this.homeTeamFormation,
    this.awayTeamFormation,
    this.playoffAggregateScore,
  });

  int? gameId;
  int? roundId;
  int? season;
  int? seasonType;
  dynamic group;
  int? awayTeamId;
  int? homeTeamId;
  int? venueId;
  DateTime? day;
  DateTime? dateTime;
  // Status? status;
  int? week;
  // Period? period;
  int? clock;
  // Winner? winner;
  // VenueType? venueType;
  String? awayTeamKey;
  String awayTeamName;
  String? awayTeamCountryCode;
  int? awayTeamScore;
  int? awayTeamScorePeriod1;
  int? awayTeamScorePeriod2;
  dynamic awayTeamScoreExtraTime;
  dynamic awayTeamScorePenalty;
  String? homeTeamKey;
  String homeTeamName;
  String? homeTeamCountryCode;
  int? homeTeamScore;
  int? homeTeamScorePeriod1;
  int? homeTeamScorePeriod2;
  dynamic homeTeamScoreExtraTime;
  dynamic homeTeamScorePenalty;
  int? homeTeamMoneyLine;
  int? awayTeamMoneyLine;
  int? drawMoneyLine;
  // int? pointSpread;
  int? homeTeamPointSpreadPayout;
  int? awayTeamPointSpreadPayout;
  double? overUnder;
  int? overPayout;
  int? underPayout;
  int? attendance;
  DateTime? updated;
  DateTime? updatedUtc;
  int? globalGameId;
  int? globalAwayTeamId;
  int? globalHomeTeamId;
  int? clockExtra;
  // ClockDisplay? clockDisplay;
  bool? isClosed;
  String? homeTeamFormation;
  String? awayTeamFormation;
  dynamic playoffAggregateScore;

  factory Fixtures.fromJson(Map<String, dynamic> json) => Fixtures(
        gameId: json["GameId"],
        roundId: json["RoundId"],
        season: json["Season"],
        seasonType: json["SeasonType"],
        group: json["Group"],
        awayTeamId: json["AwayTeamId"],
        homeTeamId: json["HomeTeamId"],
        venueId: json["VenueId"],
        day: DateTime.parse(json["Day"]),
        // dateTime:
        //     json["DateTime"] == null ? null : DateTime.parse(json["DateTime"]),
        // status:
        //     json["Status"] == null ? null : statusValues.map[json["Status"]],
        // week: json["Week"] == null ? null : json["Week"],
        // period:
        //     json["Period"] == null ? null : periodValues.map[json["Period"]],
        clock: json["Clock"],
        // winner:
        //     json["Winner"] == null ? null : winnerValues.map[json["Winner"]],
        // venueType: json["VenueType"] == null
        //     ? null
        //     : venueTypeValues.map[json["VenueType"]],
        awayTeamKey: json["AwayTeamKey"],
        awayTeamName: json["AwayTeamName"],
        awayTeamCountryCode: json["AwayTeamCountryCode"],
        awayTeamScore: json["AwayTeamScore"],
        awayTeamScorePeriod1: json["AwayTeamScorePeriod1"],
        awayTeamScorePeriod2: json["AwayTeamScorePeriod2"],
        awayTeamScoreExtraTime: json["AwayTeamScoreExtraTime"],
        awayTeamScorePenalty: json["AwayTeamScorePenalty"],
        homeTeamKey: json["HomeTeamKey"],
        homeTeamName: json["HomeTeamName"],
        homeTeamCountryCode: json["HomeTeamCountryCode"],
        homeTeamScore: json["HomeTeamScore"],
        homeTeamScorePeriod1: json["HomeTeamScorePeriod1"],
        homeTeamScorePeriod2: json["HomeTeamScorePeriod2"],
        homeTeamScoreExtraTime: json["HomeTeamScoreExtraTime"],
        homeTeamScorePenalty: json["HomeTeamScorePenalty"],
        homeTeamMoneyLine: json["HomeTeamMoneyLine"],
        awayTeamMoneyLine: json["AwayTeamMoneyLine"],
        drawMoneyLine: json["DrawMoneyLine"],
        // pointSpread: json["PointSpread"],
        homeTeamPointSpreadPayout: json["HomeTeamPointSpreadPayout"],
        awayTeamPointSpreadPayout: json["AwayTeamPointSpreadPayout"],
        overUnder: json["OverUnder"],
        overPayout: json["OverPayout"],
        underPayout: json["UnderPayout"],
        attendance: json["Attendance"],
        updated: DateTime.parse(json["Updated"]),
        updatedUtc: DateTime.parse(json["UpdatedUtc"]),
        globalGameId: json["GlobalGameId"],
        globalAwayTeamId: json["GlobalAwayTeamId"],
        globalHomeTeamId: json["GlobalHomeTeamId"],
        clockExtra: json["ClockExtra"],
        // clockDisplay: json["ClockDisplay"] == null
        //     ? null
        //     : clockDisplayValues.map[json["ClockDisplay"]],
        isClosed: json["IsClosed"],
        homeTeamFormation: json["HomeTeamFormation"],
        awayTeamFormation: json["AwayTeamFormation"],
        playoffAggregateScore: json["PlayoffAggregateScore"],
      );

  Map<String, dynamic> toJson() => {
        "GameId": gameId,
        "RoundId": roundId,
        "Season": season,
        "SeasonType": seasonType,
        "Group": group,
        "AwayTeamId": awayTeamId,
        "HomeTeamId": homeTeamId,
        "VenueId": venueId,
        // "Day": day == null ? null : day.toIso8601String(),
        // "DateTime": dateTime == null ? null : dateTime.toIso8601String(),
        // "Status": status == null ? null : statusValues.reverse[status],
        // "Week": week == null ? null : week,
        // "Period": period == null ? null : periodValues.reverse[period],
        "Clock": clock,
        // "Winner": winner == null ? null : winnerValues.reverse[winner],
        // "VenueType":
        //     venueType == null ? null : venueTypeValues.reverse[venueType],
        "AwayTeamKey": awayTeamKey,
        "AwayTeamName": awayTeamName,
        "AwayTeamCountryCode": awayTeamCountryCode,
        "AwayTeamScore": awayTeamScore,
        "AwayTeamScorePeriod1": awayTeamScorePeriod1,
        "AwayTeamScorePeriod2": awayTeamScorePeriod2,
        "AwayTeamScoreExtraTime": awayTeamScoreExtraTime,
        "AwayTeamScorePenalty": awayTeamScorePenalty,
        "HomeTeamKey": homeTeamKey,
        "HomeTeamName": homeTeamName,
        "HomeTeamCountryCode":homeTeamCountryCode,
        "HomeTeamScore": homeTeamScore,
        "HomeTeamScorePeriod1": homeTeamScorePeriod1,
        "HomeTeamScorePeriod2": homeTeamScorePeriod2,
        "HomeTeamScoreExtraTime": homeTeamScoreExtraTime,
        "HomeTeamScorePenalty": homeTeamScorePenalty,
        "HomeTeamMoneyLine": homeTeamMoneyLine,
        "AwayTeamMoneyLine": awayTeamMoneyLine,
        "DrawMoneyLine": drawMoneyLine,
        // "PointSpread": pointSpread,
        "HomeTeamPointSpreadPayout": homeTeamPointSpreadPayout,
        "AwayTeamPointSpreadPayout": awayTeamPointSpreadPayout,
        "OverUnder": overUnder,
        "OverPayout": overPayout,
        "UnderPayout": underPayout,
        "Attendance": attendance,
        // "Updated": updated == null ? null : updated.toIso8601String(),
        // "UpdatedUtc": updatedUtc == null ? null : updatedUtc.toIso8601String(),
        "GlobalGameId": globalGameId,
        "GlobalAwayTeamId": globalAwayTeamId,
        "GlobalHomeTeamId": globalHomeTeamId,
        "ClockExtra": clockExtra,
        // "ClockDisplay": clockDisplay == null
        //     ? null
        //     : clockDisplayValues.reverse[clockDisplay],
        "IsClosed": isClosed,
        "HomeTeamFormation": homeTeamFormation,
        "AwayTeamFormation": awayTeamFormation,
        "PlayoffAggregateScore": playoffAggregateScore,
      };
}

// enum ClockDisplay { EMPTY, THE_451 }

// final clockDisplayValues =
//     EnumValues({"": ClockDisplay.EMPTY, "45+1": ClockDisplay.THE_451});

// enum Period { REGULAR }

// final periodValues = EnumValues({"Regular": Period.REGULAR});

// enum Status { FINAL, IN_PROGRESS, SCHEDULED }

// final statusValues = EnumValues({
//   "Final": Status.FINAL,
//   "InProgress": Status.IN_PROGRESS,
//   "Scheduled": Status.SCHEDULED
// });

// enum VenueType { HOME_AWAY }

// final venueTypeValues = EnumValues({"Home Away": VenueType.HOME_AWAY});

// enum Winner { SCRAMBLED }

// final winnerValues = EnumValues({"Scrambled": Winner.SCRAMBLED});

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
