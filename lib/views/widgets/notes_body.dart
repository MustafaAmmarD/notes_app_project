import 'package:flutter/material.dart';
import 'package:notes_app_project/views/widgets/category_list.dart';
import 'package:notes_app_project/views/widgets/date_box.dart';
import 'package:notes_app_project/views/widgets/notes_grid.dart';
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
          ),
 
        SizedBox(height: 20,),

        SizedBox(
          height: 120,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder:(context,index){
            SizedBox(width: 15,);
             return  DateBox(weekday: "Tue", day: "23", month: "Apr");
            }
          ),
        ),

        CategoriesList(),

        Expanded(child: NotesGrid()),

      
        ],
      ),
    );
  }
}



