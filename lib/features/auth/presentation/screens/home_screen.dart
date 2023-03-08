import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../controller/auth_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<AuthBloc, AuthState>(
        builder: (context, state) {
          state.when(
              initial: () => const SizedBox(),
              success: () => Center(
                child: TextButton(
                  child: const Text(
                    'Logout',
                  ),
                  onPressed: () {

                  },
                ),
              ),
              failed: () => const SizedBox(),
          );
          return const SizedBox();
        },
      ),
    );
  }
}
