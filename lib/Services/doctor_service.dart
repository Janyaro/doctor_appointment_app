import 'package:flutter/material.dart';

class DoctorService {
  // Singleton instance
  static final DoctorService _instance = DoctorService._internal();
  factory DoctorService() => _instance;
  DoctorService._internal();
  
  List<Map<String, dynamic>> appointedDoctors = [];
  
  void addAppointmentDoctor(BuildContext context, Map<String, dynamic> data) {
    appointedDoctors.add(Map.from(data));
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Appointment Booked!'))
    );
  }
}