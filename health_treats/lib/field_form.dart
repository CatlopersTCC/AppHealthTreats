import 'package:flutter/material.dart';

class FieldForm extends StatelessWidget {
  String label;
  TextEditingController controller;
  
  FieldForm({
    required this.label,
    required this.controller,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        filled: true, // Permissão para escrever
        fillColor: Colors.white, // Cor do fundo
        labelText: label, // Tipo de dados que entra
      ),
    );
  }
}