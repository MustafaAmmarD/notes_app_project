import 'package:flutter/material.dart';
import 'package:notes_app_project/views/widgets/note_box.dart';

class NotesGrid extends StatelessWidget {
  const NotesGrid({super.key});

  @override
  Widget build(BuildContext context) {
    final notes = [
      {"title": "Groceries", "subtitle": "Milk, Eggs, Bread, Butter"},
      {"title": "Ideas", "subtitle": "Build a note app with color and dynamic UI"},
      {"title": "Books", "subtitle": "Read Atomic Habits, The Alchemist"},
      {"title": "Flutter", "subtitle": "Learn state management and animations"},
      {"title": "Workout", "subtitle": "Leg day, Cardio, Yoga"},
      {"title": "Work", "subtitle": "Prepare meeting slides"},
      {"title": "Life", "subtitle": "Enjoy little things and breathe"},
      {"title": "Goals", "subtitle": "2025 vision board setup"},
    ];

    return GridView.builder(
      padding: const EdgeInsets.all(12),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // 2 per row
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
        childAspectRatio: 0.85, // adjust height/width ratio
      ),
      itemCount: notes.length,
      itemBuilder: (context, index) {
        final note = notes[index];
        return NoteBox(
          title: note["title"]!,
          subtitle: note["subtitle"]!,
        );
      },
    );
  }
}
