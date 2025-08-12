import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

enum ColorTheme {
  seddColor  (color: Color(0xFF1E1C36),);

  const ColorTheme({ 
    required Color color 
  }) : _color = color;

  final Color _color;
  Color get bgColor => _color;
}

class AppTheme{

  final bool isDarkMode;

  AppTheme({
    required this.isDarkMode
  });

  getPrimaryColor( BuildContext context ) => Theme.of(context).colorScheme.primary;
  getSecondaryColor( BuildContext context ) => Theme.of(context).colorScheme.secondary;

  ThemeData getTheme({ ColorTheme themeColor = ColorTheme.seddColor }) => ThemeData(
    useMaterial3: true,
    colorSchemeSeed: themeColor.bgColor,
    brightness: isDarkMode ? Brightness.dark : Brightness.light,

    listTileTheme: ListTileThemeData(
      iconColor: themeColor.bgColor,
    ),

    appBarTheme: AppBarTheme(
      backgroundColor: themeColor.bgColor,
      surfaceTintColor: Colors.transparent,
      centerTitle: true,
    )
  );

  static setSystemUIOverlayStyle({ required bool isDarkMode }){

    final themeBrightness = isDarkMode ? Brightness.dark : Brightness.light;

    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarBrightness: themeBrightness,
        statusBarIconBrightness: themeBrightness,
        statusBarColor: Colors.transparent,
        systemNavigationBarIconBrightness:  themeBrightness,
        systemNavigationBarColor: Colors.transparent,
      )
    );
  }

}