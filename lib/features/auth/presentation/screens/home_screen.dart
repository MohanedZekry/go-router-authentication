import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gorouter_auth/app/routes/app_router.dart';
import '../../../../app/routes/route_utils.dart';
import '../controller/auth_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    late Widget finalView;

    return Scaffold(
      body: BlocConsumer<AuthBloc, AuthState>(
        listener: (context, state) {
          state.when(
              initial: () {},
              success: (s){},
              failed: () => AppRouter.router.go(PAGES.login.screenPath));
        },
        builder: (context, state) {
          state.when(
              initial: () => finalView = const SizedBox(),
              success: (r) => finalView = Center(
                child: TextButton(
                  child: const Text(
                    'Logout',
                  ),
                  onPressed: () {
                    context.read<AuthBloc>().loginUseCase(false);
                    AppRouter.router.go(PAGES.login.screenPath);
                  },
                ),
              ),
              failed: () {
                finalView = const SizedBox();
                //AppRouter.router.go(PAGES.login.screenPath);
              },
          );
          return finalView;
        },
      ),
    );
  }
}
