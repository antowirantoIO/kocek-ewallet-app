// ignore_for_file: max_lines_for_file
// ignore_for_file: max_lines_for_function

import 'package:deps/core/theming/theming.dart';
import 'package:deps/packages/flex_color_scheme.dart';
import 'package:flutter/material.dart';

import 'fonts.gen.dart';

class Themes {
  static const commonThemeData = FlexSubThemesData(
    defaultRadius: 0,
    cardElevation: 0,
    blendTextTheme: true,
    useTextTheme: true,
    splashType: FlexSplashType.noSplash,
    splashTypeAdaptive: FlexSplashType.noSplash,
    elevatedButtonSecondarySchemeColor: SchemeColor.primaryContainer,
    outlinedButtonOutlineSchemeColor: SchemeColor.primary,
    outlinedButtonPressedBorderWidth: 2,
    segmentedButtonSchemeColor: SchemeColor.primary,
    segmentedButtonUnselectedForegroundSchemeColor: SchemeColor.primary,
    segmentedButtonBorderSchemeColor: SchemeColor.primary,
    unselectedToggleIsColored: true,
    fabUseShape: true,
    fabAlwaysCircular: true,
    fabSchemeColor: SchemeColor.tertiary,
    chipSelectedSchemeColor: SchemeColor.primaryContainer,
    popupMenuRadius: 6,
    popupMenuOpacity: 0.96,
    alignedDropdown: true,
    tooltipRadius: 4,
    tooltipSchemeColor: SchemeColor.inverseSurface,
    tooltipOpacity: 0.9,
    dialogRadius: 18,
    useInputDecoratorThemeInDialogs: true,
    snackBarElevation: 6,
    snackBarBackgroundSchemeColor: SchemeColor.inverseSurface,
    drawerIndicatorSchemeColor: SchemeColor.primary,
    menuRadius: 6,
    menuOpacity: 0.96,
    menuBarRadius: 0,
    menuBarShadowColor: Color(0x00000000),
    menuIndicatorBackgroundSchemeColor: SchemeColor.primaryContainer,
    navigationBarUnselectedLabelSchemeColor: SchemeColor.onSurface,
    navigationBarMutedUnselectedLabel: false,
    navigationBarSelectedIconSchemeColor: SchemeColor.onPrimary,
    navigationBarUnselectedIconSchemeColor: SchemeColor.onSurface,
    navigationBarMutedUnselectedIcon: false,
    navigationBarIndicatorSchemeColor: SchemeColor.primary,
    navigationBarIndicatorOpacity: 1,
    navigationBarBackgroundSchemeColor: SchemeColor.onInverseSurface,
    navigationBarElevation: 0,
    navigationBarHeight: 73,
    navigationRailSelectedLabelSchemeColor: SchemeColor.primary,
    navigationRailUnselectedLabelSchemeColor: SchemeColor.onSurface,
    navigationRailMutedUnselectedLabel: false,
    navigationRailSelectedIconSchemeColor: SchemeColor.onPrimary,
    navigationRailUnselectedIconSchemeColor: SchemeColor.onSurface,
    navigationRailMutedUnselectedIcon: false,
    navigationRailIndicatorSchemeColor: SchemeColor.primary,
    navigationRailIndicatorOpacity: 1,
    navigationRailBackgroundSchemeColor: SchemeColor.surface,
  );
  static ThemeData lightTheme(CustomTheme theme) => FlexThemeData.light(
        fontFamily: FontFamily.spaceGrotesk,
        useMaterial3: true,
        colors: FlexSchemeColor.from(
          primary: theme.colors.primary,
          secondary: theme.colors.secondary,
          tertiary: theme.colors.tertiary,
        ),
/*         keyColors: const FlexKeyColors(
          keepPrimary: true,
          useSecondary: true,
          useTertiary: true,
        ), */
        usedColors: 1,
        surfaceMode: FlexSurfaceMode.highSurfaceLowScaffold,
        //scaffoldBackground: Colors.transparent,
        appBarStyle: FlexAppBarStyle.background,
        blendLevel: 20,
        //lightIsWhite: true,
        subThemesData: const FlexSubThemesData(
          blendOnLevel: 10,
          blendOnColors: false,
          useTextTheme: true,
          useM2StyleDividerInM3: true,
          splashType: FlexSplashType.noSplash,
          elevatedButtonSchemeColor: SchemeColor.onPrimaryContainer,
          elevatedButtonSecondarySchemeColor: SchemeColor.primaryContainer,
          segmentedButtonSchemeColor: SchemeColor.primary,
          unselectedToggleIsColored: true,
          inputDecoratorSchemeColor: SchemeColor.primary,
          inputDecoratorBackgroundAlpha: 21,
          inputDecoratorRadius: 8,
          inputDecoratorUnfocusedHasBorder: false,
          inputDecoratorPrefixIconSchemeColor: SchemeColor.primary,
          popupMenuRadius: 6,
          popupMenuElevation: 4,
          alignedDropdown: true,
          dialogElevation: 3,
          dialogRadius: 20,
          useInputDecoratorThemeInDialogs: true,
          appBarScrolledUnderElevation: 0,
          drawerIndicatorSchemeColor: SchemeColor.primary,
          bottomNavigationBarMutedUnselectedLabel: false,
          bottomNavigationBarMutedUnselectedIcon: false,
          menuRadius: 6,
          menuElevation: 4,
          menuBarRadius: 0,
          menuBarElevation: 1,
          navigationBarSelectedLabelSchemeColor: SchemeColor.primary,
          navigationBarMutedUnselectedLabel: false,
          navigationBarSelectedIconSchemeColor: SchemeColor.onPrimary,
          navigationBarMutedUnselectedIcon: false,
          navigationBarIndicatorSchemeColor: SchemeColor.primary,
          navigationBarIndicatorOpacity: 1,
          navigationBarBackgroundSchemeColor: SchemeColor.background,
          navigationBarElevation: 0,
          navigationRailSelectedLabelSchemeColor: SchemeColor.primary,
          navigationRailMutedUnselectedLabel: false,
          navigationRailSelectedIconSchemeColor: SchemeColor.onPrimary,
          navigationRailMutedUnselectedIcon: false,
          navigationRailIndicatorSchemeColor: SchemeColor.primary,
          navigationRailIndicatorOpacity: 1,
        ),
        useMaterial3ErrorColors: true,
        visualDensity: FlexColorScheme.comfortablePlatformDensity,
      );
  static ThemeData darkTheme(CustomTheme theme) => FlexThemeData.dark(
        fontFamily: FontFamily.spaceGrotesk,
        useMaterial3: true,
        colors: FlexSchemeColor.from(
          primary: theme.colors.primary,
          secondary: theme.colors.secondary,
          tertiary: theme.colors.tertiary,
        ),
        usedColors: 1,
        appBarStyle: FlexAppBarStyle.background,
        darkIsTrueBlack: true,
        subThemesData: const FlexSubThemesData(
          blendOnLevel: 10,
          blendTextTheme: true,
          useTextTheme: true,
          useM2StyleDividerInM3: true,
          splashType: FlexSplashType.noSplash,
          elevatedButtonSchemeColor: SchemeColor.onPrimaryContainer,
          elevatedButtonSecondarySchemeColor: SchemeColor.primaryContainer,
          segmentedButtonSchemeColor: SchemeColor.primary,
          unselectedToggleIsColored: true,
          inputDecoratorSchemeColor: SchemeColor.primary,
          inputDecoratorBackgroundAlpha: 43,
          inputDecoratorRadius: 8,
          inputDecoratorUnfocusedHasBorder: false,
          inputDecoratorPrefixIconSchemeColor: SchemeColor.primary,
          popupMenuRadius: 6,
          popupMenuElevation: 4,
          alignedDropdown: true,
          dialogElevation: 3,
          dialogRadius: 20,
          useInputDecoratorThemeInDialogs: true,
          appBarScrolledUnderElevation: 0,
          drawerIndicatorSchemeColor: SchemeColor.primary,
          bottomNavigationBarMutedUnselectedLabel: false,
          bottomNavigationBarMutedUnselectedIcon: false,
          menuRadius: 6,
          menuElevation: 4,
          menuBarRadius: 0,
          menuBarElevation: 1,
          navigationBarSelectedLabelSchemeColor: SchemeColor.primary,
          navigationBarMutedUnselectedLabel: false,
          navigationBarSelectedIconSchemeColor: SchemeColor.onPrimary,
          navigationBarMutedUnselectedIcon: false,
          navigationBarIndicatorSchemeColor: SchemeColor.primary,
          navigationBarIndicatorOpacity: 1,
          navigationBarBackgroundSchemeColor: SchemeColor.background,
          navigationBarElevation: 0,
          navigationRailSelectedLabelSchemeColor: SchemeColor.primary,
          navigationRailMutedUnselectedLabel: false,
          navigationRailSelectedIconSchemeColor: SchemeColor.onPrimary,
          navigationRailMutedUnselectedIcon: false,
          navigationRailIndicatorSchemeColor: SchemeColor.primary,
          navigationRailIndicatorOpacity: 1,
        ),
        useMaterial3ErrorColors: true,
        visualDensity: FlexColorScheme.comfortablePlatformDensity,
      );
}