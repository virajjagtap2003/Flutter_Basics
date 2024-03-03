import 'package:flutter/material.dart';

class AppbarAssignment extends StatelessWidget{
  const AppbarAssignment({super.key});
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back_ios),
        title: const Center(child: Text("flutter Developer")),
        backgroundColor: Colors.black,
        actions: const[ Icon(Icons.settings),Icon(Icons.menu)],

      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 100,
            width: 100,
            color:Colors.black,
          ),
          Container(
            height: 100,
            width: 100,
            color: Colors.red,

          ),
          Container(
            height: 100,
            width: 100,
            color: Colors.green,
          )
        ]),
    );
  }
}