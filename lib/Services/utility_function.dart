import 'package:doctor_app/Services/doctor_service.dart';
import 'package:doctor_app/Widgets/reuse_btn.dart';
import 'package:flutter/material.dart';

class UtilityFunction {
  final doctorPerscription = DoctorService();
  void showBottomSheet(BuildContext context ,) {
 final perscriptionConteroller = TextEditingController();
  showModalBottomSheet(
    context: context,
    builder: (context) {
      return Container(
        height: 200,
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Text('Bottom Sheet Title', style: TextStyle(fontSize: 20)),
            SizedBox(height: 16),
            TextFormField(
              controller: perscriptionConteroller,
              decoration: InputDecoration(
                hintText: 'Add Perscription here'
              ),
            ),

          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: ReuseBtn(btnTitle: 'Add Perscription', ontap: (){
              doctorPerscription.addPerscription(context, perscriptionConteroller.text);
              Navigator.pop(context);
            }),
          )
           ],
        ),
      );
    },
  );
}

}