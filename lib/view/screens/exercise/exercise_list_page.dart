import 'package:flutter/material.dart';

class ExerciseListPage extends StatelessWidget {
  const ExerciseListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: Center(
        child: Text(
          'Welcome to the Exercise Page',
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ),
    );
  }
}
