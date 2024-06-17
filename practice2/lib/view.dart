


import 'package:flutter/material.dart';
import 'package:practice2/going.dart';

class viewButton extends StatefulWidget{
  const viewButton({super.key});
  State<viewButton> createState()=> _viewButton(); 
}
class _viewButton extends State<viewButton>{
  Widget build(BuildContext context){
    return Scaffold( 
      appBar: AppBar(
        title: const Text("page Routing"),
        centerTitle: true,

      ),
      body: Center(child: 
        Column(
          children: [
            Image.network("https://encrypted-tbn0.gstatic.com/licensed-image?q=tbn:ANd9GcRqprksER3ZS6M1gVUmWxpDe-TSdtVHethWwGvmOqalWJEFsHHVLVdNW94sHFPRuA3WlK8DqGhfPrw5B2U",
            height: 450,
            width: 450,
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return const call();
              }));
            }, 

            child: const Text("Next page"))
          ],
          
          )
      ),
    );
  }
}