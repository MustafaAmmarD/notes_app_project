import 'package:flutter/material.dart';

class DateBox extends StatelessWidget {
  final String weekday;
  final String day;
  final String month;

  const DateBox({
    super.key,
    required this.weekday,
    required this.day,
    required this.month,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [

        Container(
          width: 70,
          padding: const EdgeInsets.symmetric(vertical: 10),
          margin: EdgeInsets.symmetric(horizontal: 5),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(25),
            border: Border.all(color: Colors.grey.shade300),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                weekday,
                style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
              ),
              Text(
                day,
                style: const TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              Text(
                month,
                style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
