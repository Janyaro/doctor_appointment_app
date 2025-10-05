
import 'package:flutter/material.dart';

class DoctorDetailScreens extends StatefulWidget {
 final Map<String, dynamic> data;
  const DoctorDetailScreens({super.key, required this.data});

  @override
  State<DoctorDetailScreens> createState() => _DoctorDetailScreensState();
}

class _DoctorDetailScreensState extends State<DoctorDetailScreens> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        appBar: AppBar(

      title: Text('${widget.data['name']}' , style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold),),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
Center(
  child: CircleAvatar(
    
    radius: 150,
    child: ClipOval(
      child: Image.network(
        '${widget.data['image']}',
        width: 290, // 2 * radius
        height: 290, // 2 * radius
        fit: BoxFit.cover,
      ),
    ),
  ),
),
Text('${widget.data['specialist']}'),
Text('${widget.data['year_of_experience']} year_of_experience'),
 Expanded(
                    child: ListView.builder(
                      itemCount: widget.data['comment']?.length ?? 0,
                      itemBuilder: (context, index) {
                        return Card(
                          margin: EdgeInsets.symmetric(vertical: 4, horizontal: 16),
                          child: ListTile(
                            title: Text('${widget.data['comment'][index]['user']}'),
                            subtitle: Text('${widget.data['comment'][index]['comment']}'),
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
                  ),
          ],
        ),
      ),
    );
  }
}