library circle_mijo_library;

import 'package:flutter/material.dart';

class CirclePage extends StatelessWidget {
  const CirclePage({
    super.key,
    required this.child,
    required this.diameter,
    this.isCircleDevice = false,
    this.color = Colors.black,
  });

  final Widget child;
  final bool isCircleDevice;
  final double diameter;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: isCircleDevice ? Colors.black : Colors.white,
      child: Center(
        child: SizedBox(
            width: diameter,
            height: diameter,
            child: ClipOval(
                child: Container(
              color: color,
              child: child,
            ))),
      ),
    );
  }
}
