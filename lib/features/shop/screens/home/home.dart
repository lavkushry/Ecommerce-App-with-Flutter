import 'package:ecom_app/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:ecom_app/common/widgets/custom_shapes/containers/primary_header_container.dart';
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
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: [
          TPrimaryHeaderContainer(
            child: Column(
              children: [],
            ),
          ),
        ],
      )),
    );
  }
}
