import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ToDoApp(),
    );
  }
}
class ToDoApp extends StatefulWidget{
  const ToDoApp({super.key});
  @override
  State createState()=>_ToDoAppState();
}
class _ToDoAppState extends State


{
  TextEditingController titleController=TextEditingController();
  TextEditingController descriptionController=TextEditingController();
  TextEditingController dateController=TextEditingController();
  void showBottomSheet(){
    showModalBottomSheet(
      context: context, 
    builder:(BuildContext context){
      return Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Create Task",
          
          
            style: TextStyle(
              
              fontWeight: FontWeight.w800,
              fontSize: 22,
            ),
            ),
            const SizedBox(
              height: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Title",
                style: GoogleFonts.quicksand(
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                ),
                ),
                const SizedBox(
                  height: 5,
                ),

                TextField(
                      controller: titleController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                          
                          
                        )
                      ),
                ),
                 Text("Description",
                style: GoogleFonts.quicksand(
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                ),
                ),
                const SizedBox(
                  height: 5,
                ),

                TextField(
                      controller: descriptionController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                          
                          
                        )
                      ),
                ),
                 Text("Date",
                style: GoogleFonts.quicksand(
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                ),
                ),
                const SizedBox(
                  height: 5,
                ),

                TextField(
                      controller: dateController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                          
                          
                        ),
                        suffixIcon:  Icon(
                          Icons.calendar_month_outlined,
                        ),
                      ),
                      readOnly: true,
                      onTap: ()async{

                        DateTime? pickDate=await showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(2023),
                            lastDate: DateTime(2024),
                        );
                      },
                )
              ],
            ),
            ElevatedButton(
              style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Color.fromRGBO(1, 167, 177, 1))),
              onPressed:(){},
              child: const Text("Submit",
              style: TextStyle(
                color: Colors.red,
              ),
              ),
              )
          ],
        ),
      
        );
    

      
      }
    );
  }
      
      
    
  

  List<ToDoModelClass> CardList=[
    ToDoModelClass(title: "Instagram API", description: "contact BackendTeam", date: "Mar 14 2024"),
  ];
  Widget build(BuildContext context){
    return  Scaffold(
        appBar: AppBar(
            title: const Text("ToDoApp"),
            centerTitle: true,
            backgroundColor: const Color.fromRGBO(2, 167, 177, 1),
        ),

        body: ListView.builder(
          itemCount:CardList.length,
           itemBuilder: (BuildContext context,int index){
            return Padding(padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
            child: Container(
                height: 112,
                width: 330, 
                decoration: BoxDecoration(border: Border.all(
                  width: 3,
                  color: Colors.black,
                ),
                boxShadow: const [
                  BoxShadow(
                    offset: Offset(10, 10),
                    color:Color.fromRGBO(2,130,177,0.5),
                    blurRadius: 5,
                  )
                ]
            ),
            child:  Padding(
              padding: EdgeInsets.all(10),
              child: Column(

              
              children:  [
                Row(
                  // Row 1
                  children: [
                    Container(
                      height: 52,
                      width: 52,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color:Color.fromRGBO(0,0,0,0.7),
                          )
                        ],
                      ),
                      child: Image.network("https://cdn.pixabay.com/photo/2017/06/06/00/33/edit-icon-2375785_1280.png"),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                     Column(
                      children: [
                        Text(CardList[index].title,
                        style: GoogleFonts.quicksand(
                          fontWeight:FontWeight.w500
                        ),
                        ),

                        const SizedBox(
                            height: 10,
                        ),
                        Text(CardList[index].description,
                        style: GoogleFonts.quicksand(
                          fontWeight:FontWeight.w500,
                          fontSize: 12,
                        ),
                        ),

                      ],
                    ),
                    
                  ],

                ),
                // Row 2
              Row(
                  children: [
                    Text(CardList[index].date,
                    style: GoogleFonts.quicksand(
                      fontWeight:FontWeight.w500,
                      fontSize: 12,

                    ),

                    ),
                    Spacer(),
                     Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                          GestureDetector(
                              child: const Icon(
                                color:Color.fromRGBO(2, 167, 177, 1),
                                size:30,
                                Icons.edit_note_outlined,

                              ),
                              onTap: (){

                              },
                          ),
                          GestureDetector(
                              child: const Icon(
                                color:Color.fromRGBO(2, 167, 177, 1),
                                size:30,
                                Icons.delete_outline,
                              ),
                          ),
                      ],
                    )
                  ],
                ),  
              ],
            ),
            ),

            ),
            );
           },),
           floatingActionButton: FloatingActionButton(
            backgroundColor: const Color.fromRGBO(2, 167, 177, 1),
             child: const Text("Add"),
            onPressed: () {
             showBottomSheet();
           },
           
             ),
    );
  }
}
class ToDoModelClass{
  String title;
  String description;
  String date;

   ToDoModelClass({
    required this.title,  // required parameter
    required this.description,
    required this.date,
});
}

