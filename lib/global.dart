import "package:flutter/material.dart";




ThemeData lightTheme = ThemeData(
  primaryColor: const Color.fromRGBO(233, 104, 105, 1),
  scaffoldBackgroundColor: const Color.fromRGBO(245, 245, 244, 1), 
  colorScheme: ColorScheme.fromSwatch().copyWith(secondary: const Color.fromRGBO(233, 104, 105, 1)),
  textTheme: const TextTheme(
    bodyLarge: TextStyle(color: Color.fromRGBO(30, 30, 30, 1))
  ),
  fontFamily: "Tajawal",
  
);

double width(ctx){
  return  MediaQuery.of(ctx).size.width;
}
double height(ctx){
  return  MediaQuery.of(ctx).size.height;
}