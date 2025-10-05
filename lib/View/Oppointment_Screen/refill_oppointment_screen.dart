import 'package:doctor_app/Widgets/reuse_btn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RefillOppointmentScreen extends StatefulWidget {
  const RefillOppointmentScreen({super.key});

  @override
  State<RefillOppointmentScreen> createState() => _RefillOppointmentScreenState();
}

class _RefillOppointmentScreenState extends State<RefillOppointmentScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
    body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      SizedBox(height: 15.h,),
          Text('Select a Prescription' , style: TextStyle(fontSize: 22 , fontWeight: FontWeight.bold),),
              SizedBox(height: 10.h,),
              Expanded(
                child: ListView.builder(
                  
                  itemCount: 3,
                  itemBuilder: (context , index){
                  return Card(child: ListTile(
                            leading: Icon(Icons.medical_services_sharp),
                            title: Text('Amoxilian' , style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold),),
                            subtitle: Text('10mg' , style: TextStyle(fontSize: 16 , color: Colors.grey),),
                          ));
                }),
              ),
              SizedBox(height: 10.h,),
          Text('Pharmacy' , style: TextStyle(fontSize: 22 , fontWeight: FontWeight.bold),),
              SizedBox(height: 10.h,),
              Expanded(
                child: ListView.builder(
                  itemCount: 2,
                  itemBuilder: (context , index){
                  return Card(child: ListTile(
                            leading: Icon(Icons.medical_services_sharp),
                            title: Text('CVS Pharmacy' , style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold),),
                            subtitle: Text('123 main st' , style: TextStyle(fontSize: 16 , color: Colors.grey),),
                          ));
                }),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: ReuseBtn(btnTitle: 'Refill', ontap: (){}))
          
      ],
    ),
    );
  }
}