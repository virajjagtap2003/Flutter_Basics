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
  bool box1Color=false;
  bool box2Color=false;

  Color setBox1Color(){
    if(box1Color==false){
      return Colors.red;
    }else{
      return Colors.black;
    }
  }
  Color setBox2Color(){
    if(box2Color==false){
      return Colors.blue;
    }else{
      return Colors.orange;
    }
  }
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
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  color:setBox1Color(),

                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(onPressed: (){
                  setState(() {
                    if(box1Color==false){
                      box1Color=true;
                    }else{
                      box1Color=false;
                    }
                  });
                },
                child: const Text("Button 1"), 
                
                )
              ],
            ),Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  color: setBox2Color(),

                ),
                SizedBox(
                  height: 20,

                ),
                ElevatedButton(onPressed: (){
                  setState(() {
                    if(box2Color==false){
                      box2Color=true;
                    }else{
                      box2Color=false;
                    }
                  });
                },
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