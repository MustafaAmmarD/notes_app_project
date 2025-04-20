import 'package:flutter/material.dart';
import 'package:notes_app_project/views/notes_main_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NotesMainView())
      ;
  }
}