import 'package:ecom_app/common/widgets/appbar/appbar.dart';
import 'package:ecom_app/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:ecom_app/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:ecom_app/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:ecom_app/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:ecom_app/util/constants/colors.dart';
import 'package:ecom_app/util/constants/sizes.dart';
import 'package:ecom_app/util/constants/text_strings.dart';
import 'package:ecom_app/util/device%20/device_utility.dart';
import 'package:ecom_app/util/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iconsax/iconsax.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Header Container
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  /// App Bar
                  const THomeAppBar(),
                  const SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),

                  /// Search Bar
                  TSearchContainer(
                    text: 'Search in Store',
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
