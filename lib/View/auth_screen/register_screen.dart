import 'package:doctor_app/Provider/loading_provider.dart';
import 'package:doctor_app/Services/auth_service.dart';
import 'package:doctor_app/View/auth_screen/login_screen.dart';
import 'package:doctor_app/View/root_screen.dart';
import 'package:doctor_app/Widgets/reuse_btn.dart';
import 'package:doctor_app/Widgets/reuse_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

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
        final auth_service = AuthService();
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
              SizedBox(height: 80.h,),
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
              Consumer<LoadingProvider>(builder:(context , value , child){
                return   ReuseBtn(btnTitle: 'Sign Up',isVisibility: value.isloading, ontap: (){
                  if(passwordController.text != confirmPasswordController.text){
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      backgroundColor: Colors.red,
                      content: Text('Please Enter the Same Password')));
                  }else{
                    auth_service.signUpUsers(
                      context: context, 
                      username: usernameController.text, 
                      email: emailController.text, 
                      password: passwordController.text, 
                      phoneNumber: phoneNumberController.text).then((val){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginScreen()));
                      });
                  }
                  
                }); 
              }),

              TextButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginScreen()));
              }, child: Text("don't have an Account")),
              SizedBox(height: 10.h,),
            ],
          ),
        ),
    );
  }
}