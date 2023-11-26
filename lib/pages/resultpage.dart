import 'package:bmi_smarttrack/components/ractbutton.dart';
import 'package:bmi_smarttrack/controller/scalecontroller.dart';
import 'package:bmi_smarttrack/pages/homepage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({super.key});

  @override
  Widget build(BuildContext context) {
    MainController mainController = Get.put(MainController());
    return Scaffold(
      appBar: AppBar(
          title: Text(
            "Back",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Theme.of(context).colorScheme.primary,
          iconTheme: IconThemeData(color: Colors.white),
          toolbarHeight: 35),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Row(
              children: [
                Obx(
                  () => Text(
                    "Your BMI is",
                    style: TextStyle(
                        color: mainController.colorStatus.value,
                        fontWeight: FontWeight.bold,
                        fontSize: 28),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            Container(
              height: 350,
              child: Expanded(
                child: Obx(
                  () => CircularPercentIndicator(
                    animationDuration: 1000,
                    footer: Text(
                      "${mainController.bmistatus.value}",
                      style: TextStyle(
                          color: mainController.colorStatus.value,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                    radius: 140,
                    lineWidth: 20.0,
                    animation: true,
                    circularStrokeCap: CircularStrokeCap.round,
                    percent: mainController.tempbmi.value / 100,
                    center: new Text(
                      "${mainController.bmi.value}%",
                      style: TextStyle(
                          color: mainController.colorStatus.value,
                          fontSize: 50,
                          fontWeight: FontWeight.bold),
                    ),
                    progressColor: mainController.colorStatus.value,
                    backgroundColor:
                        mainController.colorStatus.value.withOpacity(0.2),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primaryContainer,
                  borderRadius: BorderRadius.circular(10)),
              padding: EdgeInsets.all(10),
              child: Text(
                  "Your BMI is ${mainController.bmi.value}, indicating your weight is in the ${mainController.bmistatus.value} category for adults of your height. "
                      " NOTE:- Maintaining a healthy weight ma""y reduce the risk of chronic diseases associated with overweight and obesity."),
            ),
            const SizedBox(
              height: 20,
            ),
            MyRactButton(
                onPress: () {
                  Get.back();
                },
                buttonName: "Find Out More",
                icon: Icons.arrow_back_ios_new)
          ],
        ),
      ),
    );
  }
}
