
import 'package:flutter/material.dart';

class passwordField extends StatefulWidget{

  State createState()=> _passwordField();
}
class _passwordField extends State{
  bool obsecureText=true;
  void toggleVisibility(){
    setState(() {
      obsecureText=!obsecureText;
    });
  }
  @override
  Widget build(BuildContext context){
    return Padding(
      padding:const EdgeInsets.only(bottom: 20),
               child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.cyan,
                  hintText: "Enter Password",
                  helperText: "required",
                  enabledBorder: OutlineInputBorder(
                    borderSide:const BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(20),
                    ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.cyan),
                    borderRadius: BorderRadius.circular(20),
                  ),

                    suffixIcon: IconButton(

                      icon: Icon(obsecureText ? Icons.visibility:Icons.visibility_off,
                      color: Colors.black,
                      ),
                      onPressed: (){
                        toggleVisibility();
                      },
                    )
                  ),
                  obscureText: obsecureText,
                  
                )
           );
        
      

          
    
  }
 }