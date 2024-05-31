import 'package:flutter/material.dart';
import 'package:navigator_practice/Screen/Screen1.dart';
import 'package:navigator_practice/Screen/Screen2.dart';
import 'package:navigator_practice/Screen/Screen3.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});

  Widget build(BuildContext context){
    return const  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
class HomeScreen extends StatelessWidget{
  const HomeScreen({super.key});

  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Navigator Practice"),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: 
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return const Screen1();
              }));
            },
             child: const Text("Screen1")),
             const SizedBox(
              height: 20,
             ),
             ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return const Screen2();
              }));
            },
             child: const Text("Screen2")),
             const SizedBox(
              height: 20,
             ), 
              ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return const Screen3();
              }));
            },
             child: const Text("Screen3")),
            
          ],
        )),

    );
  }
}