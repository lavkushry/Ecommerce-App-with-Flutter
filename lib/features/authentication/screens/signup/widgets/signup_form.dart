import 'package:ecom_app/features/authentication/screens/signup/verify_email.dart';
import 'package:ecom_app/util/constants/sizes.dart';
import 'package:ecom_app/util/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'terms_condition_checkbox.dart';

class TSignupForm extends StatefulWidget {
  const TSignupForm({
    super.key,
  });

  @override
  _TSignupFormState createState() => _TSignupFormState();

}

class _TSignupFormState extends State<TSignupForm> {
  bool _isAgreedToTerms = false;

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          ///First And Last Name
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  decoration: const InputDecoration(
                    labelText: TText.firstName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
              const SizedBox(width: TSizes.spaceBtwInputFields),
              Expanded(
                child: TextFormField(
                  decoration: const InputDecoration(
                    labelText: TText.lastName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: TSizes.spaceBtwInputFields),

          ///Username
          TextFormField(
            decoration: const InputDecoration(
              labelText: TText.username,
              prefixIcon: Icon(Iconsax.user_edit),
            ),
          ),
          const SizedBox(height: TSizes.spaceBtwInputFields),

          ///Email
          TextFormField(
            decoration: const InputDecoration(
              labelText: TText.email,
              prefixIcon: Icon(Iconsax.direct),
            ),
          ),
          const SizedBox(height: TSizes.spaceBtwInputFields),

          ///Phone Number
          TextFormField(
            decoration: const InputDecoration(
              labelText: TText.phoneNo,
              prefixIcon: Icon(Iconsax.call),
            ),
          ),
          const SizedBox(height: TSizes.spaceBtwInputFields),

          ///Password
          TextFormField(
            decoration: const InputDecoration(
              labelText: TText.password,
              prefixIcon: Icon(Iconsax.password_check),
              suffixIcon: Icon(Iconsax.eye_slash),
            ),
          ),
          const SizedBox(height: TSizes.spaceBtwInputFields),

          ///Terms and Conditions
          TTermsAndConditionCheckbox(
            onCheckboxChanged: (value) {
              setState(() {
                _isAgreedToTerms = value?? false;
              });
            },
          ),
          const SizedBox(height: TSizes.spaceBtwSections),
          ///Sign Up Button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: _isAgreedToTerms ? () => Get.to(() => const VerifyEmailScreen()) :null,
              child: Text(TText.createAccount),
            ),
          ),
        ],
      ),
    );
  }
}
