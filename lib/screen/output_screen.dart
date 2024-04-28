import 'package:flutter/material.dart';

class OutputScreen extends StatelessWidget {
  // Receive full name from another screen
  final String fullName;
  const OutputScreen({
    required this.fullName,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Hello $fullName',
          style: const TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
