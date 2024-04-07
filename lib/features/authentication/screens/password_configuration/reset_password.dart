import 'package:ecom_app/features/authentication/screens/password_configuration/forgot_password.dart';
import 'package:ecom_app/util/constants/sizes.dart';
import 'package:ecom_app/util/constants/text_strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:  Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Heading
              Text(TText.forgetPasswordTitle,style: Theme.of(context).textTheme.headlineMedium,),
              const SizedBox(height: TSizes.spaceBtwItems),
              Text(TText.forgetPasswordSubTitle,style: Theme.of(context).textTheme.labelMedium,),
              const SizedBox(height: TSizes.spaceBtwSections*2),

              /// Text Field
              TextFormField(
                decoration: InputDecoration(
                  labelText:TText.email,
                  prefixIcon: Icon(Iconsax.direct_right),
                ),
              ),
              const SizedBox(height: TSizes.spaceBtwSections),

              /// Submit Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(onPressed: () => Get.off(() => const ResetPasword()),
                child: const Text(TText.submit),
                ),
              ),

            ],
    ),
    )
    );
  }
}
