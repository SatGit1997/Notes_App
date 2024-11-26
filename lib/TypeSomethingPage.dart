import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notes_ui/PageOne.dart';
import 'package:notes_ui/db_helper.dart';

class Typesomethingpage extends StatefulWidget{
  @override
  State<Typesomethingpage> createState() => _TypesomethingpageState();
}

class _TypesomethingpageState extends State<Typesomethingpage> {
  var titleController = TextEditingController();
  var descController = TextEditingController();
  DbHelper dbHelper = DbHelper.getInstance();

  List<Map<String, dynamic>> mData = [];
  @override
  void initState() {
    super.initState();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SizedBox(height: 30,),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(onTap: (){
                  Navigator.pop(context);
                },
                  child: Container(

                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(11),
                        color: Colors.white24
                    ),
                    child: Icon(Icons.arrow_back_ios_new_rounded,
                      color: Colors.white70,size: 22,),
                  ),
                ),
                InkWell(onTap: () async{
                  if(titleController.text.isNotEmpty &&
                      descController.text.isNotEmpty){
                    bool check = await dbHelper.addNote(title: titleController.text.toString(),
                        desc: descController.text.toString());
                    if(check){
                      Navigator.pop(context);
                    }
                  }
                },
                  child: Container(

                    width: 80,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(11),
                        color: Colors.white24
                    ),
                    child: Center(child: Text('Save',style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.white70
                    ),))
                  ),
                ),

              ],
            ),
            SizedBox(height: 30,),
            TextField(
              controller: titleController,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                label: Text('Title',style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 40,
                  color: Colors.blue,
                ),),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none

                ),
              ),
            ),
            SizedBox(height: 20,),
            TextField(
              controller: descController,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                  label: Text('Type something...',style: TextStyle(

                      fontSize: 25,
                      color: Colors.blue
                  ),),
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none

                  )
              ),
            )
          ],
        ),
      ),
      backgroundColor: Colors.black54,
    );
  }
}