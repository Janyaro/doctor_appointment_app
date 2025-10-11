import 'package:flutter/material.dart';

class ReuseBtn extends StatelessWidget {
  final String btnTitle;
  final VoidCallback ontap;
  final bool isVisibility;
  const ReuseBtn({super.key, required this.btnTitle, required this.ontap , this.isVisibility = false });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.blue
                ),
                child: Center(
                  child:isVisibility ? CircularProgressIndicator(color: Colors.white , strokeWidth: 3,) :  Text(btnTitle, style: TextStyle(fontSize: 20 , fontWeight: FontWeight.w500 , color: Colors.white),),
                ),
              ),
    );
  }
}