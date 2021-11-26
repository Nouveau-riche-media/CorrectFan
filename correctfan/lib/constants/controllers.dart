import 'package:correctfan/Controllers/authControllers.dart';
import 'package:correctfan/Controllers/favouriteControllers.dart';
import 'package:correctfan/Controllers/matchesController.dart';
import 'package:correctfan/Controllers/newsController.dart';
import 'package:correctfan/Controllers/playerController.dart';
import 'package:get/get.dart';


// Initialize Controller Instances
AuthController authController = AuthController.instance;

// Initiallize Favourite Team Controller
FavouriteTeamController favouriteteams = Get.put(FavouriteTeamController());

// Initialize Match Controller Instances
TodaysMatchesController todayController = TodaysMatchesController.todayInstance;
TomorrowMatchesController tomorrowController = TomorrowMatchesController.tomorrowMatchesInstance;
YesterdayMatchesController yesterdayController = YesterdayMatchesController.yesterdayInstance;
NextMatchesController nextController = NextMatchesController.nextInstance;

// Initialize fetchPlayer Controller
PlayerController playerController = PlayerController.playerInstance;

