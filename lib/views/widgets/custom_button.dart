import 'package:flutter/material.dart';
import 'package:notes_app_project/consatans.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.hint});
  final String hint;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 55,
      decoration: BoxDecoration(
        color:  KprimaryColor,
        borderRadius: BorderRadius.circular(8)
      ),
      child: Center(
        child: Text(hint , style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20
        ),),
      ),
    );
  }
}