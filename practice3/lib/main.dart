import 'package:flutter/material.dart';
import 'Display.dart';
void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});

  Widget build(BuildContext context){
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Imageview(),
    );
  }
}