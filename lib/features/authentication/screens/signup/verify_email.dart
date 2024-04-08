import 'package:ecom_app/common/widgets/success_screen/success_screen.dart';
import 'package:ecom_app/features/authentication/screens/login/login.dart';
import 'package:ecom_app/util/constants/image_strings.dart';
import 'package:ecom_app/util/constants/sizes.dart';
import 'package:ecom_app/util/constants/text_strings.dart';
import 'package:ecom_app/util/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerifyEmailScreen  extends StatelessWidget {
  const VerifyEmailScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            icon: const Icon(CupertinoIcons.clear),
            onPressed: () => Get.offAll(()=> const LoginScreen()) ,
          )
        ],
      ),
      body:  SingleChildScrollView(
        child: Padding(
          padding:EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              ///Image
              Image(image: AssetImage(TImages.deliveredEmailIllustration),width: THelperFunctions.screenWidth()*0.6,),
              const SizedBox(height: TSizes.spaceBtwItems),

              /// Title and SubTitle
              Text(TText.confirmEmail ,style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center,),
              const SizedBox(height: TSizes.spaceBtwItems),
              Text('support@dearlavkush.tech' ,style: Theme.of(context).textTheme.labelLarge, textAlign: TextAlign.center,),
              const SizedBox(height: TSizes.spaceBtwSections),
              Text(TText.confirmEmailSubTitle ,style: Theme.of(context).textTheme.labelMedium, textAlign: TextAlign.center,),
              const SizedBox(height: TSizes.spaceBtwSections),

              /// Buttons
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => Get.to(() =>  SuccessScreen(
                    image: TImages.deliveredEmailIllustration,
                    title: TText.accountCreatedTitle,
                    subTitle: TText.accountCreatedSubTitle,
                    onPressed:() => Get.offAll(()=> const LoginScreen())
                  ),
                  ),
                  child:const Text(TText.continueText)
                ),
              ),
              const SizedBox(height: TSizes.spaceBtwItems),
              SizedBox(
                width:double.infinity,
                child: TextButton(
                  onPressed: () {},
                  child: const Text(TText.resendEmail)

                )
              )

            ],
          ),
        )
      ),
    );
  }
}
