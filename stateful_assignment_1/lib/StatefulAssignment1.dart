

import 'package:flutter/material.dart';
class StatefulAssignment1 extends StatefulWidget{
  const StatefulAssignment1({super.key});

  State<StatefulAssignment1> createState()=> _StatefulAssignment1State();
}

class _StatefulAssignment1State extends State<StatefulAssignment1>{
  int? _count=0;
  void _PrintTableValue(){
    setState(() {
      _count=_count! + 2 ;
    });
  }
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Table of 2",
        ),
      ),
    
    body:Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          
          const Text(
            "Click button to print table values"
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            "$_count",
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(onPressed: _PrintTableValue,
           child: const Text("Print"),
           ),
        ],
      ),
    ),
    );
  }
}