import 'package:batch_32a/screen/student_details.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      // themes
      home: StudentDetailsScreen(),
    );
    
  }
}
