
import 'package:flutter/material.dart';

class Fullpage extends StatelessWidget{
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
                  Container(

                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(11),
                        color: Colors.white38
                    ),
                    child: Icon(Icons.arrow_back_ios_new_rounded,
                      color: Colors.white70,size: 20,),
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
          Text('Beautiful weather app UI concepts we wish existed',
            style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w500,
              color: Colors.white
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

