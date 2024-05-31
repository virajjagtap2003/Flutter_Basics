import 'package:flutter/material.dart';
import 'package:navigator_demo/Screens/Screen3.dart';

class Screen2 extends StatelessWidget{
  const Screen2({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Screen2"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),

      body: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed:(){
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context){
                      return const Screen3();
                    },
                    ),
                );
              } ,
              child: const Text("Next Screen (Screen 3)")),
              const SizedBox(
                height: 20,
              ),
               ElevatedButton(
                onPressed:(){
                  Navigator.pop(context);
               },
               
            
              child: const Text("Previous Screen")),
              const SizedBox(
                height: 20,
              ),
           
          ],
        ) 
        ),
    );
  }
}