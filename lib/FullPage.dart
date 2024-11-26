
import 'package:flutter/material.dart';
import 'package:notes_ui/db_helper.dart';

class Fullpage extends StatefulWidget{
  @override
  State<Fullpage> createState() => _FullpageState();
}

class _FullpageState extends State<Fullpage> {
  DbHelper dbHelper = DbHelper.getInstance();
  List<Map<String, dynamic>> mData = [];
  @override
  void initState() {
    super.initState();
    getNotes();
  }

  void getNotes() async{
    mData = await dbHelper.fetchAllNote();
    setState(() {

    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

    body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 30,),
             Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(onTap: (){
                    Navigator.pop(context);
                  },
                    child: Container(

                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(11),
                          color: Colors.white38
                      ),
                      child: Icon(Icons.arrow_back_ios_new_rounded,
                        color: Colors.white70,size: 20,),
                    ),
                  ),
                  Container(

                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(11),
                        color: Colors.white38
                    ),
                    child: Icon(Icons.edit_note_sharp,color: Colors.white70,),
                  ),

                ],
             ),
          SizedBox(height: 25,),
          Text("discrip",
            style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w500

            ),),
          SizedBox(height: 25,),
          Text('Mar 18,2020',style: TextStyle(
              fontSize: 18,
              color: Colors.white54
          ),),
          SizedBox(height: 25,),
          Text('ho would have thought there could be '
              'so many creative ways to tell the '
              'temperature? Today\'s daily dose of '
              'design inspiration is all about the weather. '
              'In this collection of UI designs, we\'re '
              'sharing a handful of beautiful mobile '
              'weather app concepts that we wish existed in real life.',
          style: TextStyle(
            fontSize: 19,
            color: Colors.white
          ),),
          SizedBox(height: 25,),
          Text('Weather apps are quite the popular '
              'interface theme for designers to explore.'
              'But don\'t let these effortlessly clean designs '
              'fool you. When it comes to the weather, there\'s a lot '
              'of data designers have to arrange which can be quite a '
              'challenge. Regardless, it\'s a great way to practice your UI skills. We '
              'are happy',
          style: TextStyle(
            fontSize: 19,
            color: Colors.white
          ),),


             ],
           ),
    ),backgroundColor: Colors.black54,
    );

    }
}

