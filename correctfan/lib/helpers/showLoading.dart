import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

showLoading() {
  Get.defaultDialog(
    barrierDismissible: false,
    content: CircularProgressIndicator(),
    title: 'Loading', titleStyle: GoogleFonts.inter(
    fontSize: 12,
    color: Color(0xFF092C4C)
  ));
}

dismissLoadingWidget(){
  Get.back();
}