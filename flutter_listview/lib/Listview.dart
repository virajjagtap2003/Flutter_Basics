import 'package:flutter/material.dart';


class DisplayList extends StatefulWidget{
    const DisplayList({super.key});

    State createState()=> _ListViewDemo();
}
class _ListViewDemo extends State{
   List<String> ImageList=[

      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSIxgsAdYwbhSWac_oLPH1iFITE7KxYVt7iNg&usqp=CAU",

      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTBhvh2PP9r6pplEJxLlLS67hOSbXDjjLYeHA&usqp=CAU",

      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ992CqJG-ExxHWxc1Qx6SnyPGGfu1aRqRASQ&usqp=CAU",

      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ-5W2Maj7kQFJb_0zOdr30p8ZDpQ24OdA3Og&usqp=CAU",
  ];
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("List view Demo"),

      ),
      body: ListView.builder(
        itemCount: ImageList.length,
        itemBuilder: (context, index){
           return Container(
              height: 200,
              width: 200,

              margin: const EdgeInsets.all(10),
              child: Image.network(
                ImageList[index],
              ),
           );

        },
      ),
      ),
    );
  }
}