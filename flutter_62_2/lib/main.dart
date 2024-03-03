import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return  MaterialApp(
      home:Scaffold(
        appBar:AppBar(
          title:const Center( child:Text("Happy Republic Day" ,)),
          backgroundColor: Color.fromARGB(164, 49, 67, 124),
        ),

        body: Container(
          //height: double.infinity,
          width:double.infinity,
          color:Colors.yellow,
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 80,
                    width:10,
                    color:Colors.black
                  ),
                  Container(
                    height: 80,
                    width: 400,
                    color:const Color.fromARGB(255, 255, 136, 0),
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 80,
                    width:10,
                    color:Colors.black
                  ),
                  Container(
                    height: 80,
                    width: 400,
                    color: Colors.white,
                    child: Column(children: [Container(height: 80,width: 50,color: Colors.blue,)]),
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 80,
                    width:10,
                    color:Colors.black
                  ),
                  Container(
                    height: 80,
                    width: 400,
                    color: Colors.green,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:[
                  Container(
                    height: 300,
                    width: 10,
                    color: Colors.black,
                  ),
                  Container(
                    height: 100,
                    width: 400,
                    color:Colors.yellow,
                  ),
              ]

              ),
            ],
          ),
        ),
      ),
    );
  }
}
