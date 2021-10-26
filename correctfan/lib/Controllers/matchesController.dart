import 'package:correctfan/models/matches.dart';
import 'package:correctfan/services/api_methods.dart';
import 'package:get/get.dart';


// fetch Todays Mathches
class TodaysMatchesController extends GetxController {
  @override
  void onInit() {
    getTodaysMatches();
    super.onInit();
  }

  var fixtures = List<Fixtures>.empty().obs;

 void getTodaysMatches() async {
   var matches = await RemoteServices.fetchTodaysMatches();
   fixtures.value = matches;
 }
}

// fetch Yesterdays Matches
class YesterdayMatchesController extends GetxController {

@override
void onInit() {
  getYesterdaysMatches();
  super.onInit();
}


var fixtures = List<Fixtures>.empty().obs;

void getYesterdaysMatches() async {
    var matches = await RemoteServices.fetchYesterdaysMatches();
    fixtures.value = matches;
  }
  
}

// fetch Tomorrows Matches
class TomorrowMatchesController extends GetxController {
  @override
  void onInit() {
    getTomorrowsMatches();
    super.onInit();
  }

  var fixtures = List<Fixtures>.empty().obs;

  void getTomorrowsMatches() async {
    var matches = await RemoteServices.fetchTomorrowsMatches();
    fixtures.value = matches;
  }
}

// fetch Next Matches
class NextMatchesController extends GetxController {
  @override
  void onInit() {
    getNextMatches();
    super.onInit();
  }

  var fixtures = List<Fixtures>.empty().obs;

  void getNextMatches() async {
    var matches = await RemoteServices.fetchNextMatches();
    fixtures.value = matches;
  }
}
