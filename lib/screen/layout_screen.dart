import 'package:flutter/material.dart';

class LayoutScreen extends StatelessWidget {
  const LayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ASdasd'),
      ),
      body: Container(
        color: Colors.amber[100],
        height: 50,
        
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Icon(Icons.phone),
                Text('Call'),
              ],
            ),
            Column(
              children: [
                Icon(Icons.route),
                Text('Route'),
              ],
            ),
            Column(
              children: [
                Icon(Icons.share),
                Text('Share'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
