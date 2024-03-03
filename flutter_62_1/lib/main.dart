import 'package:flutter/material.dart';
import 'Flag.dart';
void main(){
  runApp(const Myapp());
}
class Myapp extends StatelessWidget{
  const Myapp({super.key});
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BasicFlag(),
    );
  }
}