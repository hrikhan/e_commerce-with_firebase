
import 'package:flutter/material.dart';

import '../utility/all_colors.dart';
class Custombutton extends StatelessWidget {
  Custombutton({super.key,required this.height,required  this.width,required  this.ontap, required this.size, required this.text, required this.color, required this.Textcolor});
  final double height;
  final double width;
  final VoidCallback ontap;
 final double size;
 final String text;
final Color color;
final Color Textcolor;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        height:height ,
        width:width ,

        decoration: BoxDecoration(
          color:color,
          borderRadius: BorderRadius.circular(10)
        ),
        child: Center(
          child: Text(text,style: TextStyle(color:Textcolor ,fontSize: size),),

        ),
      ),
    );
  }
}
