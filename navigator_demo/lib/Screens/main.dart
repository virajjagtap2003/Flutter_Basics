import 'package:flutter/material.dart';

import 'package:navigator_demo/Screens/Screen1.dart';
import 'package:navigator_demo/Screens/Screen2.dart';
import 'package:navigator_demo/Screens/Screen3.dart';
void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
class HomeScreen extends StatelessWidget{
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Navigator Demo"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed:(){
                Navigator.push(
                  context,
                   MaterialPageRoute(
                    builder: (context){
                      return const Screen1();
                    }));
              } ,
              child: const Text("Screen 1")),
              const SizedBox(
                height: 20,
              ),
               ElevatedButton(
              onPressed:(){
                Navigator.push(
                  context,
                   MaterialPageRoute(
                    builder: (context){
                      return const Screen2();
                    }));
              } ,
              child: const Text("Screen 2")),
              const SizedBox(
                height: 20,
              ),
               ElevatedButton(
              onPressed:(){
                Navigator.push(
                  context,
                   MaterialPageRoute(
                    builder: (context){
                      return const Screen3();
                    }));
              } ,
              child: const Text("Screen 3")),
              const SizedBox(
                height: 20,
              )
          ],
        ) 
        ),
    );
  }
}