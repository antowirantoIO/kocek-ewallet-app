// ignore_for_file: max_lines_for_file

import 'package:flutter/material.dart';

import '../../constants/radiuses.dart';

class RadiusOnly extends StatelessWidget {
  factory RadiusOnly.none({
    required Widget child,
    bool topLeft = false,
    bool topRight = false,
    bool bottomLeft = false,
    bool bottomRight = false,
    Key? key,
  }) =>
      RadiusOnly._(
        topLeft: topLeft,
        topRight: topRight,
        bottomLeft: bottomLeft,
        bottomRight: bottomRight,
        radius: Radiuses.none.value,
        key: key,
        child: child,
      );
  factory RadiusOnly.xs({
    required Widget child,
    bool topLeft = false,
    bool topRight = false,
    bool bottomLeft = false,
    bool bottomRight = false,
    Key? key,
  }) =>
      RadiusOnly._(
        topLeft: topLeft,
        topRight: topRight,
        bottomLeft: bottomLeft,
        bottomRight: bottomRight,
        radius: Radiuses.xs.value,
        key: key,
        child: child,
      );
  factory RadiusOnly.sm({
    required Widget child,
    bool topLeft = false,
    bool topRight = false,
    bool bottomLeft = false,
    bool bottomRight = false,
    Key? key,
  }) =>
      RadiusOnly._(
        topLeft: topLeft,
        topRight: topRight,
        bottomLeft: bottomLeft,
        bottomRight: bottomRight,
        radius: Radiuses.sm.value,
        key: key,
        child: child,
      );
  factory RadiusOnly.md({
    required Widget child,
    bool topLeft = false,
    bool topRight = false,
    bool bottomLeft = false,
    bool bottomRight = false,
    Key? key,
  }) =>
      RadiusOnly._(
        topLeft: topLeft,
        topRight: topRight,
        bottomLeft: bottomLeft,
        bottomRight: bottomRight,
        radius: Radiuses.md.value,
        key: key,
        child: child,
      );
  factory RadiusOnly.lg({
    required Widget child,
    bool topLeft = false,
    bool topRight = false,
    bool bottomLeft = false,
    bool bottomRight = false,
    Key? key,
  }) =>
      RadiusOnly._(
        topLeft: topLeft,
        topRight: topRight,
        bottomLeft: bottomLeft,
        bottomRight: bottomRight,
        radius: Radiuses.lg.value,
        key: key,
        child: child,
      );
  factory RadiusOnly.xl({
    required Widget child,
    bool topLeft = false,
    bool topRight = false,
    bool bottomLeft = false,
    bool bottomRight = false,
    Key? key,
  }) =>
      RadiusOnly._(
        topLeft: topLeft,
        topRight: topRight,
        bottomLeft: bottomLeft,
        bottomRight: bottomRight,
        radius: Radiuses.xl.value,
        key: key,
        child: child,
      );
  factory RadiusOnly.xxl({
    required Widget child,
    bool topLeft = false,
    bool topRight = false,
    bool bottomLeft = false,
    bool bottomRight = false,
    Key? key,
  }) =>
      RadiusOnly._(
        topLeft: topLeft,
        topRight: topRight,
        bottomLeft: bottomLeft,
        bottomRight: bottomRight,
        radius: Radiuses.xxl.value,
        key: key,
        child: child,
      );

  const RadiusOnly._({
    required this.radius,
    required this.topLeft,
    required this.topRight,
    required this.bottomLeft,
    required this.bottomRight,
    required this.child,
    super.key,
  });

  final double radius;
  final Widget child;
  final bool topLeft;
  final bool topRight;
  final bool bottomLeft;
  final bool bottomRight;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(topLeft ? radius : 0),
          topRight: Radius.circular(topRight ? radius : 0),
          bottomLeft: Radius.circular(bottomLeft ? radius : 0),
          bottomRight: Radius.circular(bottomRight ? radius : 0),
        ),
      ),
      child: child,
    );
  }
}
