import 'package:correctfan/constants/api.dart';
import 'package:correctfan/models/newsModel.dart';
import 'package:http/http.dart' as http;
import 'package:webfeed/domain/rss_feed.dart';


var client = http.Client();

Future fetchNews() async {
  var response = await client.get(Uri.parse(newsFeed));

  if (response.statusCode == 200){
    var decode = RssFeed.parse(response.body);
    var news = decode.items!.map((item) => NewsModel(
      title: item.title,
      body: item.description,
      image: item.media,
    )).toList();
    return news;
  } else {
    throw Exception('Unable to load Feed');
  }
}