import 'dart:developer';

import 'package:flutter/material.dart';
import 'Password.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        appBar: AppBar(
          title: const Text("TextField demo"),
          centerTitle: true,
        ),
        
       body: Padding(
        
        padding: EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // first textfield
           
          
           TextField(
           decoration: InputDecoration(
            filled: true,
            fillColor:Colors.amber,
            hintText: "Enter Your  Name",
            helperText: "REQUIRED",
            enabledBorder: OutlineInputBorder(
              borderSide:BorderSide(color: Colors.black),
              borderRadius: BorderRadius.circular(40),
              ),
           focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black),
            borderRadius: BorderRadius.circular(10)
           ),
           ),
           ),
          
         
           const SizedBox(
            height: 30,
           ),
           passwordField(),
           ElevatedButton(onPressed: (){
            log("BUTTON PRESSED");
           },
           child: const Text("SUBMIT"),)
          ],
        ),
       ),
      
      
      )
    );


            
        
  }
}
