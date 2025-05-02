// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:speakup_final/app/auth/cubit/auth_cubit.dart';
import 'package:speakup_final/view/screens/exercise/exercise_list_page.dart';
import 'package:speakup_final/view/screens/home/home_page.dart';
import 'package:speakup_final/view/screens/material/material_list_page.dart';

class WrapperPage extends StatefulWidget {
  const WrapperPage({super.key});

  @override
  State<WrapperPage> createState() => _WrapperPageState();
}

class _WrapperPageState extends State<WrapperPage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.onPrimary,
      body:
          _currentIndex == 0
              ? const HomePage()
              : _currentIndex == 1
              ? const ExerciseListPage()
              : _currentIndex == 2
              ? const MaterialListPage()
              : const ExerciseListPage(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        backgroundColor: Theme.of(context).colorScheme.tertiaryContainer,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: Opacity(
              opacity: 0.5,
              child: Icon(
                Icons.home_rounded,
                size: 24,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            activeIcon: Icon(
              Icons.home_rounded,
              color: Theme.of(context).colorScheme.primary,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/icons/recording_opaque.svg",
              color: Theme.of(context).colorScheme.primary,
            ),
            activeIcon: SvgPicture.asset(
              "assets/icons/recording.svg",
              color: Theme.of(context).colorScheme.primary,
            ),
            label: "Exercise",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/icons/material_opaque.svg",
              color: Theme.of(context).colorScheme.primary,
            ),
            activeIcon: SvgPicture.asset(
              "assets/icons/material.svg",
              color: Theme.of(context).colorScheme.primary,
            ),
            label: "Material",
          ),
          BottomNavigationBarItem(
            icon: BlocBuilder<AuthCubit, AuthState>(
              builder: (context, state) {
                return state.maybeWhen(
                  authenticated: (user) {
                    return CircleAvatar(
                      radius: 20,
                      backgroundColor: Theme.of(context).colorScheme.primary,
                      backgroundImage: NetworkImage(user.photoURL ?? ""),
                    );
                  },
                  orElse: () {
                    return const SizedBox();
                  },
                );
              },
            ),
            label: "Profile",
          ),
        ],
        selectedItemColor: Theme.of(context).colorScheme.primary,
      ),
    );
  }
}
