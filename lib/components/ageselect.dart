import 'package:bmi_smarttrack/components/secbutton.dart';
import 'package:bmi_smarttrack/controller/scalecontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AgeSelect extends StatelessWidget {
  const AgeSelect({super.key});

  @override
  Widget build(BuildContext context) {
    MainController mainController = Get.put(MainController());
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primaryContainer,
          borderRadius: BorderRadius.circular(10)),
      height: 200,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Age",
                style: TextStyle(
                    fontSize: 17,
                    color: Theme.of(context).colorScheme.onBackground),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(
                () => Text(
                  "${mainController.age.value}",
                  style: TextStyle(
                      fontSize: 70,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.onBackground),
                ),
              )
            ],
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SecButton(
                icon: Icons.remove,
                onPress: () {
                  mainController.age.value--;
                },
              ),
              SecButton(
                icon: Icons.add,
                onPress: () {mainController.age.value++;},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
