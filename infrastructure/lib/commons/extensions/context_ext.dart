// https://github.com/nank1ro/awesome_flutter_extensions

import 'package:flutter/material.dart';

import '../constants/my_platform.dart';

/// Extension on `BuildContext` to provide easy access to theme and media query related properties.
extension ContextExt on BuildContext {
  /// Theme related extensions
  ThemeData get theme => Theme.of(this);
  TextTheme get textTheme => Theme.of(this).textTheme;
  TextTheme get primaryTextTheme => Theme.of(this).primaryTextTheme;
  BottomAppBarTheme get bottomAppBarTheme => Theme.of(this).bottomAppBarTheme;
  BottomSheetThemeData get bottomSheetTheme => Theme.of(this).bottomSheetTheme;
  AppBarTheme get appBarTheme => Theme.of(this).appBarTheme;

  /// Media query related extensions
  Size get mediaQuerySize => MediaQuery.of(this).size;
  double get height => mediaQuerySize.height;
  double get width => mediaQuerySize.width;
  EdgeInsets get mediaQueryPadding => MediaQuery.of(this).padding;
  EdgeInsets get mediaQueryViewPadding => MediaQuery.of(this).viewPadding;
  EdgeInsets get mediaQueryViewInsets => MediaQuery.of(this).viewInsets;
  Orientation get orientation => MediaQuery.of(this).orientation;
  bool get isLandscape => orientation == Orientation.landscape;
  bool get isPortrait => orientation == Orientation.portrait;
  bool get shouldAlwaysUse24HourFormat => MediaQuery.of(this).alwaysUse24HourFormat;
  double get devicePixelRatio => MediaQuery.of(this).devicePixelRatio;
  Brightness get platformBrightness => MediaQuery.of(this).platformBrightness;
  double get mediaQueryShortestSide => mediaQuerySize.shortestSide;
  bool get shouldShowNavbar => width > 800;
  bool get isPhone => mediaQueryShortestSide < 600;
  bool get isSmallTablet => mediaQueryShortestSide >= 600;
  bool get isLargeTablet => mediaQueryShortestSide >= 720;
  bool get isTablet => isSmallTablet || isLargeTablet;

  /// Returns specific values according to screen size for responsive design.
  T? responsiveValue<T>({
    T? mobile,
    T? tablet,
    T? desktop,
  }) {
    var deviceWidth = mediaQuerySize.shortestSide;

    if (MyPlatform.isDesktop) {
      deviceWidth = mediaQuerySize.width;
    }
    if (deviceWidth >= 1200 && desktop != null) {
      return desktop;
    }
    if (deviceWidth >= 600 && tablet != null) {
      return tablet;
    }

    return mobile;
  }
}