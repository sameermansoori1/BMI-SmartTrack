import 'package:bmi_smarttrack/controller/scalecontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';




class PrimaryButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPress;
  final String buttonName;

  const PrimaryButton({super.key, required this.icon, required this.buttonName, required this.onPress});

  @override
  Widget build(BuildContext context) {
    MainController mainController = Get.put(MainController());
    return Expanded(
      child: InkWell(
        onTap: onPress,
        child: Obx(
          () =>  Container(
            height: 50,
            margin: EdgeInsets.symmetric(horizontal: 11),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: mainController.Gender.value==buttonName ? Theme.of(context).colorScheme.primary
                  :Theme.of(context).colorScheme.primaryContainer
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(icon,color: mainController.Gender.value==buttonName ? Theme.of(context).colorScheme.primaryContainer
                    :Theme.of(context).colorScheme.primary,),
                const SizedBox(width: 10,),
                Text(
                  buttonName,
                  style: TextStyle(
                      fontSize: 18,
                    color: mainController.Gender.value==buttonName ? Theme.of(context).colorScheme.primaryContainer
                        :Theme.of(context).colorScheme.primary,
                )
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
