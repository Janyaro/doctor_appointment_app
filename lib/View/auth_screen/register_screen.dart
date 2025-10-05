import 'package:doctor_app/Widgets/reuse_btn.dart';
import 'package:doctor_app/Widgets/reuse_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final usernameController = TextEditingController();
    final emailController = TextEditingController();
      final phoneNumberController = TextEditingController();
        final passwordController = TextEditingController();
        final confirmPasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
          title: Text('Register User' , style: TextStyle(fontSize: 25.sp , fontWeight: FontWeight.w500),),
          centerTitle: true,
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              ReuseTextfield(controller: usernameController, hintText: 'Full Name'),
              SizedBox(height: 10.h,),
              ReuseTextfield(controller: emailController, hintText: 'Email'),
              SizedBox(height: 10.h,),
              ReuseTextfield(controller:phoneNumberController, hintText: 'Phone Number'),
              SizedBox(height: 10.h,),
              ReuseTextfield(controller: passwordController, hintText: 'Password'),
              SizedBox(height: 10.h,),
              ReuseTextfield(controller: confirmPasswordController, hintText: 'Confirm Password'),
              SizedBox(height: 20.h,),
              ReuseBtn(btnTitle: 'Sign Up', ontap: (){}),
              Spacer(),
              TextButton(onPressed: (){}, child: Text("don't have an Account")),
              SizedBox(height: 10.h,),
            ],
          ),
        ),
    );
  }
}