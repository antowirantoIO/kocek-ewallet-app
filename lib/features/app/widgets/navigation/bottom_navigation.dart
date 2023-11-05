import 'package:flutter/material.dart';
import 'package:kocek/features/app/blocs/app_cubit.dart';
import 'package:kocek/modules/dependency_injection/di.dart';
import 'package:kocek/utils/constants.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({
    required this.destinations,
    required this.currentPageIndex,
    super.key,
  });

  final int currentPageIndex;
  final List<Widget> destinations;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular($constants.theme.defaultBorderRadius),
        topRight: Radius.circular($constants.theme.defaultBorderRadius),
      ),
      child: NavigationBar(
        height: 60,
        selectedIndex: currentPageIndex,
        onDestinationSelected: (index) => getIt<AppCubit>().changePageIndex(index: index),
        labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
        destinations: destinations,
      ),
    );
  }
}
