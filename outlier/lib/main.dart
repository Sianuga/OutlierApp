import 'package:flutter/material.dart';
import 'homePageScreen.dart';
import 'outlierScreen.dart';

void main() 
{
  runApp(const MyApp());
}

class MyApp extends StatelessWidget 
{
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) 
  {
    return MaterialApp(
      title: 'The outlier',
      
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

      home: const MyHomePage(title: 'The outlier'),
    );
  }
}

