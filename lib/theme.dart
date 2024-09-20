import 'package:flutter/material.dart';

final theme = ThemeData(
  textSelectionTheme: const TextSelectionThemeData(
    cursorColor: Color.fromARGB(255, 0, 180, 220), //thereby
  ),
  textTheme: const TextTheme(
    titleLarge: TextStyle(color: Colors.red),
    // titleMedium: TextStyle(color: Colors.red),
    // titleSmall: TextStyle(color: Colors.red),
    // labelLarge: TextStyle(color: Colors.red),
    // labelMedium: TextStyle(color: Colors.red),
    // labelSmall: TextStyle(color: Colors.red),
    bodyMedium: TextStyle(
        color: Colors.black,
        fontSize: 16,
        fontWeight: FontWeight.w500,
        fontFamily: 'Roboto'), //основной текст
    // bodyLarge: TextStyle(color: Colors.black), //подзаголовок
    // bodySmall: TextStyle(color: Colors.red),
  ),
  appBarTheme: const AppBarTheme(
    centerTitle: true,
    foregroundColor: Colors.white,
    backgroundColor: Colors.black,
    elevation: 10,
  ),
  colorScheme: const ColorScheme.light(
      primary: Colors.black,
      secondary: Color.fromARGB(255, 125, 10, 0),
      tertiary: Color.fromARGB(255, 255, 20, 0),
      surface: Color.fromARGB(214, 255, 255, 255)),
  // inputDecorationTheme: InputDecorationTheme(
  //   border: OutlineInputBorder(
  //     borderRadius: BorderRadius.circular(10.0), // Закругленные углы
  //     borderSide: const BorderSide(
  //       color: Colors.white, // Цвет рамки
  //       width: 1.0, // Толщина рамки
  //     ),
  //   ),
  //   enabledBorder: OutlineInputBorder(
  //     borderRadius: BorderRadius.circular(10.0),
  //     borderSide: const BorderSide(
  //       color: Colors.white, // Цвет рамки в фокусе
  //       width: 1.0,
  //     ),
  //   ),
  //   focusedBorder: OutlineInputBorder(
  //     borderRadius: BorderRadius.circular(10.0),
  //     borderSide: const BorderSide(
  //       color: Color.fromARGB(255, 0, 180, 220), // Цвет рамки при наведении
  //       width: 2.0,
  //     ),
  //   ),
  //   labelStyle: const TextStyle(
  //     color: Colors.white, // Цвет текста метки
  //     fontSize: 16,
  //   ),
  //   hintStyle: const TextStyle(
  //     color: Colors.white, // Цвет текста подсказки
  //     fontSize: 16,
  //   ),
  //   contentPadding: const EdgeInsets.all(16.0),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      elevation: const WidgetStatePropertyAll(3),
      textStyle: const WidgetStatePropertyAll(TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w500,
          fontFamily: 'Roboto',
          color: Color.fromARGB(255, 20, 20, 20))),
      side: const WidgetStatePropertyAll(BorderSide(
        width: 2,
        color: Colors.grey,
      )),
      shape: WidgetStatePropertyAll(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    ),
  ),
);
