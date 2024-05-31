import 'package:flutter/material.dart';
import 'package:navigator_practice/Screen/Screen3.dart';
class Screen2 extends StatelessWidget{
  const Screen2({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Screen 2"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder:(context){
                return Screen3();
              }));
            }, 
            child: const Text("Next Screen(Screen 3)")),

            const SizedBox(
              height: 20,
            ),
             ElevatedButton(onPressed: (){
              Navigator.pop(context);
             },
            child: const Text("Previous Screen")),
          ],
        )),
    );
  }
}