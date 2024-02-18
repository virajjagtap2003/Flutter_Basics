import 'package:flutter/material.dart';
// import 'package:image_app/post_card.dart';

class Assignment5 extends StatefulWidget{
  const Assignment5({super.key});

  State<Assignment5> createState() => _Assignment5State();
}

class _Assignment5State extends State<Assignment5>{
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "Instagram",
        style:TextStyle(
          fontStyle: FontStyle.italic,
          color: Colors.black,
          fontSize: 30
      ),
    ),
    actions: [
      const Icon(
        Icons.favorite_rounded,
        color: Colors.red,
      )
    ],
    ),
    body:
     
    Column(
      
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.network("https://encrypted-tbn0.gstatic.com/licensed-image?q=tbn:ANd9GcRqprksER3ZS6M1gVUmWxpDe-TSdtVHethWwGvmOqalWJEFsHHVLVdNW94sHFPRuA3WlK8DqGhfPrw5B2U",
             width: 700,
             height: 600,
            ),
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                   icon: const Icon(
                    Icons.favorite_outline_rounded,
                    color: Colors.red,
                    
                   ),
                ),
                IconButton(
                  onPressed: () {},
                   icon: const Icon(
                    Icons.chat_bubble,
                   ),
                   ),
                   IconButton(
                    onPressed: () {} ,
                    icon: const Icon(
                      Icons.send,
                    ),
                  ),
              ],
            ),
          ],
        ),
      ],
      ),
    );
  }
}