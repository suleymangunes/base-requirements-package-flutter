import 'package:basic_requirements_package/core/components/changer_listtile_with_dropdown.dart';
import 'package:basic_requirements_package/core/components/theme_change_dropdown.dart';
import 'package:basic_requirements_package/core/constants/icon/icon_constants.dart';
import 'package:basic_requirements_package/core/constants/string/string_constants.dart';
import 'package:basic_requirements_package/main.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class SettingView extends StatelessWidget {
  const SettingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          StringConstants.appTitle.tr(),
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: Column(
        children: [
          ChangerListtileWithDropdown(
            icon: IconConstants.themeIcon,
            title: StringConstants.theme.tr(),
            alertTitle: StringConstants.themeChoose.tr(),
            child: const ThemeChangeDropdown(),
          ),
          ChangerListtileWithDropdown(
            icon: IconConstants.localizationIcon,
            title: StringConstants.local.tr(),
            alertTitle: StringConstants.langChoose.tr(),
            child: changeLocalWithDropdown(context),
          ),
        ],
      ),
    );
  }

  DropdownButton<dynamic> changeLocalWithDropdown(BuildContext context) {
    return DropdownButton(
      value: context.locale,
      items: LocaleVariables.localItems(),
      onChanged: (value) {
        context.setLocale(value);
        Navigator.pop(context);
      },
    );
  }
}
