import 'package:flutter/material.dart';

import 'Assignment4.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});

  Widget build(BuildContext context){
    return const MaterialApp(
      home: Assignment4(),
    );

  }
}