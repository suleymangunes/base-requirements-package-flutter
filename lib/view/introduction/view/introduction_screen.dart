import 'package:basic_requirements_package/core/components/dots/dots_decoration.dart';
import 'package:basic_requirements_package/core/components/text/text_with_theme_color.dart';
import 'package:basic_requirements_package/core/constants/onboarding/intro_constants.dart';
import 'package:basic_requirements_package/core/init/cache/onboarding/intro_caching.dart';
import 'package:basic_requirements_package/core/init/navigation/navigation_route.dart';
import 'package:basic_requirements_package/view/_product/enum/route_enum.dart';
import 'package:basic_requirements_package/view/introduction/view-model/intro_pages.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class Introduction {
  const Introduction._();
  static final intro = IntroductionScreen(
    pages: IntroPages.pageList,
    showSkipButton: true,
    showNextButton: false,
    skip: const TextMediumTitle(text: 'skip'),
    done: const TextMediumTitle(text: 'done'),
    onDone: () {
      IntroCaching.watchIntro();
      NavigationRoute.goRouteClear(RouteEnum.setting.rawValue);
    },
    dotsDecorator: DotsDecoration.decoration,
    baseBtnStyle: TextButton.styleFrom(
      shape: RoundedRectangleBorder(borderRadius: IntroConstants.buttonBorderCircular),
    ),
  );
}
