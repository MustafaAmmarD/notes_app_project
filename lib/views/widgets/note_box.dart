import 'dart:math';
import 'package:flutter/material.dart';
import 'package:notes_app_project/views/edit_notes_view.dart';

class NoteBox extends StatelessWidget {
  final String title;
  final String subtitle;

  NoteBox({super.key, required this.title, required this.subtitle});

  final List<Color> colors = [
    Colors.amber.shade100,
    Colors.blue.shade100,
    Colors.green.shade100,
    Colors.pink.shade100,
    Colors.purple.shade100,
    Colors.teal.shade100,
  ];

  @override
  Widget build(BuildContext context) {
    final Color randomColor = colors[Random().nextInt(colors.length)];

    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context){
          return EditNotesView();
        }));
      },
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            padding: const EdgeInsets.only(
              top: 12,
              left: 12,
              right: 12,
              bottom: 40, // space for the delete icon
            ),
            decoration: BoxDecoration(
              color: randomColor,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  subtitle,
                  style: const TextStyle(fontSize: 14),
                ),
              ],
            ),
          ),
      
          // Delete icon (design only)
          Positioned(
            bottom: 8,
            child: Container(
              padding: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                color: Colors.red.shade300,
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.delete,
                size: 18,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
