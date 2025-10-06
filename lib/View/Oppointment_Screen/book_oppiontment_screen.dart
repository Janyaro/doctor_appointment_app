import 'package:doctor_app/Data/doctor_data.dart';
import 'package:doctor_app/Services/doctor_service.dart';
import 'package:doctor_app/Widgets/doctor_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookOppiontmentScreen extends StatefulWidget {
  const BookOppiontmentScreen({super.key});

  @override
  State<BookOppiontmentScreen> createState() => _BookOppiontmentScreenState();
}

class _BookOppiontmentScreenState extends State<BookOppiontmentScreen> {
final doctorService = DoctorService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10.h,),
              Text(
                'Upcoming Appointment',
                style: TextStyle(fontSize: 22.sp, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10.h),
          
              // ✅ Fix: ListView must be inside Expanded
             doctorService.appointedDoctors.isNotEmpty ?  ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,  
                itemCount: doctorService.appointedDoctors.length,
                itemBuilder: (context, index) {
                  return DoctorCard(data:doctorService.appointedDoctors[index] );
                },
              ) : Center(
                child: Text('No Appointment Yet' , style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold),),
              ) ,
              Text(
                'Recent Records',
                style: TextStyle(fontSize: 22.sp, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10.h),
              Card(
                child: ListTile(
                  leading: Icon(Icons.file_copy),
                  title: Text('Blood Report' , style: TextStyle(fontSize: 18 , fontWeight: FontWeight.bold),),
                  subtitle: Text('28-6-2025' , style: TextStyle(fontSize: 16 , color: Colors.grey)),),
                ),
              
            ],
          ),
        ),
      ),
           floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {}); // Force refresh
        },
        child: Icon(Icons.refresh),
      ),
    
    );
  }
}
