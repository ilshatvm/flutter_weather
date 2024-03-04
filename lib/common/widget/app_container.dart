import 'package:flutter/material.dart';

class AppContainer extends StatelessWidget {
  const AppContainer({
    super.key,
    this.borderRadius = 35.0,
    this.child,
    this.color,
    this.height,
    this.hPadding = 30.0,
    this.vPadding = 20.0,
    this.width,
  });

  final double borderRadius;
  final Widget? child;
  final Color? color;
  final double? height;
  final double hPadding;
  final double vPadding;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width ?? double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius),
        color: color,
        // color: Theme.of(context).colorScheme.primary,
      ),
      padding: child == null
          ? null
          : EdgeInsets.symmetric(vertical: vPadding, horizontal: hPadding),
      child: child,
    );
  }
}
