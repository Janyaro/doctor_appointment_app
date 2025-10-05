class Doctor{
   final String name;
  final String specialist;
  final String about;
  final int yearOfExperience;
  final List<Map<String, dynamic>> comments;
  final String phoneNumber;
  final String address;
  final String image;
  
  Doctor({
    required this.name ,
    required this.specialist,
   required this.about,
   required this.yearOfExperience,
   required this.comments,
   required this.phoneNumber,
   required this.address,
   required this.image,
  });

  
}