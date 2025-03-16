import 'package:flutter/material.dart';

import '../../utils/theme.dart';

Widget simpleButton(String text, Function onPressed, {Color? textcolor = Colors.white, Color buttoncolor = primaryColor, Size? size}) {
  return ElevatedButton(
    style: ButtonStyle(
      minimumSize: WidgetStateProperty.all<Size>(size ?? Size(88, 36)),
      backgroundColor: WidgetStateProperty.all<Color>(buttoncolor),
      foregroundColor: WidgetStateProperty.all<Color>(textcolor!),
    ),
    onPressed: () => onPressed(),
    child: Text(text, style: TextStyle(color: textcolor)),
  );
}