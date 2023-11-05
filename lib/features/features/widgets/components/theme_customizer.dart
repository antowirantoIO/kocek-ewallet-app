import 'package:flutter/material.dart';
import 'package:kocek/features/app/blocs/app_cubit.dart';
import 'package:kocek/features/features/widgets/components/theme_card.dart';
import 'package:kocek/modules/dependency_injection/di.dart';
import 'package:kocek/utils/constants.dart';
import 'package:kocek/utils/methods/shortcuts.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:spring_button/spring_button.dart';

final PageController pageController = PageController();

class ThemeCustomizer extends StatelessWidget {
  const ThemeCustomizer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 8),
        GridView.count(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          crossAxisCount: 3,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
          childAspectRatio: 2 / 1,
          padding: EdgeInsets.zero,
          children: [
            ThemeCard(
              mode: ThemeMode.system,
              icon: MdiIcons.brightnessAuto,
              onTap: () => getIt<AppCubit>().setThemeMode(
                context,
                mode: ThemeMode.system,
              ),
            ),
            ThemeCard(
              mode: ThemeMode.light,
              icon: MdiIcons.brightness7,
              onTap: () => getIt<AppCubit>().setThemeMode(
                context,
                mode: ThemeMode.light,
              ),
            ),
            ThemeCard(
              mode: ThemeMode.dark,
              icon: MdiIcons.brightness1,
              onTap: () => getIt<AppCubit>().setThemeMode(
                context,
                mode: ThemeMode.dark,
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        BlocBuilder<AppCubit, AppState>(
          buildWhen: (p, c) => p.theme.mode != c.theme.mode,
          builder: (context, state) {
            final disabled = state.theme.mode == ThemeMode.system;

            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: SizedBox(
                height: 30,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 36,
                      height: 36,
                      decoration: BoxDecoration(
                        color: getTheme(context).primary,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        MdiIcons.palette,
                        color: getTheme(context).background,
                        size: 22,
                      ),
                    ),
                    const SizedBox(width: 8),
                  ],
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}

class SelectedColor extends StatelessWidget {
  const SelectedColor({
    required this.selectedColor,
    super.key,
    this.icon,
    this.iconColor,
  });

  final IconData? icon;
  final Color? iconColor;
  final Color selectedColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 36,
      height: 36,
      decoration: BoxDecoration(
        color: selectedColor,
        shape: BoxShape.circle,
      ),
      child: icon != null
          ? Icon(
              icon,
              color: iconColor,
              size: 22,
            )
          : null,
    );
  }
}
