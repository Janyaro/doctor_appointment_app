import 'package:flutter/material.dart';

class ReuseTextfield extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  const ReuseTextfield({super.key, required this.controller, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
                  controller: controller,
                  decoration: InputDecoration(
                    fillColor: Colors.blue.shade50,
                    filled: true,
                    hintText: hintText,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none
                    )
                  ),
                );
  }
}