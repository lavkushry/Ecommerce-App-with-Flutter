import 'package:ecom_app/common/widgets/appbar/appbar.dart';
import 'package:ecom_app/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:ecom_app/util/device%20/device_utility.dart';
import 'package:flutter/material.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  PreferredSize(
                    preferredSize: Size.fromHeight(TDeviceUtils.getAppBarHeight()),
                    child: TAppBar(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}