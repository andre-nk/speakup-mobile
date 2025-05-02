import 'package:flutter/material.dart';

class WrapperPage extends StatelessWidget {
  const WrapperPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wrapper Page'),
      ),
      body: Center(
        child: const Text('This is the Wrapper Page'),
      ),
    );
  }
}