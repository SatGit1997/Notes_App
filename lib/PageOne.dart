
import 'package:flutter/material.dart';
import 'package:notes_ui/FullPage.dart';
import 'package:notes_ui/TypeSomethingPage.dart';

class Pageone extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Stack(
          children: [
            Column(
              children: [
                SizedBox(height: 30,),
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Notes',style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 30
                    ),),
                    Container(

                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(11),
                          color: Colors.white38
                      ),
                      child: Icon(Icons.search_rounded,color: Colors.white70,),
                    ),
                  ],
                ),
                Expanded(
                    child: GridView.count(
                        crossAxisCount: 2,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      childAspectRatio: 16/19,
                      children: [
                        Container(
                          padding: EdgeInsets.all(16),
                          width: 300,
                          height: 300,
                          decoration: BoxDecoration(
                            color: Colors.amberAccent,
                            borderRadius: BorderRadius.circular(11)
                          ),
                          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text('How to make your personal brand stand out online',
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w500
                              ),),
                              Text('May 21,2020',style: TextStyle(
                                fontSize: 18,
                                color: Colors.black38
                              ),)
                            ],
                          ),
                        ),
                        InkWell(onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Fullpage()));
                        },
                          child: Container(
                            padding: EdgeInsets.all(16),
                            width: 300,
                            height: 300,
                            decoration: BoxDecoration(
                              color: Colors.green.shade200,
                              borderRadius: BorderRadius.circular(11)
                            ),
                            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text('Beautiful weather app UI concepts we wish existed',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500
                                  ),),
                                Text('Mar 18,2020',style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.black38
                                ),)
                              ],
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(16),
                          width: 300,
                          height: 300,
                          decoration: BoxDecoration(
                            color: Colors.greenAccent,
                            borderRadius: BorderRadius.circular(11)
                          ),
                          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text('10 excellent font pairing tools for designers',
                                style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.w500
                                ),),
                              Text('Feb 01,2020',style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black38
                              ),)
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(16),
                          width: 300,
                          height: 300,
                          decoration: BoxDecoration(
                            color: Colors.blueAccent.shade200,
                            borderRadius: BorderRadius.circular(11)
                          ),
                          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text('12 eye- catching mobile wallpaper',
                                style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.w500
                                ),),
                              Text('Feb 01,2020',style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black38
                              ),)
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(16),
                          width: 300,
                          height: 300,
                          decoration: BoxDecoration(
                            color: Colors.brown.shade200,
                            borderRadius: BorderRadius.circular(11)
                          ),
                          child: SingleChildScrollView(
                            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text('Spotify\'s Reema Bhagat on product design, '
                                    'music, and the key to a happy career',
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w500
                                  ),),
                                Text('Jan 26,2020',style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.black38
                                ),)
                              ],
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(16),
                          width: 300,
                          height: 300,
                          decoration: BoxDecoration(
                            color: Colors.pinkAccent,
                            borderRadius: BorderRadius.circular(11)
                          ),
                          child: SingleChildScrollView(
                            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text('Design for Good: Join The Face Mask Challenge',
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w500
                                  ),),
                                Text('Jan 02,2020',style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.black38
                                ),)
                              ],
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(16),
                          width: 300,
                          height: 300,
                          decoration: BoxDecoration(
                            color: Colors.purple.shade200,
                            borderRadius: BorderRadius.circular(11)
                          ),
                          child: SingleChildScrollView(
                            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text('A simple note app concept to save any idea quick and easy',
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w500
                                  ),),
                                Text('Dec 26,2019',style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.black38
                                ),)
                              ],
                            ),
                          ),
                        ),
                        SingleChildScrollView(
                          child: Container(
                            padding: EdgeInsets.all(16),
                            width: 300,
                            height: 300,
                            decoration: BoxDecoration(
                              color: Colors.blueGrey,
                              borderRadius: BorderRadius.circular(11)
                            ),child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text('Welcome to Dribbble Find design inspiration. Share your work',
                                style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.w500
                                ),),
                              Text('Nov 20,2020',style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black38
                              ),)
                            ],
                          ),
                          ),
                        ),
                      ],
                    )
                ),

              ],
            ),
            Align(alignment: Alignment.bottomRight,
              child: FloatingActionButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Typesomethingpage()));
                },
                child: Icon(Icons.add,
                  color: Colors.white,
                ),backgroundColor: Colors.black54,


              ),
            )
          ],
        ),
      ),
      backgroundColor: Colors.black54,
    );
  }
}