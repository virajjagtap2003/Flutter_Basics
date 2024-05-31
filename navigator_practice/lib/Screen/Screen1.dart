import 'package:flutter/material.dart';
import 'package:navigator_practice/Screen/Screen2.dart';
class Screen1 extends StatelessWidget{
  const Screen1({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Screen1"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return Screen2();
              }));
            },
             child: const Text("Next Screen(Screen2)")),

             const SizedBox(
              height: 20,
             ),
             ElevatedButton(onPressed: (){
              Navigator.pop(context);
      
              },
            
             child: const Text("Previous Screen(HomeScreen)")),
          ],
        ) ),
    );
  }
}