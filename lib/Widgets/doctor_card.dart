import 'package:doctor_app/View/doctor_detail_screens.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorCard extends StatelessWidget {
   final Map<String, dynamic> data; // 👈 accept one doctor at a time
  const DoctorCard({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=> DoctorDetailScreens(data: data,)));
      },
      child: Card(
          child: Container(
          height: 100.h,
          width: double.infinity,
          padding: EdgeInsets.all(10.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Doctor Info
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    data['name'],
                    style: TextStyle(fontSize: 16.sp, color: Colors.black),
                  ),
                  Text(
                    data['specialist'],
                    style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue),
                  ),
                  Text(
                    "${data['phone_number']}",
                    style: TextStyle(fontSize: 14.sp, color: Colors.grey),
                  ),
      
                ],
              ),
      
              // Doctor Image
              Flexible(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network(
                    data['image'],
                    height: 100.h,
                    width: 100.w,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
