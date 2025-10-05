 class DoctorData {

List<Map<String, dynamic>> doctors = [
  {
    'name': 'Dr. Sarah Johnson',
    'specialist': 'Cardiologist',
    'about': 'Senior cardiologist with expertise in heart diseases, angioplasty, and preventive cardiology. Passionate about patient education and heart health awareness.',
    'year_of_experience': 15,
    'comment': [
      {'user': 'John D.', 'rating': 4.8, 'comment': 'Excellent doctor! Very thorough and caring.'},
      {'user': 'Maria S.', 'rating': 4.9, 'comment': 'Dr. Johnson saved my life with her accurate diagnosis.'},
      {'user': 'Robert K.', 'rating': 4.7, 'comment': 'Professional and knowledgeable. Highly recommended!'}
    ],
    'phone_number': '+1-555-0101',
    'address': '123 Heart Center, Medical Plaza, New York, NY 10001',
    'image': 'https://images.unsplash.com/photo-1559839734-2b71ea197ec2?ixlib=rb-4.0.3&auto=format&fit=crop&w=500&q=80'
  },
  {
    'name': 'Dr. Michael Chen',
    'specialist': 'Neurologist',
    'about': 'Specialized in neurological disorders, stroke treatment, and migraine management. Board-certified neurologist with research background.',
    'year_of_experience': 12,
    'comment': [
      {'user': 'Lisa M.', 'rating': 4.6, 'comment': 'Very patient and explains everything clearly.'},
      {'user': 'David L.', 'rating': 4.9, 'comment': 'Best neurologist in the city! Solved my chronic headaches.'},
      {'user': 'Sarah T.', 'rating': 4.5, 'comment': 'Professional and caring approach.'}
    ],
    'phone_number': '+1-555-0102',
    'address': '456 Neuro Center, Health Complex, Boston, MA 02115',
    'image': 'https://images.unsplash.com/photo-1612349317150-e413f6a5b16d?ixlib=rb-4.0.3&auto=format&fit=crop&w=500&q=80'
  },
  {
    'name': 'Dr. Emily Rodriguez',
    'specialist': 'Pediatrician',
    'about': 'Dedicated pediatrician with special interest in child development and vaccination. Believes in building long-term relationships with families.',
    'year_of_experience': 8,
    'comment': [
      {'user': 'Parent1', 'rating': 4.9, 'comment': 'My kids love her! Very gentle and knowledgeable.'},
      {'user': 'Parent2', 'rating': 4.8, 'comment': 'Always available and very caring with children.'},
      {'user': 'Parent3', 'rating': 5.0, 'comment': 'The best pediatrician we have ever visited.'}
    ],
    'phone_number': '+1-555-0103',
    'address': '789 Children Hospital, Care Avenue, Chicago, IL 60601',
    'image': 'https://images.unsplash.com/photo-1551601651-2a8555f1a136?ixlib=rb-4.0.3&auto=format&fit=crop&w=500&q=80'
  },
  {
    'name': 'Dr. James Wilson',
    'specialist': 'Orthopedic Surgeon',
    'about': 'Expert in joint replacement, sports injuries, and fracture management. Former team doctor for professional sports teams.',
    'year_of_experience': 20,
    'comment': [
      {'user': 'Athlete1', 'rating': 4.7, 'comment': 'Got me back to sports in record time!'},
      {'user': 'Patient2', 'rating': 4.9, 'comment': 'Successful knee replacement surgery. Life-changing!'},
      {'user': 'Patient3', 'rating': 4.8, 'comment': 'Excellent surgical skills and post-op care.'}
    ],
    'phone_number': '+1-555-0104',
    'address': '321 Ortho Center, Sports Med Plaza, Los Angeles, CA 90001',
    'image': 'https://images.unsplash.com/photo-1582750433449-648ed127bb54?ixlib=rb-4.0.3&auto=format&fit=crop&w=500&q=80'
  },
  {
    'name': 'Dr. Priya Sharma',
    'specialist': 'Dermatologist',
    'about': 'Skin care specialist focusing on acne treatment, skin cancer screening, and cosmetic dermatology. Research published in international journals.',
    'year_of_experience': 10,
    'comment': [
      {'user': 'Client1', 'rating': 4.8, 'comment': 'Cleared my acne completely. Very satisfied!'},
      {'user': 'Client2', 'rating': 4.9, 'comment': 'Professional and gives realistic expectations.'},
      {'user': 'Client3', 'rating': 4.7, 'comment': 'Great bedside manner and effective treatments.'}
    ],
    'phone_number': '+1-555-0105',
    'address': '654 Skin Care Center, Beauty Street, Miami, FL 33101',
    'image': 'https://images.unsplash.com/photo-1594824947933-d0501ba2fe65?ixlib=rb-4.0.3&auto=format&fit=crop&w=500&q=80'
  },
  {
    'name': 'Dr. Robert Brown',
    'specialist': 'Psychiatrist',
    'about': 'Mental health expert specializing in anxiety disorders, depression, and cognitive behavioral therapy. Focuses on holistic patient care.',
    'year_of_experience': 14,
    'comment': [
      {'user': 'PatientA', 'rating': 4.9, 'comment': 'Life-changing therapy sessions. Highly empathetic.'},
      {'user': 'PatientB', 'rating': 4.6, 'comment': 'Very understanding and provides practical solutions.'},
      {'user': 'PatientC', 'rating': 4.8, 'comment': 'Professional and makes you feel comfortable.'}
    ],
    'phone_number': '+1-555-0106',
    'address': '987 Mental Wellness Center, Hope Avenue, Seattle, WA 98101',
    'image': 'https://images.unsplash.com/photo-1612349317150-e413f6a5b16d?ixlib=rb-4.0.3&auto=format&fit=crop&w=500&q=80'
  },
  {
    'name': 'Dr. Amanda Lee',
    'specialist': 'Gynecologist',
    'about': 'Women health specialist with expertise in obstetrics, gynecological surgeries, and preventive care. Strong advocate for women health education.',
    'year_of_experience': 11,
    'comment': [
      {'user': 'PatientX', 'rating': 4.9, 'comment': 'Made my pregnancy journey smooth and comfortable.'},
      {'user': 'PatientY', 'rating': 4.7, 'comment': 'Very knowledgeable and caring doctor.'},
      {'user': 'PatientZ', 'rating': 5.0, 'comment': 'The most supportive doctor I have ever met.'}
    ],
    'phone_number': '+1-555-0107',
    'address': '147 Women Health Center, Care Boulevard, Austin, TX 73301',
    'image': 'https://images.unsplash.com/photo-1559839734-2b71ea197ec2?ixlib=rb-4.0.3&auto=format&fit=crop&w=500&q=80'
  },
  {
    'name': 'Dr. Kevin Patel',
    'specialist': 'Dentist',
    'about': 'General dentist specializing in cosmetic dentistry, dental implants, and preventive dental care. Uses latest technology for pain-free treatments.',
    'year_of_experience': 9,
    'comment': [
      {'user': 'ClientX', 'rating': 4.8, 'comment': 'Painless dental procedures! Highly recommended.'},
      {'user': 'ClientY', 'rating': 4.9, 'comment': 'Transformed my smile completely. Excellent work!'},
      {'user': 'ClientZ', 'rating': 4.7, 'comment': 'Friendly staff and professional service.'}
    ],
    'phone_number': '+1-555-0108',
    'address': '258 Dental Care, Smile Street, Denver, CO 80201',
    'image': 'https://images.unsplash.com/photo-1622253692010-333f2da6031d?ixlib=rb-4.0.3&auto=format&fit=crop&w=500&q=80'
  },
  {
    'name': 'Dr. David Kim',
    'specialist': 'Ophthalmologist',
    'about': 'Eye care specialist with expertise in cataract surgery, LASIK, and retinal diseases. Committed to preserving and restoring vision.',
    'year_of_experience': 16,
    'comment': [
      {'user': 'Patient1', 'rating': 4.8, 'comment': 'Perfect LASIK surgery! Life-changing results.'},
      {'user': 'Patient2', 'rating': 4.9, 'comment': 'Very detailed eye examinations.'},
      {'user': 'Patient3', 'rating': 4.7, 'comment': 'Professional and explains everything clearly.'}
    ],
    'phone_number': '+1-555-0109',
    'address': '369 Vision Center, Sight Street, Phoenix, AZ 85001',
    'image': 'https://images.unsplash.com/photo-1582750433449-648ed127bb54?ixlib=rb-4.0.3&auto=format&fit=crop&w=500&q=80'
  },
  {
    'name': 'Dr. Sophia Martinez',
    'specialist': 'Endocrinologist',
    'about': 'Specialized in diabetes management, thyroid disorders, and hormonal imbalances. Focuses on personalized treatment plans.',
    'year_of_experience': 13,
    'comment': [
      {'user': 'PatientA', 'rating': 4.9, 'comment': 'Managed my diabetes perfectly. Very supportive.'},
      {'user': 'PatientB', 'rating': 4.7, 'comment': 'Knowledgeable and up-to-date with latest treatments.'},
      {'user': 'PatientC', 'rating': 4.8, 'comment': 'Great follow-up care and attention to detail.'}
    ],
    'phone_number': '+1-555-0110',
    'address': '741 Endocrine Center, Health Avenue, San Diego, CA 92101',
    'image': 'https://images.unsplash.com/photo-1559839734-2b71ea197ec2?ixlib=rb-4.0.3&auto=format&fit=crop&w=500&q=80'
  }
];
 }

 