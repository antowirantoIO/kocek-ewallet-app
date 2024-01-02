import 'package:deps/locator/locator.dart';
import 'package:deps/packages/flutter_bloc.dart';
import 'package:feature_user/presentation/cubits/user.cubit.dart';
import 'package:flutter/material.dart';

import 'router/router.dart';

class FeaturesApp extends StatefulWidget {
  FeaturesApp({super.key});

  @override
  State<FeaturesApp> createState() => _FeaturesAppState();
}

class _FeaturesAppState extends State<FeaturesApp> {
  final _featuresRouter = FeaturesRouter();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => di<UserCubit>(),
      child: MaterialApp.router(
        title: 'Flutter Advanced Boilerplate',
        routerConfig: _featuresRouter.config(),
      ),
    );
  }
}
