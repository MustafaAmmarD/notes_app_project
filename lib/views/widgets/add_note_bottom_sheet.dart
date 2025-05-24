
import 'package:flutter/material.dart';
import 'package:notes_app_project/views/widgets/custom_button.dart';
import 'package:notes_app_project/views/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 32,),
            CustomTextField(hint: 'type',),
            SizedBox(height: 16,),
            CustomTextField(hint: 'title',),
            SizedBox(height: 16,),
            CustomTextField(hint: 'content', maxLines: 5,),
            SizedBox(height: 45,),
            CustomButton(hint: "Add",),
            SizedBox(height: 15,),
          ],
        ),
      ),
    );
  }
}