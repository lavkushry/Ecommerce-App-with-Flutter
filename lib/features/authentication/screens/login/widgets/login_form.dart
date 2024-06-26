import 'package:ecom_app/features/authentication/screens/password_configuration/reset_password.dart';
import 'package:ecom_app/features/authentication/screens/signup/signup.dart';
import 'package:ecom_app/navigation_menu.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../../util/constants/sizes.dart';
import '../../../../../util/constants/text_strings.dart';

class TLoginForm extends StatelessWidget {
  const TLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(
            vertical: TSizes.spaceBtwSections),
        child: Column(
          children: [
            ///Email
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right),
                labelText: TText.email,
              ),
            ),
            const SizedBox(
              height: TSizes.spaceBtwInputFields,
            ),

            ///Passwords
            TextFormField(
              decoration: const InputDecoration(
                  prefixIcon: Icon(Iconsax.password_check),
                  labelText: TText.password,
                  suffixIcon: Icon(Iconsax.eye_slash)),
            ),
            const SizedBox(
              height: TSizes.spaceBtwInputFields / 2,
            ),

            ///Remember Me & Forget Password
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ///Remember Me
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value) {}),
                    const Text(TText.rememberMe),
                  ],
                ),

                ///Forget Password
                TextButton(
                    onPressed: () => Get.to(() => const ForgotPassword()),
                    child: const Text(TText.forgetPassword)),
              ],
            ),

            const SizedBox(
              height: TSizes.spaceBtwSections,
            ),

            /// Sign In Button
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () => Get.to(()=> const NavigationMenu()), child: const Text(TText.signIn))),
            const SizedBox(
              height: TSizes.spaceBtwItems,
            ),

            /// Create Account Button

            SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                    onPressed: () => Get.to(() => const SignupScreen()),
                    child: const Text(TText.createAccount))),
          ],
        ),
      ),
    );
  }
}
