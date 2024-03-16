import 'package:flutter/material.dart';
void main(){
  runApp(const MainApp());
}
class MainApp extends StatelessWidget{
  const MainApp({super.key});
  Widget build(BuildContext context){
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TextFieldDemo(),
    );
  }
}
class TextFieldDemo extends StatefulWidget{
  State createState()=> _TextFieldDemoState();
}
class _TextFieldDemoState extends State{
  Widget build(BuildContext context){
      return Scaffold(
        appBar: AppBar(
          title: const Text("TextField Demo",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.red,
          ),),
          centerTitle: true,
          backgroundColor: Colors.black,
        ),

        body: Column(
          children: [
            SizedBox(
              height: 30,
            ),

            TextField(
              showCursor: false,
              decoration:InputDecoration(border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(30),),
              ),
              hintText: "Enter Company Name: "
              ),
              keyboardType: TextInputType.emailAddress,
              
            ),

            SizedBox(
              height: 30,
            ),
            TextField(),
          ],
        ),
      );
  }
}