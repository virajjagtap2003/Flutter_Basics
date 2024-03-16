import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(

        body: Center(
          child: Container(
              width: 180,
              height: 180,
              decoration:  BoxDecoration(
                color: const Color.fromRGBO(2, 147, 172, 1),
                shape: BoxShape.rectangle,
                border: Border.all(
                  width: 2,
                  color:  Colors.black,
                ),
                boxShadow:const [
                   BoxShadow(
                    color: Colors.red,
                  
                   offset:Offset(10, -10),  // x and y axis y axis is opposite here  
                   blurRadius: 20,
                  ),
                ]
              ),
              child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTKy-4J0tcT5Zmt9gjr3QcBOWys0S1gvo0bj7TXLXAcwj7NRG16hiLCBcll3vHGb3UEuKU&usqp=CAU",
              width: 100,
              ),
            
              ),
          ),
        ),
      );
    
  }
}
