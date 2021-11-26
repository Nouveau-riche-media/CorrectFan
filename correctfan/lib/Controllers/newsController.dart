import 'package:correctfan/constants/api.dart';
import 'package:correctfan/models/newsModel.dart';
import 'package:http/http.dart' as http;
import 'package:webfeed/domain/rss_feed.dart';


var client = http.Client();

Future fetchNews() async {
  var response = await client.get(Uri.parse(newsFeed));

  if (response.statusCode == 200){
    var decode = RssFeed.parse(response.body);

    return decode.items!.map((item) => NewsModel(
      title: item.title,
      body: item.description!,
      image: item.media,
    )).toList();
  } else {
    var error = RssFeed.parse(response.statusCode.toString());
    return error.items!.map((e) => NewsModel(
      body: 'Error Couldn\'t Fetch Feed', title: ''
    )).toList();
  }
}