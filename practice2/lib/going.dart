import 'package:flutter/material.dart';

class call extends StatefulWidget{
  const call({super.key});
  State<call> createState()=> _call();
}
class _call extends State<call>{
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(child: 
        ElevatedButton(onPressed: (){
         Navigator.pop(context);
        }, 
            
        child: const Text("Back page"))
      ),

    );
  }
}