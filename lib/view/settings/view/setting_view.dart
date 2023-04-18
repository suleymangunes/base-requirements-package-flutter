import 'package:basic_requirements_package/core/components/theme_change_dialog_button.dart';
import 'package:basic_requirements_package/core/constants/string/string_constants.dart';
import 'package:flutter/material.dart';

class SettingView extends StatelessWidget {
  const SettingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          StringConstants.appTitle,
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: const ThemeChangeDialogButton(),
    );
  }
}
