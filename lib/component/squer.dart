import 'package:flutter/material.dart';
class squerTitle extends StatelessWidget {
  final imagepath;
  const squerTitle({super.key,
    required this.imagepath});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(7),
        color: Colors.grey[200],
      ),
      child:Image.asset(
        imagepath,
        height: 42,

      ),
    );
  }
}
