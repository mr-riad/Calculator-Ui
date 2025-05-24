import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  String text;
  Color ? color;
  final VoidCallback onClick;

  CustomButton({
    super.key,
    required this.onClick,
    this.color,
    required this.text
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: color ?? Colors.grey[800],
            padding: EdgeInsets.all(20),
            shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
        ),
        onPressed: onClick,
        child: Text(text,
          style: TextStyle(
              color: Colors.white,
            fontSize: 30

          ),));
  }
}