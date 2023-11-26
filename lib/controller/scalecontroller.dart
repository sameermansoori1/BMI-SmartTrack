import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainController extends GetxController{


  RxString Gender = "Male".obs;
  RxInt weight = 12.obs;
  RxInt age = 12.obs;
  RxDouble height = 90.0.obs;
  RxString bmi = "".obs;
  RxDouble tempbmi = 0.0.obs;
  RxString bmistatus = "".obs;
  Rx<Color> colorStatus = Color(0xff246AFE).obs;


  void genderHandle(String gender){
    Gender.value = gender;

  }
  void calculateBmi(){
    var hmeter = height/100;
    tempbmi.value = weight/(hmeter*hmeter);
    bmi.value = tempbmi.toStringAsFixed(1);
    tempbmi.value = double.parse(bmi.value);
    findStatus();
    print(bmi);
  }


  void findStatus()
  {
    if(tempbmi.value <18.5)
    {
      bmistatus.value = "UnderWeight";
      colorStatus.value = Color(0xffFFB800);
    }
    if(tempbmi.value >18.5 && tempbmi.value <24.9 )
    {
      bmistatus.value = "Normal";
      colorStatus.value = Color(0xff00CA39);
    }
    if(tempbmi.value >25.0 && tempbmi.value <29.9 )
    {
      bmistatus.value = "OverWeight";
      colorStatus.value = Color(0xffFF5858);
    }
    if(tempbmi.value >30.0 && tempbmi.value <34.9 )
    {
      bmistatus.value = "OBESE";
      colorStatus.value = Color(0xffFF0000);
    }
    if(tempbmi.value > 35.0)
    {
      bmistatus.value = "Extremely OBESE";

      colorStatus.value = Color(0xff000000);
    }
  }

}