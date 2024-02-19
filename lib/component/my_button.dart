import 'package:flutter/material.dart';
class My_button extends StatelessWidget {
  final void Function()? onTap;
  const My_button({super.key,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap:(){},
        child:Container(

          padding: const EdgeInsets.all(5.0),
          margin: const EdgeInsets.symmetric(horizontal: 45.0),
          decoration: BoxDecoration(color: Colors.green[900],
              borderRadius: BorderRadius.circular(8)
          ),
          child:const Center(
            child: Text('ورود به حساب کاربری',
                style: TextStyle(color: Colors.white70,fontSize: 16.0,
                    fontWeight: FontWeight.bold)),
          ),
        )
    );
  }
}
