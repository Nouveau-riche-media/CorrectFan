import 'package:correctfan/Controllers/authControllers.dart';
import 'package:correctfan/Controllers/favouriteControllers.dart';
import 'package:correctfan/Controllers/matchesController.dart';
import 'package:correctfan/Controllers/playerController.dart';
import 'package:get/get.dart';


// Initialize Controller Instances
AuthController authController = AuthController.instance;

// Initiallize Favourite Team Controller
FavouriteTeamController favouriteteams = Get.put(FavouriteTeamController());

// Initialize Match Controller Instances
TodaysMatchesController todayController = Get.put(TodaysMatchesController());
TomorrowMatchesController tomorrowController = Get.put(TomorrowMatchesController());
YesterdayMatchesController yesterdayController = Get.put(YesterdayMatchesController());
NextMatchesController nextController = Get.put(NextMatchesController());

// Initialize fetchPlayer Controller
PlayerController playerController = Get.put(PlayerController());