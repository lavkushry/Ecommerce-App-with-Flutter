
import 'package:ecom_app/util/constants/colors.dart';
import 'package:ecom_app/util/constants/sizes.dart';
import 'package:ecom_app/util/constants/text_strings.dart';
import 'package:ecom_app/util/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class TTermsAndConditionCheckbox extends StatelessWidget {
  const TTermsAndConditionCheckbox({
    super.key,

  });


  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Row(
      children: [
        SizedBox(
            width: 24,
            height: 24,
            child: Checkbox(
              value: true,
              onChanged: (value) {},
            )),
        const SizedBox(width: TSizes.spaceBtwItems),
        Text.rich(
            TextSpan(
                children: [
                  TextSpan(text: '${TText.agreeTo} ',style: Theme.of(context).textTheme.bodySmall),
                  TextSpan(text: '${TText.privacyPolicy} ',style: Theme.of(context).textTheme.bodyMedium!.apply(
                    color: dark ? TColors.white :TColors.primaryColor,
                    decoration: TextDecoration.underline,
                    decorationColor: dark ? TColors.white :TColors.primaryColor,
                  )),
                  TextSpan(text: '${TText.and} ',style: Theme.of(context).textTheme.bodySmall),
                  TextSpan(text: '${TText.termsOfUse} ',style: Theme.of(context).textTheme.bodyMedium!.apply(
                    color: dark ? TColors.white :TColors.primaryColor,
                    decoration: TextDecoration.underline,
                    decorationColor: dark ? TColors.white :TColors.primaryColor,
                  )),

                ]
            )
        ),
      ],
    );
  }
}