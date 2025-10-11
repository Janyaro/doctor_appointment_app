import 'package:doctor_app/View/Oppointment_Screen/book_oppiontment_screen.dart';
import 'package:doctor_app/View/Oppointment_Screen/refill_oppointment_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

   final List<Widget> _screens = [
    BookOppiontmentScreen(),
    RefillAppointmentScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('MyHealth'),
        centerTitle: true,

      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 6.h,),
            Text('Quick Action' , style: TextStyle(fontSize: 22 , fontWeight: FontWeight.bold),),
            SizedBox(height: 10.h,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _buildTabButton('Oppointments', 0),
            _buildTabButton('Refil Prescription', 1),
          ],
        ),
        
             Expanded(
            child: IndexedStack(
              index: _selectedIndex,
              children: _screens,
            ),
          ),
          ],
        ),
      ),
    );
  }
  Widget _buildTabButton(String text, int index) {
    return InkWell(
      onTap: (){
        setState(() {
          _selectedIndex = index;
        });
      },
      child: Container(
        height: 50.h,
        width: 160.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color:  _selectedIndex == index ? Colors.blue : const Color.fromARGB(255, 105, 95, 95),
        ),
        child: Center(child: Text(text , style: TextStyle(fontSize: 16 , color: Colors.white),)),
      ),
    );
  }
}
