import 'package:flutter/material.dart';
import 'package:notes_app_project/views/widgets/search_box.dart';

class NotesBody extends StatelessWidget {
  const NotesBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
      
          SizedBox(height: 70,),
          Row(
            children: [
              
             SearchBox(),
             const SizedBox(width: 12),
        // Notification Icon
        Container(
          margin: EdgeInsets.only(right: 10),
          child: IconButton(
            icon: const Icon(Icons.notifications_none),
            onPressed: () {
              // Handle notification tap
            },
          ),
        ),
            ],
          )
      
        ],
      ),
    );
  }
}



