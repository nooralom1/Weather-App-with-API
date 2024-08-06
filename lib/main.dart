import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weather_app_with_api/views/screens/weather_screen/weather_screen.dart';

void main(){

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WeatherScreen(),
    );
  }
}
