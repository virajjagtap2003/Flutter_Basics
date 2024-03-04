import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});

  Widget build(BuildContext context){
    return MaterialApp(
      title:  "Tech Quiz",
      debugShowCheckedModeBanner: false,
      home: Quiz(),
    );
  }
}
class Quiz extends StatelessWidget{
  const Quiz({super.key});

  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Center(child:Text("QuizAppDemo"),),
        backgroundColor: Colors.yellow,
      ),

      body: Center(
        child: SizedBox(
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 40,
                width: 300,
                color: Colors.blue,
                child:Center(
                  child:Text("Option 1")
                )
              ),
              SizedBox(
                height:40,
                width: 300,
              ),
               Container(
                height: 40,
                width: 300,
                color: Colors.blue,
                child: Center(
                  child: const Text("Option 2"),
                ),
              ),
              SizedBox(
                height:40,
                width: 300,
              ),
               Container(
                height: 40,
                width: 300,
                color: Colors.blue,
                child: Center(
                  child: const Text("Option 3 "),
                ),
              ),
              SizedBox(
                height:40,
                width: 300,
              ),
               Container(
                height: 40,
                width: 300,
                color: Colors.blue,
                child: Center(
                  child: Text("Option 4"),
                ),
              ),
              SizedBox(
                height:40,
                width: 300,
              ),
            ],
          ),
        ),
      ),
     
         
      );
  }
}