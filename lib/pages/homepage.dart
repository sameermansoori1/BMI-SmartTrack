import 'package:bmi_smarttrack/components/ageselect.dart';
import 'package:bmi_smarttrack/components/heightselect.dart';
import 'package:bmi_smarttrack/components/primarybutton.dart';
import 'package:bmi_smarttrack/components/ractbutton.dart';
import 'package:bmi_smarttrack/components/theme_change_button.dart';
import 'package:bmi_smarttrack/config/colors.dart';
import 'package:bmi_smarttrack/controller/scalecontroller.dart';
import 'package:bmi_smarttrack/controller/themeController.dart';
import 'package:bmi_smarttrack/main.dart';
import 'package:bmi_smarttrack/components/weightselect.dart';
import 'package:bmi_smarttrack/pages/resultpage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeController themeController = Get.put(ThemeController());
    MainController mainController = Get.put(MainController());
    return Scaffold(
      body:
         Column(
          children: [
            AppBar(
              backgroundColor:Theme.of(context).colorScheme.primary,
              title: const Text(
                "BMI SmartTrack",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
                toolbarHeight: 35
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ThemeChangeButton(),
                ],
              ),
            ),
            Row(
              children: [
                Text(
                  " Welcome 😊",
                  style: TextStyle(
                      color:
                      Theme.of(context).colorScheme.onBackground),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text(
                  " Calculate Your BMI Here",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.onBackground),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                PrimaryButton(
                  icon: Icons.male,
                  buttonName: "Male",
                  onPress: () {mainController.genderHandle("Male");},
                ),
                PrimaryButton(
                  icon: Icons.male,
                  buttonName: "Female",
                  onPress: () {mainController.genderHandle("Female");},
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  HeightSelect(),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        WeightSelect(),
                        AgeSelect(),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
           MyRactButton(onPress: () {
             mainController.calculateBmi();
             Get.to(ResultPage());

           }, buttonName: "Begin", icon: Icons.done)
          ],
        ),

    );
  }
}
