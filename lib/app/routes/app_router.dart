import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:gorouter_auth/app/routes/route_utils.dart';
import 'package:gorouter_auth/app/routes/screens/not_found_page.dart';
import 'package:gorouter_auth/features/auth/presentation/screens/home_screen.dart';
import '../../features/auth/presentation/controller/auth_bloc.dart';
import '../../features/auth/presentation/screens/login_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../di/injector.dart';

class AppRouter {

  static final _rootNavigatorKey = GlobalKey<NavigatorState>();

  static final GoRouter _router = GoRouter(
    debugLogDiagnostics: true,
    navigatorKey: _rootNavigatorKey,
    routes: [
      GoRoute(
        path: PAGES.home.screenPath,
        name: PAGES.home.screenName,
        builder: (context, state) =>
            BlocProvider(
              create: (context) => injector<AuthBloc>()..add(const IsLoggedInEvent()),
              child: const HomeScreen(),
            ),
      ),
      GoRoute(
        path: PAGES.login.screenPath,
        name: PAGES.login.screenName,
        builder: (context, state) =>
            BlocProvider(
              create: (context) => injector<AuthBloc>(),
              child: const LoginScreen(),
            ),
      ),
    ],
    errorBuilder: (context, state) => const NotFoundScreen(),
  );

  static GoRouter get router => _router;

}