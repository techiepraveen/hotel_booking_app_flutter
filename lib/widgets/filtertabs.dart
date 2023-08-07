import 'package:flutter/material.dart';

class filterTabs extends StatelessWidget {
  double? size;
  String text;
  Color color;
  filterTabs(
      {Key? key, required this.size, required this.text, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Container(
        height: 30,
        width: size,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: color),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
                fontSize: 12, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
