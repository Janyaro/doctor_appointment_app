import 'package:flutter/material.dart';

class RecordScreen extends StatefulWidget {
  const RecordScreen({super.key});

  @override
  State<RecordScreen> createState() => _RecordScreenState();
}

class _RecordScreenState extends State<RecordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
                      IconButton(onPressed: (){
BottomSheet(onClosing: (){}, builder: (context){
  return Text('data');
});
            }, icon: Icon(Icons.add , color: Colors.black,))
        ],
      ),
    );
  }
}