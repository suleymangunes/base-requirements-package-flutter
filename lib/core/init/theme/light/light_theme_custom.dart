import 'package:basic_requirements_package/core/init/theme/build-material-color/build_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

part '../../../constants/theme/light_constants.dart';

class LightThemeCustom {
  late ThemeData theme;

  LightThemeCustom() {
    theme = ThemeData(
      brightness: Brightness.light,
      primarySwatch: BuildColor().buildMaterialColor(LightThemeColors._primaryColor),
      appBarTheme: const AppBarTheme(
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: LightThemeColors._appBarBackground,
          statusBarIconBrightness: Brightness.dark,
        ),
        centerTitle: true,
      ),
    );
  }
}
