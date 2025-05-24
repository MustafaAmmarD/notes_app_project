import 'package:flutter/material.dart';
import 'package:notes_app_project/views/widgets/custom_button.dart';
import 'package:notes_app_project/views/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(children: [
            SizedBox(height: 32,),
                CustomTextField(hint: 'type',),
                SizedBox(height: 16,),
                CustomTextField(hint: 'title',),
                SizedBox(height: 16,),
                CustomTextField(hint: 'content', maxLines: 5,),
                SizedBox(height: 45,),
                CustomButton(hint: "Edit",),
                SizedBox(height: 15,),
        ],),
      ),
    );
  }
}