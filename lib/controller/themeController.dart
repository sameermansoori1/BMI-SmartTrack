import 'package:get/get.dart';
import 'package:flutter/material.dart';

class ThemeController extends GetxController{
  RxBool isDark = false.obs;


  void changeTheme() async{
    isDark.value = !isDark.value;

    Get.changeThemeMode(isDark.value ? ThemeMode.dark : ThemeMode.light);

  }

}