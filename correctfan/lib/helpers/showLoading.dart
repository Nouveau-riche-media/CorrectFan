import 'dart:io';

import 'package:correctfan/constants/ui.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

showLoading() {
  Get.defaultDialog(
    barrierDismissible: false,
    content: CircularProgressIndicator(),
    title: 'Loading', titleStyle: GoogleFonts.inter(
    fontSize: 12,
    fontWeight: FontWeight.bold,
    color: Color(0xFF092C4C)
  ));
}

dismissLoadingWidget(){
  Get.back();
}


class NetworkError extends StatelessWidget {
  const NetworkError({required String error, Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context, [String? error]) {
    return Container(
      child: Column(
        children: [
          Text('Error Fetching Data', style: AppTheme.headline3(context, lightGrey!),),
          Text(
            error!,
            style: AppTheme.headline5(context, lightGrey!),
          ),
          Icon(Icons.wifi_off_rounded, color: lightGrey, size: 32,)
        ],
      ),
    );
  }
}