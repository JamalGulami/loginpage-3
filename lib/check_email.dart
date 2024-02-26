import 'package:flutter/material.dart';
class Check_email extends StatefulWidget {
  const Check_email({super.key});

  @override
  State<Check_email> createState() => _Check_emailState();
}

class _Check_emailState extends State<Check_email> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(23, 256, 23, 0),
        child: Column(

          children: [
            Container(
              width: 200,
              height: 200,

              child: Image.asset('image/mm.png'),
            ),
            SizedBox(height: 8,),
            Container(
              child: Text('بازیابی پسورد',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF212121),
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 12,),
            Container(
              child: Text('ایمیل خود را وارد کنید تا ما کد بازیابی رمز عبور جدید برای شما ارسال کنیم.',
                style: TextStyle(fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF717171)),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 134,),
            Container(
              height: 48,
              decoration: BoxDecoration(color: Color(0xFF1ED760),
                  borderRadius: BorderRadius.circular(30)
              ),
              child:const Center(
                child: Text('ثبت نام',
                    style: TextStyle(color: Color(0xFFFFFFFF),
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500)),
              ),
            ),
          ],
        ),
      ),

    );
  }
}
