// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:haindi_graph/constants/global_variables.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final Color? color;
  final double minHeight;
  final double maxHeight;
  final double borderRadius;

  const CustomButton({
    Key? key,
    required this.text,
    required this.onTap,
    this.color,
    this.minHeight = 50,
    this.maxHeight = 80,
    this.borderRadius = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text(
        text,
        style: TextStyle(
          color: color == null ? GlobalVariables.greendarkColor : Colors.black,
        ),
      ),
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        minimumSize: Size(double.infinity, minHeight),
        maximumSize: Size(double.infinity, maxHeight),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        backgroundColor: color,
      ),
    );
  }
}
