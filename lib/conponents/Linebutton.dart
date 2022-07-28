import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

GestureDetector lButton({
  IconData? iconmood,
  Color? iconmoodcolor,
  double? iconmoodsize,
  String? mot,
  Color? motcolor,
  IconData? iconmood2,
  Color? iconmood2color,
  double? iconmood2size,
}) {
  return GestureDetector(
    onTap: () {},
    child: Container(
      width: 300,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            iconmood,
            color: iconmoodcolor,
            size: iconmoodsize,
          ),
          Text(mot!,
              style: TextStyle(color: motcolor, fontWeight: FontWeight.bold)),
          Icon(
            iconmood2,
            color: iconmood2color,
            size: iconmood2size,
          ),
        ],
      ),
    ),
  );
}
