import 'package:ecom_app/util/constants/colors.dart';
import 'package:ecom_app/util/constants/sizes.dart';
import 'package:ecom_app/util/constants/text_strings.dart';
import 'package:ecom_app/util/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../../../../common/widgets/privacy_policy/privacy_policy_screen.dart';

class TTermsAndConditionCheckbox extends StatelessWidget {
  const TTermsAndConditionCheckbox({
    super.key,
    required this.onCheckboxChanged,
  });

  final void Function(bool?)? onCheckboxChanged;

  void _showDialog(BuildContext context, String title, String content) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: SingleChildScrollView(child: Text(content)),
          actions: <Widget>[
            TextButton(
              child: const Text('Close'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

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
            onChanged: onCheckboxChanged,
          ),
        ),
        const SizedBox(width: TSizes.spaceBtwItems),
        Text.rich(TextSpan(children: [
          TextSpan(
              text: '${TText.agreeTo} ',
              style: Theme.of(context).textTheme.bodySmall),
          WidgetSpan(
            child: InkWell(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const PrivacyPolicyScreen()),
              ),
              child: Text('${TText.privacyPolicy} ',
                  style: Theme.of(context).textTheme.bodyMedium!.apply(
                        color: dark ? TColors.white : TColors.primaryColor,
                        decoration: TextDecoration.underline,
                        decorationColor:
                            dark ? TColors.white : TColors.primaryColor,
                      )),
            ),
          ),
          TextSpan(
              text: '${TText.and} ',
              style: Theme.of(context).textTheme.bodySmall),
          WidgetSpan(
            child: InkWell(
              onTap: () =>
                  _showDialog(context, TText.termsOfUse, TText.termsOfUseText),
              child: Text('${TText.termsOfUse} ',
                  style: Theme.of(context).textTheme.bodyMedium!.apply(
                        color: dark ? TColors.white : TColors.primaryColor,
                        decoration: TextDecoration.underline,
                        decorationColor:
                            dark ? TColors.white : TColors.primaryColor,
                      )),
            ),
          ),
        ])),
      ],
    );
  }
}
