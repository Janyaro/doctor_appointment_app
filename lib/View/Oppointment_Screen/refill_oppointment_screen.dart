import 'package:doctor_app/Services/doctor_service.dart';
import 'package:doctor_app/Services/utility_function.dart';
import 'package:doctor_app/Widgets/reuse_btn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class RefillAppointmentScreen extends StatefulWidget {
  const RefillAppointmentScreen({super.key});

  @override
  State<RefillAppointmentScreen> createState() => _RefillAppointmentScreenState();
}

class _RefillAppointmentScreenState extends State<RefillAppointmentScreen> {
  
  final utilityfunction = UtilityFunction();
  
  @override
  Widget build(BuildContext context) {
    // Get the DoctorService instance using Provider
    final doctorService = Provider.of<DoctorService>(context);
    
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [  
          doctorService.perscription.isNotEmpty ? 
          Expanded( // Added Expanded to avoid rendering issues
            child: ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: doctorService.perscription.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 3),
                  child: Card(
                    child: ListTile(
                      leading: const Icon(Icons.medication),
                      title: Text(doctorService.perscription[index]),
                      trailing: IconButton(onPressed: (){
                        doctorService.deletePerscription(context, index);
                      }, icon: Icon(Icons.delete , color: Colors.red,)),
                    ),
                  ),
                );
              },
            ),
          ) :
          const Expanded( // Also wrap the empty state with Expanded
            child: Center(
              child: Text('No Prescription Available yet'),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        shape: const CircleBorder(),
        backgroundColor: Colors.blue,
        onPressed: () {
          utilityfunction.showBottomSheet(context);
        }, 
        child: const Icon(Icons.add, color: Colors.white),
      ),
    );
  }
}