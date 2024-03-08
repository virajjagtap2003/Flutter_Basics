

import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Quiz",
      home: QuizApp(),
    );
  }
}
class QuizApp extends StatefulWidget{
  const QuizApp({super.key});
      State createState()=> _QuizAppState();
  
}
class _QuizAppState extends State{
 
  List<Map> allQuestions=[
    {
        "Question": "Who is the founder of Microsoft?",
        "Options":["Steve jobs","Jeff Bezos","Bill gates","Elon Musk"],
        "AnswerIndex":2,
    },
    {
        "Question": "Who is the founder of Apple?",
        "Options":["Steve jobs","Jeff Bezos","Bill gates","Elon Musk"],
        "AnswerIndex":0,
    },
    {
        "Question": "Who is the founder of Amazon?",
        "Options":["Steve jobs","Jeff Bezos","Bill gates","Elon Musk"],
        "AnswerIndex":1,
    },
    {
        "Question": "Who is the founder of SpaceX?",
        "Options":["Steve jobs","Jeff Bezos","Bill gates","Elon Musk"],
        "AnswerIndex":3,
    },
    {
        "Question": "Who is the founder of Google?",
        "Options":["Steve jobs","Larry Page","Bill gates","Elon Musk"],
        "AnswerIndex":1,
    },
  ];
 bool questionScreen=true;
  int questionIndex=0;
Scaffold isQuestionScreen(){
  if(questionScreen==true){
    return Scaffold(
      backgroundColor: Colors.yellow,
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Quizes",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.orange,
          ),
          ),
          backgroundColor: Colors.black,
        ),
        body:  Column(
          children: [
             const SizedBox(
              height: 25,
            ),
           Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             const Text("Questions:",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w800,
              ),),
              Text("${questionIndex+1}/${allQuestions.length}",
              style:const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w600,
              ),
              ),
            ],
           ),
           const SizedBox(
            height: 50,
           ),
            SizedBox(
            width: 380,
            height: 50,
            child: Text(
              allQuestions[questionIndex]["Question"],
              style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w400,
              ),
            ),
           ),
           const SizedBox(
            height: 30,
           ),
          
           ElevatedButton(onPressed: (){},
            child: Text(
              "A.${allQuestions[questionIndex]["Options"][0]}",
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.normal,
              ),
            ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(onPressed: (){},
            child: Text(
              "B.${allQuestions[questionIndex]["Options"][1]}",
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.normal,
              ),
            ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(onPressed: (){},
            child: Text(
              "C.${allQuestions[questionIndex]["Options"][2]}",
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.normal,
              ),
            ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(onPressed: (){},
            child: Text(
              "D.${allQuestions[questionIndex]["Options"][3]}",
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.normal,
              ),
            ),
            ),
            
            
          ],
          
        
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            setState(() {
              if(questionIndex<=allQuestions.length){
                questionIndex++;
              }
            });
          },
          backgroundColor: Colors.black,
          child: const Icon(
            Icons.forward,
            color: Colors.red,
          ),
        ),

    );
  }else{
    return const Scaffold();
  }
}
  Widget build(BuildContext context){
        return isQuestionScreen();
  }
}
