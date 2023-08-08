import 'package:flutter/material.dart';
class CustomProfileBar extends StatelessWidget {
  final String text;
  final double fontsize;
  final double fontsizesub;
  final String subText;
  final Function onPressed;

  CustomProfileBar({super.key, required this.text, required this.subText, required this.onPressed,
    this.fontsize = 20,  this.fontsizesub=15});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(text,
      style: TextStyle(
        fontSize: fontsize
      ),),
      subtitle: Text(subText,
        style: TextStyle(
            fontSize: fontsizesub
        ),) ,
      trailing: IconButton(
    icon: Icon(Icons.arrow_forward_ios
    ), // You can use any icon you like here
    onPressed: () => onPressed(),),
    );
  }
}
