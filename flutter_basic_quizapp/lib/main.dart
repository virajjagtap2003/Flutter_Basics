import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: QuizUI(),
    );
  }
}
class QuizUI extends StatefulWidget{
  const QuizUI({super.key});

 State createState()=>_QuizUIState();
}
class _QuizUIState extends State{
  
  Widget build(BuildContext context){
    int? questionCount=1;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("QuizApp",
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w400,
        ),
        ),
      ),

      body:  Column(
        children: [
          const SizedBox(
                height: 20,
            ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
           
            children: [
              const Text("Questions:",
              style:TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
              ),),
              const SizedBox(
                width: 22,
              ),
              Text("$questionCount/10"), 
              SizedBox(
                height: 70,
              )
            ],

          ),
          const SizedBox(
            height: 50,
            width: 300,
            child: const Text("Who is your favorite player ?",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.normal,
            ),
            ),
           
          ),
          ElevatedButton(onPressed: () {},
           child :const Text("A.Virat Kholi")
          ),
          ElevatedButton(onPressed: () {},
           child :const Text("B.Rohit shrma")
          ),
          ElevatedButton(onPressed: () {},
           child :const Text("C.Surya")
          ),
          ElevatedButton(onPressed: () {},
           child :const Text("D.MSD")
          ),
        ],
        

      ),
      floatingActionButton: FloatingActionButton(onPressed: (){},
        child: const Text("Next"),
      ),
    );
    
  }
}