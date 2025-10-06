import 'package:doctor_app/Services/doctor_service.dart';
import 'package:doctor_app/Widgets/reuse_btn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorDetailScreens extends StatefulWidget {
  final Map<String, dynamic> data;
  const DoctorDetailScreens({super.key, required this.data});

  @override
  State<DoctorDetailScreens> createState() => _DoctorDetailScreensState();
}

class _DoctorDetailScreensState extends State<DoctorDetailScreens> {
  final doctorService = DoctorService();
  @override
  Widget build(BuildContext context) {
    
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            '${widget.data['name']}',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 15.h,),
                Center(
                  child: CircleAvatar(
                    radius: 100,
                    child: ClipOval(
                      child: Image.network(
                        '${widget.data['image']}',
                        width: 190, // 2 * radius
                        height: 190, // 2 * radius
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 6.h,),
                Text(widget.data['specialist'] , style: TextStyle(fontSize: 25 , fontWeight: FontWeight.w500 ),),
                Text('${widget.data['year_of_experience']} year_of_experience' , style: TextStyle(fontSize: 18 , color: Colors.grey),),
                SizedBox(height: 10.h,),
                ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  
                  itemCount: widget.data['comment']?.length ?? 0,
                  itemBuilder: (context, index) {
                    return Card(
                      child: ListTile(
                        title: Text(widget.data['comment'][index]['user']),
                        subtitle: Text(
                          widget.data['comment'][index]['comment'],
                        ),
                        trailing: Chip(
                          label: Text(
                            '${widget.data['comment'][index]['rating']}',
                            style: TextStyle(color: Colors.white),
                          ),
                          backgroundColor: Colors.blue,
                        ),
                      ),
                    );
                  },
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Contact' , style: TextStyle(fontSize: 25 , fontWeight: FontWeight.bold),),
                ),
                contactCard(Icons.call, 'Phone', widget.data['phone_number'].toString()),
                SizedBox(height: 6.h,),
                contactCard(Icons.location_on_outlined, 'Address', widget.data['phone_number'].toString()),
                SizedBox(height: 6.h,),
                ReuseBtn(btnTitle: 'Book Appointment', ontap: (){
                  doctorService.addAppointmentDoctor(context,widget.data);
                  Navigator.pop(context);
                }),
                SizedBox(height: 10.h,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget contactCard (IconData icon , String title, String data){
  return ListTile(
    leading: Container(
      height: 40.h,
      width: 65.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6.r),
        color: Colors.grey.shade300,
      ),
      child: Icon(icon )),
    title: Text(title , style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold),),
    subtitle: Text(data , style: TextStyle(fontSize: 18 , color: Colors.grey),),
  );
}
