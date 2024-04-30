import 'package:ecom_app/common/widgets/appbar/appbar.dart';
import 'package:ecom_app/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:ecom_app/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:ecom_app/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:ecom_app/util/constants/colors.dart';
import 'package:ecom_app/util/constants/text_strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Header Container
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                    THomeAppBar(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
