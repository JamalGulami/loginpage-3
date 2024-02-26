import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:loginpage/component/text_feild.dart';
class Inrolment extends StatefulWidget {
  Inrolment({super.key});


  @override
  State<Inrolment> createState() => _InrolmentState();
}

class _InrolmentState extends State<Inrolment> {
  final usernameController =TextEditingController();
  final emailController = TextEditingController();
  final passwordController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(

          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 71) ,
                  child: Container(// Set the desired right margin
                    child: Icon(Icons.exit_to_app,
                    color: Color(0xFFD9D9D9),),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Center(child: Container(child: const Text('ثبت نام' , style: TextStyle(
                      color: Color(0xFF2B2B2B),fontSize: 32,fontWeight: FontWeight.bold),))),
                ),
                SizedBox(height: 8,),
                Center(
                  child: Container(
                    child: Text('برای دسترسی به تجربه شخصی املاک ثبت نام کنید.' , style: TextStyle(
                      color: Color(0xFF555555),
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                  ),
                ),
                Align(
                    alignment: Alignment.centerRight,
                    child: Text('نام' , style: TextStyle(
                      color: Color(0xFF555555),
                      fontSize: 14,)
                      ),
                ),
                Container(
                  height: 52,
                  child: My_textfiled(
                      controller: usernameController,
                      hintText: 'نام کاربری',
                      obscureText: false,
                  ),
                ),

                  Align(
                    alignment: Alignment.centerRight,
                    child: Text('ایمیل' , style: TextStyle(
                      color: Color(0xFF555555),
                      fontSize: 14,)
                    ),
                  ),
                My_textfiled(
                  controller: emailController,
                  hintText: 'نام کاربری',
                  obscureText: false,
                ),
                Align(
                    alignment: Alignment.centerRight,
                    child: Text('پسورد' , style: TextStyle(
                      color: Color(0xFF555555),
                      fontSize: 14,)
                    ),
                ),
                My_textfiled(
                  controller: passwordController,
                  hintText: 'نام کاربری',
                  obscureText: false,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('.تمام قوانین و مقررات برنامه را خوانده و پذیرفته ام' ,
                      style: TextStyle(color: Color(0xFF2B2B2B),
                      fontSize: 14),
                    ),
                    SizedBox(width: 8,),
                    Container(
                      child: const Icon(Icons.check_box,color: Color(0xFF246BFD),),
                    ),
                  ],
                ),
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
                const SizedBox(height: 8.0,),
                const Padding(padding: EdgeInsets.symmetric(horizontal: 15.0),
                  child: Row(
                    children: [
                      Expanded(
                          child:Divider(
                            thickness: 0.5,
                            color: Color(0xFFE5E5E5),
                          )) ,
                      Text('   یا   ',style: TextStyle(color: Color(0xFF555555),
                      fontSize: 18),),
                      Expanded(
                        child:Divider(
                          thickness: 0.5,
                          color: Color(0xFFE5E5E5),
                        ),
                      ), //#####################end of Divider
                    ],
                  ),
                ),
                SizedBox(height: 5,),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 158,
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(color: Color(0xFFEEEEEE),),
                        ),
                        child: const Center(
                          child: Icon(
                            Icons.facebook,
                            color: Color(0xFF104169),
                            size: 50,
                          ),
                        ),
                      ),
                      SizedBox(width: 12,),
                      Container(
                        width: 158,
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(color: Color(0xFFEEEEEE),),
                        ),
                        child: Center(
                            child: SvgPicture.asset('assets/icons/google.svg')),
                      ),
                    ],
                  ),
                ),
                const Center(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 4),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [

                        Text('ورود',
                          style: TextStyle(color: Color(0xFF1ED760),
                              fontWeight: FontWeight.w400,
                          fontSize: 16),),
                        const SizedBox(width: 5),
                        Text('قبلا ثبت نام کرده اید؟',
                          style: TextStyle(color: Color(0xFF555555),
                            fontSize: 16
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
