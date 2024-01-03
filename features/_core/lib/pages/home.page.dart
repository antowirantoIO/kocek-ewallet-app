import 'package:deps/features/features.dart';
import 'package:deps/packages/auto_route.dart';
import 'package:deps/packages/uicons.dart';
import 'package:flutter/material.dart';

import '../router/router.gr.dart';

@RoutePage()
class HomeRouter extends AutoRouter {
  const HomeRouter({super.key});
}

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const AutoLeadingButton(),
        actions: [
          IconButton(
            onPressed: () {
              $.get<UserCubit>().logout();
              //$.navigator.reevaluate();
            },
            icon: Icon(UIcons.boldRounded.exit),
            iconSize: 16,
          ),
        ],
        title: Text(
          context.router.topRoute.title(context),
          style: context.textTheme.headlineMedium,
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => $.navigator.push(FontsRoute()),
              child: const Text('Go to fonts'),
            ),
            ElevatedButton(
              onPressed: () => $.debug($.bloc.read<UserCubit>().state.user),
              child: const Text('Log user'),
            ),
          ],
        ),
      ),
    );
  }
}
