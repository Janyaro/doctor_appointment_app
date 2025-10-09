import 'package:doctor_app/Services/doctor_service.dart';
import 'package:doctor_app/Services/utility_function.dart';
import 'package:doctor_app/Widgets/reuse_btn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RefillOppointmentScreen extends StatefulWidget {
  const RefillOppointmentScreen({super.key});

  @override
  State<RefillOppointmentScreen> createState() => _RefillOppointmentScreenState();
}

class _RefillOppointmentScreenState extends State<RefillOppointmentScreen> {
  final utilityfunction = UtilityFunction();
  final doctor_service = DoctorService();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
    body: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [  
        doctor_service.perscription.isNotEmpty ? 
        ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: doctor_service.perscription.length,
          itemBuilder: (context , index){
            return ListTile(
              leading: Icon(Icons.medication),
              title: Text(doctor_service.perscription[index]),
            );
          }):
          Center(
            child: Text('Not Any Perscription Available' + doctor_service.perscription.length.toString()),
          )
      ],
    ),
    floatingActionButton: FloatingActionButton(
      shape: CircleBorder(),
      backgroundColor: Colors.blue,
      onPressed: (){
        utilityfunction.showBottomSheet(context);
      } , child: Icon(Icons.add , color: Colors.white,),),
    );
  }
}