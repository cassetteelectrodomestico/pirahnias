import 'package:flutter/material.dart';
import 'package:piranhias/create_material_color.dart';
import 'package:piranhias/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: createMaterialColor(const Color(0xFF52733B)),
        scaffoldBackgroundColor: const Color(0xFFE4EBF2),
        accentColor: createMaterialColor(const Color(0xFF52733B)),
        textTheme: TextTheme(
        ).apply(
          displayColor: createMaterialColor(const Color(0xFF715E4E))
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            primary: createMaterialColor(const Color(0xFF84A45A)),
            shadowColor: Colors.black,
            textStyle: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
            padding: EdgeInsets.all(20),
          ),
        ),
      ),
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
