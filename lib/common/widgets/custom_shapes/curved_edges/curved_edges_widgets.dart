import 'package:ecom_app/common/widgets/custom_shapes/curved_edges/curved_edges.dart';
import 'package:flutter/material.dart';

class TCurveEdgesWidgets extends StatelessWidget {
  const TCurveEdgesWidgets({
    super.key,
    this.child,
  });

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
        clipper: TCustomCurvedEdges() ,
        child:child
    );
  }
}
