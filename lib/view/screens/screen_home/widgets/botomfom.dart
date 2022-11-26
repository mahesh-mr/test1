import 'package:flutter/material.dart';
import 'package:fps/view/style/style.dart';

class BotosheetForm extends StatelessWidget {
  final TextEditingController controller;
  final FormFieldValidator validator;

  final TextInputType textinputType;

  const BotosheetForm({
    super.key,
    required this.controller,
    required this.textinputType,
    required this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validator,
   
      decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(5),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(40),
              borderSide: const BorderSide(color: lightred)),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(40),
            borderSide: const BorderSide(color: lightred),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(40),
            borderSide: const BorderSide(color: red),
          ),
          fillColor: lightred,
          focusColor: lightred,
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
          )),
    );
  }
}
