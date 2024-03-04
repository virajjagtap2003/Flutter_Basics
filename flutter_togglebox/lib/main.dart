import 'package:flutter/material.dart';
void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: ToggleBox(),
      debugShowCheckedModeBanner: false,
    );
  }
}
class ToggleBox extends StatefulWidget{
  const ToggleBox({super.key});

  @override
  State<ToggleBox> createState(){
    return _ToggleBoxState();
  }
}
class _ToggleBoxState extends State<ToggleBox>{
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Toggle Box"),),
        backgroundColor: Colors.blue,        
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,// equal space
          children: [
            Column(
              children: [
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.red,

                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(onPressed: (){},
                child: const Text("Button 1"),
                )
              ],
            ),Column(
              children: [
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.black,

                ),
                SizedBox(
                  height: 20,

                ),
                ElevatedButton(onPressed: (){},
                  child: const Text("Button 2"),
                 )
              ],
            )
          ],
        ),
      ),
    );
  }
}