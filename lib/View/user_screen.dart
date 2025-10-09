import 'package:doctor_app/Widgets/reuse_btn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UserScreen extends StatefulWidget {
  const UserScreen({super.key});

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text(
            'User',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 15.h,),
                  Center(
                    child: CircleAvatar(
                      radius: 100,
                      child: ClipOval(
                        child: Image.network(
                          'https://images.unsplash.com/photo-1582750433449-648ed127bb54?ixlib=rb-4.0.3&auto=format&fit=crop&w=500&q=80',
                          width: 190, // 2 * radius
                          height: 190, // 2 * radius
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10.h,),
                  Text('Waseem Akram' , style: TextStyle(fontSize: 25 , fontWeight: FontWeight.w500),),

                  Text('waseemjanyaro@gmail.com' , style: TextStyle(fontSize: 20 , color: Colors.grey),),
                  SizedBox(height: 20.h,),
                  ReuseBtn(btnTitle: "Log Out", ontap: (){})
          ],
        ),
      ),
    );
  }
}