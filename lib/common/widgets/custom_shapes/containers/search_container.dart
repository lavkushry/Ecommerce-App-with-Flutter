import 'package:ecom_app/util/constants/colors.dart';
import 'package:ecom_app/util/constants/sizes.dart';
import 'package:ecom_app/util/device%20/device_utility.dart';
import 'package:ecom_app/util/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class TSearchContainer extends StatelessWidget {
  const TSearchContainer({
    super.key,
    required this.text,
    this.icon,
    this.showBackground = true,
    this.showBorder = true,
  });

  final String text;
  final IconData? icon;
  final bool showBackground, showBorder;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: TSizes.defaultSpace),
      child: Container(
        width: TDeviceUtils.getScreenWidth(context),
        padding: EdgeInsets.all(TSizes.md),
        decoration: BoxDecoration(
          color: showBackground
              ? dark
                  ? TColors.dark
                  : TColors.light
              : Colors.transparent,
          borderRadius: BorderRadius.circular(TSizes.cardRadiusLg),
          border: showBorder ? Border.all(color: TColors.grey) : null,
        ),
        child: Row(
          children: [
            Icon(
              icon,
              color: TColors.darkerGrey,
            ),
            const SizedBox(width: TSizes.spaceBtwItems),
            Text(text,
                style: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .apply(color: TColors.grey)),
          ],
        ),
      ),
    );
  }
}
