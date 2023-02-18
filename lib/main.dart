import "package:flutter/material.dart";
import "package:get/get.dart";
import "package:menu/app/Function/Route.dart";
// Pages
import "app/View/Home.dart";
import "global.dart";

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Menu App",
      initialRoute: "/",
      getPages: routePage,
      theme: lightTheme,
    );
  }
}