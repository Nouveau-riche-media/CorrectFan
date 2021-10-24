import 'package:correctfan/models/clubs.dart';
import 'package:correctfan/models/news.dart';
import 'package:http/http.dart' as http;

class RemoteServices {

  static var client = http.Client();
  // final clubsUri =
  //   'https://api.sportsdata.io/v3/soccer/scores/json/Teams?key=7788832784ab47388f3326603d86427f';

// Fetch Club List from API
static Future<List<Clubs>> fetchClubs() async {
  final response = await client.get(Uri.parse('https://api.sportsdata.io/v3/soccer/scores/json/Teams?key=7788832784ab47388f3326603d86427f'));

  if (response.statusCode == 200) {
    return clubsFromJson(response.body);
  } else {
    throw Exception('Failed to display');
  }
}

// Fetch News Feed from API
// static Future<List<News>> fetchNews() async {
//   final response = await client.get(Uri.parse('uri'));

//   if (response.statusCode == 200){
//     return
//     // newsFromJson(response.body);
//     // TODO: setup response call;
//     }  
//   else {
//     throw Exception('Failed to Load Feed');
//   }
// }



}
