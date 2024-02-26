import 'package:flutter/material.dart';
class My_textfiled extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool obscureText;
  final Icon? prefixIcon;
  final Icon? suffixIcon;

  const My_textfiled({
    Key? key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
    this.prefixIcon,
    this.suffixIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {


      return TextField(
        controller: controller,
        obscureText: obscureText,
        textAlign: TextAlign.right,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
            borderSide: BorderSide(color: Color(0xFF1ED760)),
          ),
          hintText: hintText,
          hintStyle: TextStyle(color: Color(0xFF94A3B8),
          fontSize: 16),
          fillColor: Colors.grey[200],
          filled: true,
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
        ),
    );
  }
}


