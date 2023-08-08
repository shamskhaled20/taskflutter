import 'package:flutter/material.dart';
class CustomText extends StatelessWidget {
  final String text;
  final double fontSize;

  final Color color;

  final Alignment alignment;
   final int maxLine;
  final double height;
  final TextOverflow overflow;

  CustomText({
    this.text = '',
    this.fontSize = 16,
    this.color = Colors.black,
    this.alignment = Alignment.topLeft,
    this.maxLine = 3,
    this.height = 1,
    this.overflow = TextOverflow.ellipsis, // Default to ellipsis
  });
  @override
  Widget build(BuildContext context) {
    return  Container(
      alignment: alignment,
      child: Text( text,style: TextStyle(
          fontSize: fontSize,
          color: color
      ),
        maxLines: maxLine, // Set the maximum number of lines
        overflow: overflow, // Set the overflow behavior
      ),
    );
  }
}