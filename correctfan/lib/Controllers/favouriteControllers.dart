import 'package:correctfan/services/api_methods.dart';
import 'package:correctfan/models/clubs.dart';
import 'package:get/get.dart';
// import 'package:http/http.dart';
// import 'dart:convert';

class FavouriteTeamController extends GetxController{

  @override
  void onInit() {
    getClubs();
    super.onInit();
  }

  final favourites = [].obs;
  List<Clubs> clubList = <Clubs>[].obs;

  void getClubs() async{
    var clubs = await RemoteServices.fetchClubs();
    clubList = clubs;
  }

}