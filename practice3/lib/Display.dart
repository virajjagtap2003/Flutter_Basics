import 'package:flutter/material.dart';
class Imageview extends StatelessWidget{
   Imageview({super.key});

  @override
  List<String> website=[
    "https://upload.wikimedia.org/wikipedia/commons/4/4a/Logo_2013_Google.png",
  ];
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
          title: const Text("ListView",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color:Colors.red,

          ),
          ),
          centerTitle: true,
        ),

      body: ListView.builder(
        itemCount: 10,
        itemBuilder:(context,index){
          return Column(
            children: [
              Container(
                height: 100,
                width: 400,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                  )
                ),
                child: Row(children: [
                    Image.network(website[0],
                      height: 100,
                      width: 100,
                    ),
                    SizedBox(width:80,),
                    Text("Google",
                      style: TextStyle(
                        fontSize: 24,
                      ),
                    ),
                    
                ]),
              ),
              
              SizedBox(
                height: 10,
              )
            ],
          );
          
          
        }
      ),
    );
  }
}