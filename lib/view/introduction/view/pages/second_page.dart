import 'package:basic_requirements_package/core/constants/pads/pads_constants.dart';
import 'package:basic_requirements_package/view/introduction/view-model/intro_pages.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:lottie/lottie.dart';

import '../../../../core/constants/lottie/lottie_constants.dart';

class SecondPage {
  const SecondPage._();
  static final PageViewModel page = PageViewModel(
    titleWidget: const PageContent(),
    body: IntroPages.secondPage.body,
  );
}

class PageContent extends StatelessWidget {
  const PageContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PadsConstanst.introBig,
        Lottie.asset(IntroPages.secondPage.path, height: LottieConstants.introSize),
        PadsConstanst.introSmall,
        Text(
          IntroPages.secondPage.title,
          style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}