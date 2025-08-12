import 'package:flutter/material.dart';
import 'package:gemini_app/config/navigation/routes.dart';
import 'package:gemini_app/config/theme/app_theme.dart';
import 'package:get/get.dart';


void main() {

  AppTheme.setSystemUIOverlayStyle(isDarkMode: true);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Gemini App',

      // Rutas
      initialRoute: Navigation.home,
      getPages: Navigation.getRoutes(),
      navigatorKey: Get.key,

      // Tema
      theme: AppTheme(isDarkMode: true).getTheme(),
    );
  }
}
