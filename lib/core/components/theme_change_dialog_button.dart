import 'package:basic_requirements_package/core/components/theme_change_dropdown.dart';
import 'package:basic_requirements_package/core/constants/icon/icon_constants.dart';
import 'package:basic_requirements_package/core/constants/string/string_constants.dart';
import 'package:flutter/material.dart';

class ThemeChangeDialogButton extends StatelessWidget {
  const ThemeChangeDialogButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        _showDialog(context);
      },
      child: const ListTile(
        leading: IconConstants.themeIcon,
        title: Text(StringConstants.theme),
      ),
    );
  }

  Future<dynamic> _showDialog(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) => const AlertDialog(
        title: Text(StringConstants.themeChoose),
        content: ThemeChangeDropdown(),
      ),
    );
  }
}
