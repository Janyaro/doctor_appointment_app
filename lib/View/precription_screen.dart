import 'package:doctor_app/Data/doctor_data.dart';
import 'package:doctor_app/Widgets/doctor_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PrecriptionScreen extends StatefulWidget {
  const PrecriptionScreen({super.key});

  @override
  State<PrecriptionScreen> createState() => _PrecriptionScreenState();
}

class _PrecriptionScreenState extends State<PrecriptionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Book Oppointment'),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        child: ListView.builder(
            itemCount: DoctorData().doctors.length,
            itemBuilder: (context , index){
            return DoctorCard(data: DoctorData().doctors[index]);
          }),
      ),
    );
  }
}
