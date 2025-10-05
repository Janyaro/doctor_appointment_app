import 'package:doctor_app/Widgets/reuse_btn.dart';
import 'package:doctor_app/Widgets/reuse_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:  Scaffold(
        appBar: AppBar(
          title: Text('Welcome' , style: TextStyle(fontSize: 25.sp , fontWeight: FontWeight.w500),),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: 10.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ReuseTextfield(controller: emailController, hintText: 'Email Or Username'),
                SizedBox(height: 10.h,),
                ReuseTextfield(controller: passwordController, hintText: 'Password'),
                TextButton(onPressed: (){}, child: Text('Forget Password')),
                SizedBox(height: 10.h,),
                ReuseBtn(btnTitle: 'Log in', ontap: (){})
              ],
            ),
          )
          ),
      ),
    );
  }
}