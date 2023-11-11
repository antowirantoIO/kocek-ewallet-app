import 'package:deps/design/design.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'model/custom_theme.dart';

ThemeData createTheme(CustomTheme theme) {
  return theme.brightness == Brightness.light
      ? FlexThemeData.light(
          fontFamily: FontFamily.spaceGrotesk,
          colors: FlexSchemeColor.from(
            primary: theme.colors.primary,
            secondary: theme.colors.secondary,
            tertiary: theme.colors.tertiary,
          ),
          keyColors: FlexKeyColors(
            keepPrimary: true,
            useSecondary: theme.colors.secondary != null,
            useTertiary: theme.colors.tertiary != null,
            keepSecondary: theme.colors.secondary != null,
            keepTertiary: theme.colors.tertiary != null,
          ),
          subThemesData: getFlexSubThemesData(brightness: theme.brightness),
          tones: FlexTones.jolly(Brightness.light),
          visualDensity: FlexColorScheme.comfortablePlatformDensity,
          useMaterial3: true,
          swapLegacyOnMaterial3: true,
        )
      : FlexThemeData.dark(
          fontFamily: FontFamily.spaceGrotesk,
          colors: FlexSchemeColor.from(
            primary: theme.colors.primary,
            secondary: theme.colors.secondary,
            tertiary: theme.colors.tertiary,
          ).toDark(),
          keyColors: FlexKeyColors(
            keepPrimary: true,
            useSecondary: theme.colors.secondary != null,
            useTertiary: theme.colors.tertiary != null,
            keepSecondary: theme.colors.secondary != null,
            keepTertiary: theme.colors.tertiary != null,
          ),
          subThemesData: getFlexSubThemesData(brightness: theme.brightness),
          tones: FlexTones.jolly(Brightness.dark),
          visualDensity: FlexColorScheme.comfortablePlatformDensity,
          //appBarBackground: Colors.transparent,
          useMaterial3: true,
          swapLegacyOnMaterial3: true,
        );
}

FlexSubThemesData getFlexSubThemesData({
  required Brightness brightness,
}) {
  return brightness == Brightness.light
      ? const FlexSubThemesData(
          inputDecoratorBorderSchemeColor: SchemeColor.primary,
          inputDecoratorBackgroundAlpha: 64,
          inputDecoratorRadius: 12,
          inputCursorSchemeColor: SchemeColor.secondary,
          defaultRadius: 0,
          cardElevation: 0,
          blendOnColors: false,
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
          appBarScrolledUnderElevation: 0.5,
          drawerIndicatorSchemeColor: SchemeColor.primary,
          menuRadius: 6,
          menuOpacity: 0.96,
          menuBarRadius: 0,
          menuBarShadowColor: Color(0x00000000),
          menuIndicatorBackgroundSchemeColor: SchemeColor.primaryContainer,
          navigationBarSelectedLabelSchemeColor: SchemeColor.onSurface,
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
        )
      : const FlexSubThemesData(
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
          inputDecoratorSchemeColor: SchemeColor.primaryContainer,
          inputDecoratorBackgroundAlpha: 64,
          inputDecoratorBorderSchemeColor: SchemeColor.primary,
          inputDecoratorBorderType: FlexInputBorderType.underline,
          inputDecoratorRadius: 12,
          inputDecoratorUnfocusedBorderIsColored: false,
          inputDecoratorPrefixIconSchemeColor: SchemeColor.primary,
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
          navigationBarSelectedLabelSchemeColor: SchemeColor.primary,
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
}

SystemUiOverlayStyle getSystemUIOverlayStyle(BuildContext context) {
  final isDark = Theme.of(context).brightness == Brightness.dark;

  return SystemUiOverlayStyle(
    systemNavigationBarColor: Theme.of(context).colorScheme.onInverseSurface,
    systemNavigationBarContrastEnforced: false,
    systemStatusBarContrastEnforced: false,
    systemNavigationBarIconBrightness: isDark ? Brightness.light : Brightness.dark,
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: isDark ? Brightness.light : Brightness.dark,
    statusBarBrightness: isDark ? Brightness.dark : Brightness.light,
  );
}
