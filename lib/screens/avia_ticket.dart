import 'package:flutter/material.dart';

class ATScreen extends StatefulWidget {
  const ATScreen({super.key});

  @override
  State<ATScreen> createState() => _ATScreenState();
}

class _ATScreenState extends State<ATScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.onBackground,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.onBackground,
        centerTitle: true,
        title: const Text(
          'Поиск дешевых \n   авиабилетов',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
