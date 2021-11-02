import 'package:correctfan/models/players.dart';
import 'package:correctfan/services/api_methods.dart';
import 'package:get/get.dart';

class PlayerController extends GetxController{
    @override
    void onInit() {
      fetchPlayers();
      super.onInit();
    }

    var players = List<Players>.empty().obs;
    
    void fetchPlayers() async {
      var playerData = await RemoteServices.fetchPlayers();
      players.value = playerData;
    }
}