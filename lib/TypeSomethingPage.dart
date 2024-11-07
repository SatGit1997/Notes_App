import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Typesomethingpage extends StatelessWidget{
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
                Container(

                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(11),
                      color: Colors.white24
                  ),
                  child: Icon(Icons.arrow_back_ios_new_rounded,
                    color: Colors.white70,size: 22,),
                ),
                Container(

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

              ],
            ),
            SizedBox(height: 30,),
            TextField(
              decoration: InputDecoration(
                label: Text('Title',style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 40,
                  color: Colors.white38
                ),),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none

                )
              ),
            ),
            SizedBox(height: 20,),
            TextField(
              decoration: InputDecoration(
                  label: Text('Type something...',style: TextStyle(

                      fontSize: 25,
                      color: Colors.white38
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