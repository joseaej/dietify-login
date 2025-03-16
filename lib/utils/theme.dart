import 'package:flutter/material.dart';

// Colores combinados para un tema suave y moderno
const Color background = Color(0xFFF9F9F9); // Fondo suave
const Color primaryColor = Color(0xFF6B8E23); // Verde oliva (calidez y frescura)
const Color secondaryColor = Color(0xFFFFD700); // Amarillo dorado (energía y calidez)
const Color accentColor = Color(0xFF4682B4); // Azul acero (tranquilidad y balance)
const Color textLight = Color(0xFF2C3E50); // Gris oscuro (textos)
const Color textDark = Color(0xFFFFFFFF); // Blanco (textos sobre fondo oscuro)
const Color lightGray = Color(0xFFBDC3C7); // Gris claro (detalles)
const Color darkGray = Color(0xFF7F8C8D); // Gris oscuro (detalles y bordes)

ThemeData lightTheme = ThemeData(
  primaryColor: primaryColor,
  scaffoldBackgroundColor: background,
  hintColor: darkGray,
  primaryColorDark: primaryColor,
  textTheme: TextTheme(
    bodyLarge: TextStyle(color: textLight),
    bodyMedium: TextStyle(color: darkGray),
    headlineMedium: TextStyle(color: textLight, fontWeight: FontWeight.bold),
  ),
  appBarTheme: AppBarTheme(
    backgroundColor: primaryColor,
    iconTheme: IconThemeData(color: textDark),
    titleTextStyle: TextStyle(
      color: textDark,
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),
  ),
  buttonTheme: ButtonThemeData(
    buttonColor: primaryColor,
    textTheme: ButtonTextTheme.primary,
  ),
  iconTheme: IconThemeData(color: primaryColor),
  iconButtonTheme: IconButtonThemeData(
    style: ButtonStyle(
      foregroundColor: MaterialStateProperty.all(primaryColor),
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: lightGray.withOpacity(0.1),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(color: lightGray),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(color: secondaryColor),
    ),
    labelStyle: TextStyle(color: darkGray),
  ),
);

ThemeData darkTheme = ThemeData(
  primaryColor: primaryColor,
  scaffoldBackgroundColor: Color(0xFF2C3E50), // Fondo oscuro
  hintColor: lightGray,
  primaryColorDark: primaryColor,
  textTheme: TextTheme(
    bodyLarge: TextStyle(color: textDark),
    bodyMedium: TextStyle(color: lightGray),
    headlineMedium: TextStyle(color: textDark, fontWeight: FontWeight.bold),
  ),
  appBarTheme: AppBarTheme(
    backgroundColor: Color(0xFF34495E), // Fondo de barra de app oscuro
    iconTheme: IconThemeData(color: textDark),
    titleTextStyle: TextStyle(
      color: textDark,
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),
  ),
  buttonTheme: ButtonThemeData(
    buttonColor: primaryColor,
    textTheme: ButtonTextTheme.primary,
  ),
  iconTheme: IconThemeData(color: primaryColor),
  iconButtonTheme: IconButtonThemeData(
    style: ButtonStyle(
      foregroundColor: MaterialStateProperty.all(primaryColor),
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: darkGray.withOpacity(0.3),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(color: lightGray),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(color: secondaryColor),
    ),
    labelStyle: TextStyle(color: lightGray),
  ),
);
