import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:igris/components/tile.dart';
import 'package:speakup_final/app/auth/cubit/auth_cubit.dart';
import 'package:speakup_final/app/exercise/cubit/exercise_cubit.dart';
import 'package:speakup_final/view/screens/session_result/session_result_page.dart';

class SessionHistoryPage extends StatelessWidget {
  const SessionHistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              children: [
                SizedBox(
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      BackButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                      const SizedBox(height: 20),
                      Text(
                        "Session History",
                        style: Theme.of(context).textTheme.displaySmall!.copyWith(
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 28),
                BlocProvider(
                  create:
                      (context) =>
                          ExerciseCubit()..getSessions(
                            context.read<AuthCubit>().state.mapOrNull(
                              authenticated: (state) => state.user.uid,
                            )!,
                          ),
                  child: BlocBuilder<ExerciseCubit, ExerciseState>(
                    builder: (context, state) {
                      return state.maybeWhen(
                        loading: () => const Center(child: CircularProgressIndicator()),
                        error: (message) => Center(child: Text(message)),
                        sessionsLoaded: (sessions) {
                          if (sessions.isEmpty) {
                            return const Center(child: Text("No sessions found"));
                          }

                          return ListView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: sessions.length,
                            itemBuilder: (context, index) {
                              final session = sessions[index];
                              return Tile(
                                title: session.id,
                                subtitle: session.id,
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) {
                                        return SessionResultPage(
                                          session: session,
                                          audioFilePath: "",
                                        );
                                      },
                                    ),
                                  );
                                },
                              );
                            },
                          );
                        },
                        orElse: () {
                          return const Center(child: Text("No sessions found"));
                        },
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
