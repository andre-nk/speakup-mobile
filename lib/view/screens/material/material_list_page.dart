import 'package:flutter/material.dart';

class MaterialListPage extends StatelessWidget {
  const MaterialListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: Center(
        child: Text(
          'Welcome to the Material Page',
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ),
    );
  }
}
