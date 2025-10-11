import 'package:doctor_app/Provider/loading_provider.dart';
import 'package:doctor_app/Services/auth_service.dart';
import 'package:doctor_app/View/auth_screen/forget_screen.dart';
import 'package:doctor_app/View/auth_screen/register_screen.dart';
import 'package:doctor_app/View/root_screen.dart';
import 'package:doctor_app/Widgets/reuse_btn.dart';
import 'package:doctor_app/Widgets/reuse_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final authService = AuthService();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Welcome',
            style: TextStyle(fontSize: 25.sp, fontWeight: FontWeight.w500),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(height: 150.h),
                ReuseTextfield(
                  controller: emailController,
                  hintText: 'Email Or Username',
                ),
                SizedBox(height: 10.h),
                ReuseTextfield(
                  controller: passwordController,
                  hintText: 'Password',
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ForgetScreen()),
                    );
                  },
                  child: Text('Forget Password'),
                ),
                SizedBox(height: 10.h),
                Consumer<LoadingProvider>(
                  builder: (context, value, child) {
                    return ReuseBtn(
                      isVisibility: value.isloading,
                      btnTitle: 'Log in',
                      ontap: () async {
                        await authService
                            .loginUser(
                              context,
                              emailController.text.trim(),
                              passwordController.text.trim(),
                            )
                            .then((val) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  backgroundColor: Colors.green,
                                  content: Text(
                                    'Successfully Login',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              );
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> RootScreen()));
                            })
                            .onError((StackTrace, error) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  backgroundColor: Colors.red,
                                  content: Text(
                                    'Process failed',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              );
                            });
                      },
                    );
                  },
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("Don't have an Account"),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => RegisterScreen(),
                          ),
                        );
                      },
                      child: Text('SignUp'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
