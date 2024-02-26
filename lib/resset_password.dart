import 'package:flutter/material.dart';
import 'package:loginpage/component/text_feild.dart';
class Resset_Password extends StatefulWidget {
  const Resset_Password({super.key});

  @override
  State<Resset_Password> createState() => _Resset_PasswordState();
}

class _Resset_PasswordState extends State<Resset_Password> {
  final emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(24, 59, 24, 0),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topRight,
                child: Stack(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Center(
                          child: Container(
                            width: 128.0, // Set the desired width
                            height: 128.0, // Set the desired height
                            child: Image.asset('image/image3.png'),
                          ),
                        ),
                      ],
                    ),
                    Positioned(
                      top: 0,
                      right: 0,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        child: IconButton(
                          icon: Icon(Icons.exit_to_app),
                          onPressed: () {
                            // Add your onPressed logic here
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 25,),
              Container(
                child: Text('بازیابی پسورد',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF2B2B2B),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 16,),
              Container(
                child: Text('ایمیل خود را وارد کنید تا ما کد بازیابی رمز عبور جدید برای شما ارسال کنیم.',
                style: TextStyle(fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Color(0xFF555555)),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 24,),
              Align(
                alignment: Alignment.centerRight,
                child: Text('ایمیل' , style: TextStyle(
                  color: Color(0xFF555555),
                  fontSize: 14,)
                ),
              ),
              SizedBox(height: 8,),
              My_textfiled(
                controller: emailController,
                hintText: 'نام کاربری',
                obscureText: false,
              ),
              SizedBox(height: 16,),
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
      ),
    );
  }
}