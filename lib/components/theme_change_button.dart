import 'package:bmi_smarttrack/controller/themeController.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

class ThemeChangeButton extends StatelessWidget {
  const ThemeChangeButton({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeController themeController = Get.put(ThemeController());

    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primaryContainer,
        borderRadius: BorderRadius.circular(15),
      ),
      child: InkWell(
        onTap: () {
          themeController.changeTheme();
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
                onPressed: () {
                  themeController.changeTheme();
                },
                icon:  Icon(
                  Icons.light_mode,
                  color: themeController.isDark.value
                      ? Theme.of(context).colorScheme.onSecondaryContainer
                      : Theme.of(context).colorScheme.primary,
                )),
            IconButton(
                onPressed: () {
                  themeController.changeTheme();
                },
                icon: Icon(
                  Icons.dark_mode,
                  color: themeController.isDark.value
                      ? Theme.of(context).colorScheme.primary
                      : Theme.of(context).colorScheme.onSecondaryContainer,
                )),
          ],
        ),
      ),
    );
  }
}
