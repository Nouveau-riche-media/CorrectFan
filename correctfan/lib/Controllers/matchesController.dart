import 'package:correctfan/models/matches.dart';
import 'package:correctfan/services/api_methods.dart';
import 'package:get/get.dart';


// fetch Todays Mathches
class TodaysMatchesController extends GetxController {

  static TodaysMatchesController todayInstance = Get.find();

  @override
  void onInit() {
    getTodaysMatches();
    super.onInit();
  }

  var fixtures = List<Fixtures>.empty().obs;

 Future<List<Fixtures>> getTodaysMatches() async {
   var matches = await RemoteServices.fetchTodaysMatches();
   fixtures.value = matches;
   return matches;
 }
}

// fetch Yesterdays Matches
class YesterdayMatchesController extends GetxController {

static YesterdayMatchesController yesterdayInstance = Get.find();
@override
void onInit() {
  getYesterdaysMatches();
  super.onInit();
}


var fixtures = List<Fixtures>.empty().obs;

Future<List<Fixtures>> getYesterdaysMatches() async {
    var matches = await RemoteServices.fetchYesterdaysMatches();
    fixtures.value = matches;
    return matches;
  }
  
}

// fetch Tomorrows Matches
class TomorrowMatchesController extends GetxController {

  static TomorrowMatchesController tomorrowMatchesInstance = Get.find();

  @override
  void onInit() {
    getTomorrowsMatches();
    super.onInit();
  }

  var fixtures = List<Fixtures>.empty().obs;

  Future<List<Fixtures>> getTomorrowsMatches() async {
    var matches = await RemoteServices.fetchTomorrowsMatches();
    fixtures.value = matches;
    return matches;
  }
}

// fetch Next Matches
class NextMatchesController extends GetxController {

  static NextMatchesController nextInstance = Get.find();

  @override
  void onInit() {
    getNextMatches();
    super.onInit();
  }

  var fixtures = List<Fixtures>.empty().obs;

  Future<List<Fixtures>> getNextMatches() async {
    var matches = await RemoteServices.fetchNextMatches();
    fixtures.value = matches;
    return matches;
  }
}
