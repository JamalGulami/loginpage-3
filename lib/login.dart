import 'package:flutter/material.dart';
import 'package:loginpage/check_email.dart';
import 'package:loginpage/component/my_button.dart';
import 'package:loginpage/component/text_feild.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:loginpage/inrol.dart';
import 'package:loginpage/resset_password.dart';
class login_page extends StatelessWidget {

  login_page({super.key});
  final usernameController=TextEditingController();
  final passwordController=TextEditingController();
  // final emailController=TextEditingController();
  void signUserIn(){}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child:Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              //SizedBox(height: 10.0),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 73, 0, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 200.0, // Set the desired width
                      height: 200.0, // Set the desired height
                      child: Image.asset('image/mmm.png'),
                    ),
                    SizedBox(width: 8,),
                    Container(
                      alignment: Alignment.topRight,
                      child: Icon(Icons.exit_to_app),
                    ),
                  ],
                ),
              ),
              Text('ورود',
                style: TextStyle(fontSize: 22.0,color: Colors.grey[900],
                  fontWeight: FontWeight.bold,
                ),
              ),
              //user name start
              const SizedBox(height: 5.0),
              My_textfiled(
                controller: usernameController,
                hintText: 'نام کاربری',
                obscureText: false,
                suffixIcon: Icon(Icons.person_outline_rounded),
              ),
              SizedBox(height: 10,),

              My_textfiled(
                controller: passwordController,
                hintText: 'رمز عبور',
                obscureText: true,
                prefixIcon: Icon(Icons.remove_red_eye_outlined),
                suffixIcon: Icon(Icons.lock_outline_rounded),
              ),
              //password
              const SizedBox(height: 10.0),
              // forgot password88888888888888
              SizedBox(height: 8.0),
              Padding(padding: const EdgeInsets.symmetric(horizontal: 45.0),
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Text('فراموشی رمز عبور',
                      style: TextStyle(color: Colors.green,
                      ),
                    ),
                    Row(
                      children: [
                        Text('مرا به یاد داشته باش' ,
                          style: TextStyle(color: Colors.grey[700]),),
                        IconButton(
                          icon: Icon(Icons.check_box,color: Colors.grey[500],),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ],
                ),//8888888888888888888888888888888888888888888888888888
              ),
              const SizedBox(height: 8.0),
              My_button(
                onTap:signUserIn,
              ),
              const SizedBox(height: 8.0,),
              Padding(padding: EdgeInsets.symmetric(horizontal: 45.0),
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

              SizedBox(height: 5),

          Padding(padding: EdgeInsets.symmetric(horizontal: 45)),
          Container(
            width: 410,
            height: 40,
            //padding: EdgeInsets.symmetric(horizontal: 45),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.0),
              color: Colors.white,
              border: Border.all(
                color: Colors.grey,
                width: 1.0,
              ),
            ),
            child: Row(
              //crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.facebook,
                  color: Colors.blue,
                ),
                SizedBox(width: 8.0),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Check_email()),
                    );
                  },
                  child: Text(
                    'ورود با حساب فیسبوک',
                    style: TextStyle(
                      color: Colors.grey[700],
                      fontSize: 16.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
              SizedBox(height: 10,),
              Container(
                width: 410,
                height: 40,
                //padding: EdgeInsets.symmetric(horizontal: 45),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.grey,
                    width: 1.0,
                  ),
                ),
                child: Row(
                  //crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        width: 20.0, // Set the desired width
                        height: 20.0,
                        child: SvgPicture.asset('assets/icons/google.svg')),
                    SizedBox(width: 8.0),
                    Text(
                      'ورود با پست الکترونیکی',
                      style: TextStyle(
                        color: Colors.grey[700],
                        fontSize: 16.0,
                      ),
                    ),
                  ],
                ),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Text('ثبت نام',
                    style: TextStyle(color: Colors.green,
                        fontWeight: FontWeight.bold),),
                  const SizedBox(width: 5),
                  Text('حساب کاربری ندارید؟',
                    style: TextStyle(color: Colors.grey,
                  ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}