import 'package:bubadibako/screens/exam_screen.dart';
import 'package:bubadibako/screens/login_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ExamScreen(),
    );
  }
}
