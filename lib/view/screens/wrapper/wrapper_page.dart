import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:speakup_final/app/auth/cubit/auth_cubit.dart';

class WrapperPage extends StatelessWidget {
  const WrapperPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Wrapper Page')),
      body: Center(
        child: Text(
          context.read<AuthCubit>().state.mapOrNull(
                authenticated: (value) {
                  return 'Authenticated: ${value.user.goal.toString()}';
                },
              ) ??
              "Not Authenticated",
        ),
      ),
    );
  }
}
