import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:doctor_app/Services/auth_service.dart';
import 'package:doctor_app/Widgets/reuse_btn.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UserScreen extends StatefulWidget {
  const UserScreen({super.key});

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  final authService = AuthService();
  final String id = FirebaseAuth.instance.currentUser!.uid;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'User',
          style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: StreamBuilder<DocumentSnapshot>(
        // ✅ FIXED: Use DocumentSnapshot for single document
        stream: FirebaseFirestore.instance.collection('user').doc(id).snapshots(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }

          if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          }

          if (!snapshot.hasData || !snapshot.data!.exists) {
            return Center(child: Text('No user data found'));
          }

          // ✅ FIXED: Correct data access
          var userData = snapshot.data!.data() as Map<String, dynamic>;
          
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 15.h),
                Center(
                  child: CircleAvatar(
                    radius: 100.r,
                    child: ClipOval(
                      child: Image.network(
                        userData['userId'] ??
                        // ✅ FIXED: Use proper default image URL
                        'https://images.unsplash.com/photo-1582750433449-648ed127bb54?ixlib=rb-4.0.3&auto=format&fit=crop&w=500&q=80',
                        width: 190.w,
                        height: 190.h,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) {
                          return Icon(Icons.person, size: 80.sp);
                        },
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10.h),
                Text(
                  userData['username'] ?? 'No Name', // ✅ Uses actual Firestore field
                  style: TextStyle(fontSize: 25.sp, fontWeight: FontWeight.w500),
                ),
                Text(
                  userData['email'] ?? 'No Email',
                  style: TextStyle(fontSize: 20.sp, color: Colors.grey),
                ),
                SizedBox(height: 10.h), // ✅ FIXED: Added .h
                Text(
                  userData['phone Number'] ?? 'No Phone', // ✅ Uses correct field name
                  style: TextStyle(fontSize: 20.sp, color: Colors.grey),
                ),
                SizedBox(height: 20.h),
                ReuseBtn(
                  btnTitle: "Log Out", 
                  ontap: ()async {
                   await authService.signOut(context);
                  }
                )
              ],
            ),
          );
        },
      ),
    );
  }
}