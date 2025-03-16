// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import '../../utils/theme.dart'; // Asegúrate de importar tu archivo de tema

class PasswordField extends StatefulWidget {
  final TextEditingController controller;
  final String texto;
  final Icon icono;
  final BorderRadius borde;
  final EdgeInsets padding;

  const PasswordField({
    super.key,
    required this.controller,
    required this.texto,
    required this.icono,
    required this.borde,
    required this.padding,
  });

  @override
  _PasswordFieldState createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: widget.padding,
      child: TextFormField(
        controller: widget.controller,
        obscureText: _obscureText,
        cursorColor: primaryColor, // Cambiado a primaryColor (verde)
        decoration: InputDecoration(
          label: Text(
            widget.texto,
            style: TextStyle(color: textLight), // Cambiado a textLight (negro)
          ),
          filled: true,
          fillColor: background, // Cambiado a background (gris claro)
          prefixIcon: widget.icono,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: primaryColor), // Cambiado a borderColor (verde)
            borderRadius: widget.borde,
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: primaryColor), // Cambiado a focusBorderColor (naranja)
            borderRadius: widget.borde,
          ),
          border: OutlineInputBorder(),
          suffixIcon: IconButton(
            icon: Icon(
              _obscureText ? Icons.visibility_off : Icons.visibility,
              color: primaryColor, // Cambiado a iconColor (verde)
            ),
            onPressed: () {
              setState(() {
                _obscureText = !_obscureText;
              });
            },
          ),
        ),
        maxLines: 1,
      ),
    );
  }
}

Widget form(TextEditingController controller, String texto, Icon icono, BorderRadius borde, EdgeInsets padding, {required bool isPassword}) {
  if (isPassword) {
    return PasswordField(
      controller: controller,
      texto: texto,
      icono: icono,
      borde: borde,
      padding: padding,
    );
  } else {
    return Padding(
      padding: padding,
      child: TextFormField(
        controller: controller,
        obscureText: isPassword,
        cursorColor: primaryColor, // Cambiado a primaryColor (verde)
        decoration: InputDecoration(
          label: Text(
            texto,
            style: TextStyle(color: textLight), // Cambiado a textLight (negro)
          ),
          filled: true,
          fillColor: background, // Cambiado a background (gris claro)
          prefixIcon: icono,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: primaryColor), // Cambiado a borderColor (verde)
            borderRadius: borde,
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: primaryColor), // Cambiado a focusBorderColor (naranja)
            borderRadius: borde,
          ),
          border: OutlineInputBorder(),
        ),
        maxLines: 1,
      ),
    );
  }
}