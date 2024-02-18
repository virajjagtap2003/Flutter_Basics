import 'package:flutter/material.dart';

import 'Assignment6.dart';

void main(){
  runApp(MainApp());
}
class MainApp extends StatelessWidget{
  const MainApp({super.key});

  Widget build(BuildContext context){
    return const MaterialApp(
      home: Assignment6(),
    );
  }
}