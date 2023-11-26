import 'package:bmi_smarttrack/config/colors.dart';
import 'package:flutter/material.dart';


var lightTheme = ThemeData(
    useMaterial3: true,
    colorScheme: const ColorScheme.light(
      background: lBgColor,
      onBackground: lFontColor,
      primaryContainer: lDivColor,
      onPrimaryContainer: lFontColor,
      onSecondaryContainer: lLabelColor,

    )
);





var darkTheme = ThemeData(
    useMaterial3: true,
    colorScheme: const ColorScheme.dark(
      background: dBgColor,
      onBackground: dFontColor,
      primaryContainer: dDivColor,
      onPrimaryContainer: dFontColor,
      onSecondaryContainer: dLabelColor,

    )
);