import 'package:flutter/material.dart';

class Assignment4 extends StatefulWidget{
  const Assignment4({super.key});

  State<Assignment4> createState()=> _Assignment4State();

}
class _Assignment4State extends State<Assignment4>{
   int count=0;
   void countPallindrom(){
    count=0;
   
    for(int i=0;i<100;i++){
      int temp=i.abs();
      int reverseNum=0;
      while(temp!=0){
        reverseNum=reverseNum*10+temp%10;
        temp=temp~/10;

      }
      if(reverseNum==i.abs()){
        count++;
      }
    }
   }
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: const Text("Assignment 4"),),

      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: (){
                 countPallindrom();
                 setState(() {}); 
              }, 
              child: const Text("check Pallindrom"),
            ),
              const SizedBox(
                height: 20,
              ),
              Text("$count Numbers Are Pallindrom in between 100")           
          ],
        ),
      )
    );
  
  }
}