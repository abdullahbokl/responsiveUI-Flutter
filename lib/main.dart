import 'package:flutter/material.dart';
import 'package:ui/pages/home_page.dart';

void main() {
  runApp(const InternApp());
}

class InternApp extends StatelessWidget {
  const InternApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Intern Developer',
      home: HomePage(),
    );
  }
}
