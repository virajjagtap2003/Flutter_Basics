import 'package:flutter/material.dart';

class ImageDemo extends StatelessWidget{
  const ImageDemo({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Image Demo App",
        style: TextStyle(
          fontSize: 20,
          color: Colors.yellow,
          fontWeight: FontWeight.w600,
        ),),
        centerTitle: true,
        backgroundColor: Colors.red,
        
      ),
      body:Center(
        child: Container(
          height: 200,
          width: 200,
          child: Image.asset('assets/Images/logo.png'),
        )),
      
      
    );
          
      

        
       
     
          
        
      
    
  }
}