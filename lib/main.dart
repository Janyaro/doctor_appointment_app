import 'package:doctor_app/View/root_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      child:  MaterialApp(
        theme: ThemeData(
          appBarTheme: AppBarTheme(
            backgroundColor:Colors.blue,
            titleTextStyle: TextStyle(
              color: Colors.white,
              fontSize: 20 , 
              fontWeight: FontWeight.bold
            ),
          )
        ),
        debugShowCheckedModeBanner: false,
        home: RootScreen(),
      ),
    );
  }
}