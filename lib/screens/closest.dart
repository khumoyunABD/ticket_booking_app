import 'package:flutter/material.dart';

class ClosestScreen extends StatelessWidget {
  const ClosestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.onBackground,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.onBackground,
        centerTitle: true,
        title: const Text(
          'Короче',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
