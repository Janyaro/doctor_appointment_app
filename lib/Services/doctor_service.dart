import 'package:flutter/material.dart';

class DoctorService {
  // Singleton instance
  static final DoctorService _instance = DoctorService._internal();
  factory DoctorService() => _instance;
  DoctorService._internal();
  
  List<Map<String, dynamic>> appointedDoctors = [];
  List<String> perscription = [];

  void addPerscription (BuildContext context , String data){
    perscription.add(data);
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Perscription add successfully'))
    );
  }
  
  void addAppointmentDoctor(BuildContext context, Map<String, dynamic> data) {
    appointedDoctors.add(Map.from(data));
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Appointment Booked!'))
    );
  }
}