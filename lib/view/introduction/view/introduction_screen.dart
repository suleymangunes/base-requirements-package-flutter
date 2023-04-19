import 'package:basic_requirements_package/app.dart';
import 'package:basic_requirements_package/core/components/dots/dots_decoration.dart';
import 'package:basic_requirements_package/core/components/text/text_with_theme_color.dart';
import 'package:basic_requirements_package/core/constants/onboarding/intro_constants.dart';
import 'package:basic_requirements_package/view/introduction/view-model/intro_pages.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

import '../../../core/init/cache/onboarding/intro_caching.dart';

class Introduction {
  const Introduction._();
  static final intro = IntroductionScreen(
    pages: IntroPages.pageList,
    showSkipButton: true,
    showNextButton: false,
    skip: const TextMediumTitle(text: 'Skip'),
    done: const TextMediumTitle(text: 'Done'),
    onDone: () {
      IntroCaching.watchIntro();
      Benim().name();
    },
    dotsDecorator: DotsDecoration.decoration,
    baseBtnStyle: TextButton.styleFrom(
      shape: RoundedRectangleBorder(borderRadius: IntroConstants.buttonBorderCircular),
    ),
  );
}

class Benim {
  void name() {
    router.pushReplacement('/setting');
  }
}
