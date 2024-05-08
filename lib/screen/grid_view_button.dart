import 'package:flutter/material.dart';

class GridViewButtonScreen extends StatelessWidget {
  const GridViewButtonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        children: <Widget>[
          ElevatedButton(
            onPressed: () {},
            child: const Text(
              'K',
              style: TextStyle(fontSize: 30),
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text(
              'I',
              style: TextStyle(fontSize: 30),
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text(
              'R',
              style: TextStyle(fontSize: 30),
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text(
              'A',
              style: TextStyle(fontSize: 30),
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text(
              'N',
              style: TextStyle(fontSize: 30),
            ),
          ),
        ],
      ),
    );
  }
}
