import 'package:flutter/material.dart';

class IconTextField extends StatelessWidget {
  final String imagePath;
  final String hintText;
  final TextEditingController? controller;

  const IconTextField({
    Key? key,
    required this.imagePath,
    required this.hintText,
    this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      decoration: BoxDecoration(
        color: Color(0xFFF8F8F6),
        border: Border.all(color: Color(0xFFF8F8F6)), // Set the border color
        borderRadius: BorderRadius.circular(4.0),
      ),
      child: Row(
        children: [
          Image.asset(
            imagePath,
            width: 50.0,
            height: 50.0,
            // color: Color(0xFFF8F8F6), // Use the same text color as the previous components
          ),
          SizedBox(width: 8.0),
          Expanded(
            child: TextField(
              controller: controller,
              decoration: InputDecoration(
                hintText: hintText,
                border: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
