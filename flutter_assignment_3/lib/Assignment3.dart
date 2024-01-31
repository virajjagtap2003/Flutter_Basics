import 'package:flutter/material.dart';


class Assignment3 extends StatelessWidget{

  const Assignment3({super.key});

  Widget build(BuildContext Context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Assignment3"),
      ),
      body:SizedBox(
        height: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.orange,
                ),
                
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(onPressed: () {}, child: const Text("Button 1"),
                )
              ],

            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.blue,
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(onPressed: () {}, child: const Text("Button 2"),
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.red,
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(onPressed: () {}, child: const Text("Button 3"),
                )
              ],
            )

           
          ],
        ),
      )
    );
  }
}