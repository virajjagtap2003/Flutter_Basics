import 'package:flutter/material.dart';

class BasicFlag extends StatelessWidget{
  const BasicFlag({super.key});
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("India"),),
        backgroundColor: Colors.black,

      ),
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize:MainAxisSize.min,
          children: [
            Container(
              height: 100,
              width: 400,
              color: Colors.orange,
            ),
            Container(
              height: 100,
              width: 400,
              color: Colors.white,
              child: Column(
                children: [
                  Container(
                    height: 100,
                    width: 40,
                    color: Colors.blue,
                  )
                ],
              ),
            ),
            Container(
              height: 100,
              width: 400,
              color: Colors.green,
            )
          ],
        ),
      ),
    );
    
  }
}