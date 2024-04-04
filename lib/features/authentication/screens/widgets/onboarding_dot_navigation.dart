import 'package:ecom_app/features/authentication/controllers.onboarding/onboarding_controller.dart';
import 'package:ecom_app/util/constants/colors.dart';
import 'package:ecom_app/util/constants/sizes.dart';
import 'package:ecom_app/util/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../util/device /device_utility.dart';

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller=OnBoardingController.instance;
    final dark=THelperFunctions.isDarkMode(context);
    return Positioned(
        bottom: TDeviceUtils.getBottomNavigationBarHeight() + 25,
        left: TSizes.defaultSpace,
        child: SmoothPageIndicator(
          controller: controller.pageController,
          count: 3,
          onDotClicked: controller.dotNavigationClick,
          effect: ExpandingDotsEffect(
            activeDotColor: dark ? TColors.light :TColors.dark,
            dotHeight: 6,
          ),
        ));
  }
}
