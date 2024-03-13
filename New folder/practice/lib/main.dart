import 'package:flutter/material.dart';
void main(){
  runApp(MainApp());
}
class MainApp extends StatelessWidget{
  const MainApp({super.key});

  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
          title: const Text("adc"),
        ),
    );
  }

}