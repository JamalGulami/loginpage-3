import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:loginpage/component/text_feild.dart';
class Inrolment extends StatefulWidget {
  Inrolment({super.key});
  final usernameController=TextEditingController();
  final emailController = TextEditingController();
  final passwordController=TextEditingController();

  @override
  State<Inrolment> createState() => _InrolmentState();
}

class _InrolmentState extends State<Inrolment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text('ثبت نام' , style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold),),
            SizedBox(height: 8,),
            Text('برای دسترسی به تجربه شخصی املاک ثبت نام کنید.' , style: TextStyle(
              color: Colors.grey[900],
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
            ),
            SizedBox(height: 5,),
            // My_textfiled(
            //   controller: usernameController,
            //   hintText: 'نام کاربری',
            //   obscureText: false,
            //   suffixIcon: Icon(Icons.person_outline_rounded),
            // ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Align(
                alignment: Alignment.centerRight,
                child: Text('نام' , style: TextStyle(
                  color: Colors.grey[900],
                  fontSize: 14,)
                  ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(16.0),
                  ),

                  child: const TextField(
                    decoration: InputDecoration(
                      hintText: 'نام خود را وارد کنید',
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white70),
                        borderRadius: BorderRadius.all(Radius.circular(16.0),
                        ),
                      ),
                      fillColor: Colors.grey,
                    ),
                    textAlign: TextAlign.right,
                  ),
                ),
              ),
            SizedBox(height: 5,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Align(
                alignment: Alignment.centerRight,
                child: Text('ایمیل' , style: TextStyle(
                  color: Colors.grey[900],
                  fontSize: 14,)
                ),
              ),
            ),
             Padding(
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(16.0),
                ),

                child: const TextField(
                  decoration: InputDecoration(
                    hintText: 'ایمیل خود را وارید کنید',
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white70),
                      borderRadius: BorderRadius.all(Radius.circular(16.0),
                      ),
                    ), //fillColor: Colors.grey,
                  ),
                  textAlign: TextAlign.right,
                ),
              ),
            ),
            SizedBox(height: 5,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Align(
                alignment: Alignment.centerRight,
                child: Text('پسورد' , style: TextStyle(
                  color: Colors.grey[900],
                  fontSize: 14,)
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(16.0),
                ),


                child: const TextField(
                  decoration: InputDecoration(
                    hintText: 'رمز عبور',
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white70),
                      borderRadius: BorderRadius.all(Radius.circular(16.0)),
                    ),
                    suffixIcon: Icon(Icons.lock_open_rounded),
                    prefixIcon: Icon(Icons.remove_red_eye_outlined),
                  ),
                  textAlign: TextAlign.right,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text('تمام قوانین و مقررات برنامه را خوانده و پذیرفته ام.' ,
                  style: TextStyle(color: Colors.grey[900],),),
                IconButton(
                  icon: Icon(Icons.check_box,color: Color(0xFF104169),),
                  onPressed: () {},
                ),
              ],
            ),
            SizedBox(height: 8,),
            Container(
              padding: const EdgeInsets.all(5.0),
              margin: const EdgeInsets.symmetric(horizontal: 15.0),
              decoration: BoxDecoration(color: Color(0xFF06B606),
                  borderRadius: BorderRadius.circular(30)
              ),
              child:const Center(
                child: Text('ثبت نام',
                    style: TextStyle(color: Colors.white70,fontSize: 16.0,
                        fontWeight: FontWeight.bold)),
              ),
            ),
            const SizedBox(height: 8.0,),
            const Padding(padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: Row(
                children: [
                  Expanded(
                      child:Divider(
                        thickness: 0.5,
                        color: Colors.grey,
                      )) ,
                  Text('   یا   '),
                  Expanded(
                    child:Divider(
                      thickness: 0.5,
                      color: Colors.grey,
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
                    width: 230,
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: Color(0xFFCECBCB)),
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.facebook,
                        color: Color(0xFF104169),
                        size: 50,
                      ),
                    ),
                  ),
                  Container(
                    width: 230,
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: Color(0xFFCECBCB)),
                    ),
                    child: Center(
                        child: SvgPicture.asset('assets/icons/google.svg')),
                  ),
                ],
              ),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Text('ورود',
                  style: TextStyle(color: Color(0xFF06B606),
                      fontWeight: FontWeight.bold),),
                const SizedBox(width: 5),
                Text('قبلا ثبت نام کرده اید؟',
                  style: TextStyle(color: Color(0xFF181717),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
