import 'package:doctor_app/Data/doctor_data.dart';
import 'package:doctor_app/Widgets/doctor_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookOppiontmentScreen extends StatefulWidget {
  const BookOppiontmentScreen({super.key});

  @override
  State<BookOppiontmentScreen> createState() => _BookOppiontmentScreenState();
}

class _BookOppiontmentScreenState extends State<BookOppiontmentScreen> {
  List<Map<String, dynamic>> data = [
    {
      "name": "Dr. Ayesha Khan",
      "specialist": "Cardiologist",
      "years_of_experience": 12,
      "about":
          "Expert in diagnosing and treating heart-related conditions with advanced procedures.",
      "comment":
          "She explained my heart condition clearly and guided me through the treatment process.",
      "reporting_time": "09:00 AM - 01:00 PM"
    },
    {
      "name": "Dr. Hamza Ali",
      "specialist": "Dermatologist",
      "years_of_experience": 8,
      "about":
          "Specializes in treating skin disorders, allergies, and cosmetic dermatology.",
      "comment":
          "After struggling for months with skin rashes, his treatment finally brought quick relief.",
      "reporting_time": "11:00 AM - 04:00 PM"
    },
    {
      "name": "Dr. Maria Siddiqui",
      "specialist": "Pediatrician",
      "years_of_experience": 10,
      "about": "Provides healthcare for infants, children, and adolescents.",
      "comment":
          "She is very kind, patient with children, and always reassures nervous parents.",
      "reporting_time": "08:30 AM - 12:30 PM"
    },
    {
      "name": "Dr. Usman Raza",
      "specialist": "Orthopedic Surgeon",
      "years_of_experience": 15,
      "about": "Expert in bone fractures, joint replacement, and sports injuries.",
      "comment":
          "He successfully performed my mother’s hip surgery and ensured smooth recovery afterwards.",
      "reporting_time": "10:00 AM - 02:00 PM"
    },
    {
      "name": "Dr. Saba Javed",
      "specialist": "Gynecologist",
      "years_of_experience": 9,
      "about":
          "Specialist in women’s reproductive health, pregnancy, and childbirth.",
      "comment":
          "She was very supportive throughout my pregnancy and answered all my questions patiently.",
      "reporting_time": "01:00 PM - 06:00 PM"
    },
    {
      "name": "Dr. Ahmed Iqbal",
      "specialist": "Neurologist",
      "years_of_experience": 13,
      "about":
          "Experienced in diagnosing and treating brain and nervous system disorders.",
      "comment":
          "His treatment plan reduced my migraine attacks significantly and improved my daily life.",
      "reporting_time": "09:30 AM - 01:30 PM"
    },
    {
      "name": "Dr. Farah Naeem",
      "specialist": "Ophthalmologist",
      "years_of_experience": 7,
      "about":
          "Treats eye disorders, vision problems, and performs cataract surgeries.",
      "comment":
          "She restored my father’s vision after cataract surgery and explained the recovery steps.",
      "reporting_time": "10:00 AM - 03:00 PM"
    },
    {
      "name": "Dr. Bilal Sheikh",
      "specialist": "ENT Specialist",
      "years_of_experience": 11,
      "about": "Expert in treating ear, nose, and throat conditions.",
      "comment":
          "He diagnosed my ear infection quickly and his prescribed medicines worked very effectively.",
      "reporting_time": "09:00 AM - 12:00 PM"
    },
    {
      "name": "Dr. Zara Malik",
      "specialist": "Psychiatrist",
      "years_of_experience": 14,
      "about":
          "Helps patients manage mental health conditions with therapy and medication.",
      "comment":
          "Her therapy sessions really helped me cope with stress and manage my anxiety better.",
      "reporting_time": "02:00 PM - 07:00 PM"
    },
    {
      "name": "Dr. Imran Yousaf",
      "specialist": "General Physician",
      "years_of_experience": 6,
      "about": "Provides overall healthcare, routine checkups, and preventive treatments.",
      "comment":
          "He listens carefully, gives clear explanations, and makes you feel comfortable during consultations.",
      "reporting_time": "08:00 AM - 11:00 AM"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10.h,),
            Text(
              'Upcoming Appointment',
              style: TextStyle(fontSize: 22.sp, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.h),

            // ✅ Fix: ListView must be inside Expanded
            Expanded(
              child: ListView.builder(
                
                itemCount: DoctorData().doctors.length,
                itemBuilder: (context, index) {
                  return DoctorCard(data: DoctorData().doctors[index]);
                },
              ),
            ),
            Text(
              'Recent Records',
              style: TextStyle(fontSize: 22.sp, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.h),
            Card(
              child: ListTile(
                leading: Icon(Icons.file_copy),
                title: Text('Blood Report' , style: TextStyle(fontSize: 18 , fontWeight: FontWeight.bold),),
                subtitle: Text('28-6-2025' , style: TextStyle(fontSize: 16 , color: Colors.grey)),),
              ),
            
          ],
        ),
      ),
    );
  }
}
