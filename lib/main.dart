
import 'package:doctor_app/Provider/loading_provider.dart';
import 'package:doctor_app/Services/doctor_service.dart';
import 'package:doctor_app/View/auth_screen/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';
import 'firebase_options.dart';


void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);

  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider(create: (context)=> DoctorService()),
      ChangeNotifierProvider(create: (context)=> LoadingProvider())
    ],
    child:const MyApp() ,
    )
    );
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
        home: LoginScreen(),
      ),
    );
  }
}
