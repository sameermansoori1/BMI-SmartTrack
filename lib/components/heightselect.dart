import 'package:bmi_smarttrack/controller/scalecontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class HeightSelect extends StatelessWidget {
  const HeightSelect({super.key});

  @override
  Widget build(BuildContext context) {
    MainController mainController = Get.put(MainController());
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primaryContainer,
            borderRadius: BorderRadius.circular(10)),
        child: Column(
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Height (cm)",
                  style: TextStyle(
                      fontSize: 17,
                      color: Theme.of(context).colorScheme.onBackground),
                ),
              ],
            ),
            Expanded(child:Obx(
              () => SfSlider.vertical(
                min: 50.0,
                max: 300.0,
                value: mainController.height.value,
                interval: 50,
                showTicks: true,
                showLabels: true,
                enableTooltip: true,
                minorTicksPerInterval: 1,
                onChanged: (dynamic value){
                  mainController.height.value = value;
                },
              ),
            ),)
          ],
        ),
      ),
    );
  }
}
