
import 'package:flutter/material.dart';
import 'package:notes_ui/FullPage.dart';
import 'package:notes_ui/TypeSomethingPage.dart';
import 'package:notes_ui/db_helper.dart';

class Pageone extends StatefulWidget{
  @override
  State<Pageone> createState() => _PageoneState();
}

class _PageoneState extends State<Pageone> {
  // var titleController = TextEditingController();
  // var descController = TextEditingController();
  DbHelper dbHelper =DbHelper.getInstance();
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
                    child:
                    mData.isNotEmpty ? GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 11,
                        mainAxisSpacing: 11,
                        childAspectRatio: 10/12
                      ),
                      itemCount: mData.length,
                      itemBuilder: (context, index){
                         return InkWell(onTap: (){
                           Navigator.push(context, MaterialPageRoute(builder: (context) => Fullpage()));
                         },
                           child: Container(
                             padding: EdgeInsets.all(8),
                             decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(11),
                               color: Colors.white24
                             ),
                             child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                 Text(mData[index]["n_title"],
                                   style: TextStyle(
                                   color: Colors.white,
                                   fontSize: 20,
                                     fontWeight: FontWeight.w500

                                 ),),
                                 SizedBox(height: 15,),
                                 Text(mData[index]["n_desc"],
                                   style: TextStyle(
                                     color: Colors.white,
                                     fontSize: 15,))

                               ],
                             ),
                           ),
                         );
                        // ListTile(
                        //   title: Text(mData[index]["n_title"]),
                        //   subtitle: Text(mData[index]["n_desc"]),
                        // );
                      }
                    ) : Center(
                      child: Text("Notes not yet!!",style: TextStyle(color: Colors.white),),)
                ),

              ],
            ),

          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          Navigator.push(context, MaterialPageRoute(builder: (context) => Typesomethingpage()));
        },
        child: Icon(Icons.add,
          color: Colors.white,
        ),backgroundColor: Colors.white12,


      ),
      backgroundColor: Colors.black54,
    );
  }
}