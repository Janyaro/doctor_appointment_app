import 'package:flutter/material.dart';

class DoctorService extends ChangeNotifier{
  // Singleton instance
  static final DoctorService _instance = DoctorService._internal();
  factory DoctorService() => _instance;
  DoctorService._internal();
  
  List<Map<String, dynamic>> appointedDoctors = [];
  
  List<String> _perscription = [];
  List<String> get perscription => _perscription;  

  void addPerscription (BuildContext context , String data){
    perscription.add(data);
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Perscription add successfully'))
    );
    notifyListeners();
  }
  
  void addAppointmentDoctor(BuildContext context, Map<String, dynamic> data) {
    appointedDoctors.add(Map.from(data));
    ScaffoldMessenger.of(context).showSnackBar(

      SnackBar(
        backgroundColor: Colors.green,
        content: Text('Appointment Booked!'))
    );
  }

  void deletePerscription(BuildContext context ,int index){
    perscription.removeAt(index);
    notifyListeners();
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Perscription delete Successfull')));
  }
}