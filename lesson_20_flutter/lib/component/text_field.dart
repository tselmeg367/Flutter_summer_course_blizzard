import 'package:flutter/material.dart';

class TextFieldInput extends StatelessWidget {
  final String hintText;
  final bool isPassword;
  final TextEditingController textEditingController;
  final TextInputType textInputType;

  const TextFieldInput(
      {super.key,
        required this.textEditingController,
        required this.hintText,
        required this.isPassword,
        required this.textInputType, required bool obsecureText });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: this.textEditingController,
      decoration: InputDecoration(
        fillColor: Color(0x3B3B3B55),
        labelText: hintText,
        hintText: "$hintText",hintStyle: TextStyle(color: Colors.white),
        border:
        OutlineInputBorder(borderSide: Divider.createBorderSide(context)),
        focusedBorder:
        OutlineInputBorder(borderSide: Divider.createBorderSide(context)),
        enabledBorder:
        OutlineInputBorder(borderSide: Divider.createBorderSide(context)),
        filled: true,
        contentPadding: EdgeInsets.all(8),
      ),
      keyboardType: this.textInputType,
      obscureText: this.isPassword,
      style: TextStyle(color: Colors.white),
    );
  }
}
