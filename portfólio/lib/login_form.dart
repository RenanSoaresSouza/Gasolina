
import 'package:flutter/material.dart';

class FieldForm extends StatelessWidget {
  String label;
  bool isPassword;
  TextEditingController controller;
  
    FieldForm({
    required this.label,
    required this.isPassword,
    required this.controller,
    super.key});

  @override
  Widget build(BuildContext context) {


    return SizedBox(width: 100.0,
      child: TextFormField(cursorHeight: 0,
        validator: (value) {
          if (value == null){
            print('ERRO O CAMPO NAO PODE ESTA VAZIO');
          }
        },
        style: TextStyle(color: Color.fromRGBO(255, 255, 255, 1),fontWeight: FontWeight.bold,decoration:TextDecoration.none),
        keyboardType: TextInputType.numberWithOptions(
          decimal: true
        ),
        obscureText: isPassword ,
        controller: controller,
        decoration: InputDecoration(
          focusedBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
          floatingLabelBehavior: FloatingLabelBehavior.never,
          filled: true,
          fillColor: const Color.fromARGB(0, 255, 255, 255),
          labelText: label,
          labelStyle: TextStyle(color: Color.fromRGBO(255, 255, 255, 1),fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}