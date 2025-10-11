import 'package:doctor_app/Services/doctor_service.dart';
import 'package:doctor_app/Widgets/reuse_btn.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class UtilityFunction {
  void showBottomSheet(BuildContext context) {
    final perscriptionController = TextEditingController();
    
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          height: 200,
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              const Text('Add Prescription', style: TextStyle(fontSize: 20)),
              const SizedBox(height: 16),
              TextFormField(
                controller: perscriptionController,
                decoration: const InputDecoration(
                  hintText: 'Add Prescription here'
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8),
                child: ReuseBtn(
                  btnTitle: 'Add Prescription', 
                  ontap: () {
                    // Get DoctorService using Provider and add prescription
                    final doctorService = Provider.of<DoctorService>(context, listen: false);
                    doctorService.addPerscription(context, perscriptionController.text);
                    Navigator.pop(context);
                  },
                ),
              )
            ],
          ),
        );
      },
    );
  }
}