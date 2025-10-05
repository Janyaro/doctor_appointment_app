import 'package:doctor_app/Widgets/reuse_btn.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    
    return Scaffold(
      body:Column(
        children: [
          Container(
            width: double.infinity,
            height: media.height * 0.5,
            child: Image.asset(
              'assets/welcome_image.png',
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: media.height * 0.02,),
          Text(
            textAlign: TextAlign.center,
            'Welcome to HealthHub',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold
            ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                textAlign: TextAlign.center,
                ' Manage your health with ease. Schedule appointments, track prescriptions, and access your medical records all in one place.' , 
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(height: media.height * 0.03,),
            Padding(padding: EdgeInsets.symmetric(horizontal: 10),
            child: ReuseBtn(btnTitle: 'Get Started', ontap: (){}),
            
            )
        ],
      )
    );
  }
}