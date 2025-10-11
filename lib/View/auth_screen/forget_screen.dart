import 'package:doctor_app/Services/auth_service.dart';
import 'package:doctor_app/Widgets/reuse_btn.dart';
import 'package:doctor_app/Widgets/reuse_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ForgetScreen extends StatefulWidget {
  const ForgetScreen({super.key});

  @override
  State<ForgetScreen> createState() => _ForgetScreenState();
}

class _ForgetScreenState extends State<ForgetScreen> {
    final emailController = TextEditingController();
    final auth_service = AuthService();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ReuseTextfield(controller: emailController, hintText: 'Email & username'),
            SizedBox(height: 20.h,),
            ReuseBtn(btnTitle: 'Forget Password', ontap: (){
auth_service.forgetPassword(context: context, email: emailController.text).then((val){
ScaffoldMessenger.of(context).showSnackBar(SnackBar(
  content: Text('Password will send of your Email')));
}).onError((error,StackTrace){
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
  content: Text(error.toString())));
});
            })
          ],
        ),
      ),
    );
  }
}