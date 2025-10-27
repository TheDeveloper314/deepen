import 'package:deepen/constants.dart';
import 'package:flutter/material.dart';

class BaseCard extends StatelessWidget {
  final double? elevation;
  final double? borderRadius;
  final Widget? child;
  final Color? color;
  final EdgeInsets? padding;
  const BaseCard({
    super.key,
    this.elevation,
    this.borderRadius,
    this.child,
    this.color,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: elevation ?? kElevation,
      borderRadius: BorderRadius.circular(borderRadius ?? kBorderRadius),
      color: color,
      child: Padding(
        padding: padding ?? EdgeInsets.all(16),
        child: child ?? SizedBox(),
      ),
    );
  }
}
