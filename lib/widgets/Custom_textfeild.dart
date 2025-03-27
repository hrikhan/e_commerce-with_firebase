import 'package:flutter/material.dart';

import '../utility/all_colors.dart';
import '../utility/all_sizes.dart';

class CustomTextfeild extends StatelessWidget {
  const CustomTextfeild({super.key, required this.hintText, this.controller});
  final String hintText;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      width: allsize.fullwidth(context),
      decoration: BoxDecoration(
          color: allcolors.primarycolor.withOpacity(0.3),
          borderRadius: BorderRadius.circular(10)),
      child: TextField(
        controller: controller,
        style: TextStyle(fontSize: 20),
        decoration: InputDecoration(
            hintText: hintText,
            enabledBorder: InputBorder.none,
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: allcolors.primarycolor),
                borderRadius: BorderRadius.circular(10))),
      ),
    );
  }
}
