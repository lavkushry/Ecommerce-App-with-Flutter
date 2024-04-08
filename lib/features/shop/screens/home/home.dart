import 'package:ecom_app/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:ecom_app/common/widgets/custom_shapes/curved_edges/curved_edges.dart';
import 'package:ecom_app/common/widgets/custom_shapes/curved_edges/curved_edges_widgets.dart';
import 'package:ecom_app/util/constants/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: [
          TPrimaryHeaderContainer(),
        ],
      )),
    );
  }
}

class TPrimaryHeaderContainer extends StatelessWidget {
  const TPrimaryHeaderContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TCurveEdgesWidgets(
      child: Container(
        color: TColors.primaryColor,
        padding: const EdgeInsets.all(0),
        child: SizedBox(
          height: 400,
          child: Stack(
            children: [
              Positioned(top:-150,right:-250,child: TCircularContainer(backgroundColor: TColors.textWhite.withOpacity(0.1))),
              Positioned(top:100,right:-300,child: TCircularContainer(backgroundColor: TColors.textWhite.withOpacity(0.1))),

            ],
          ),
        ),
      ),
    );
  }
}

