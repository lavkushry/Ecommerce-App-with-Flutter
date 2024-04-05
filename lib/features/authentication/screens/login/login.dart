import 'package:ecom_app/common/styles/spacing_styles.dart';
import 'package:ecom_app/common/widgets_login_signup/form_divider.dart';
import 'package:ecom_app/common/widgets_login_signup/social_buttons.dart';
import 'package:ecom_app/features/authentication/screens/login/widgets/login_form.dart';
import 'package:ecom_app/features/authentication/screens/login/widgets/login_header.dart';
import 'package:ecom_app/util/constants/sizes.dart';
import 'package:ecom_app/util/constants/text_strings.dart';
import 'package:ecom_app/util/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              ///Logo, Title and SubTitle
              TLoginHeader(dark: dark),

              ///Form
              TLoginForm(),

              /// Divider
              TFormDivider(dividerText: TText.orSignInWith.capitalize!),
              const SizedBox(width: TSizes.spaceBtwSections,),

              /// Footer

              TSocialButtons()
            ],
          ),
        ),
      ),
    );
  }
}



