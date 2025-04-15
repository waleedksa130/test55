import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project/applocal/applocal.dart';

class NextPage extends StatefulWidget{
  final  name;

  @override
  State<StatefulWidget> createState()=>_NextPage();

  NextPage({super.key,required this.name});
}
class _NextPage extends State<NextPage>{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(title: Text("${getLang(context, "tital_nextpage")}"),),
     body: Container( margin: EdgeInsets.all(10),
       padding: EdgeInsets.all(10),
       child:  Column(
         children: [

              Text("${widget.name}"),
           SizedBox(height: 100,),
           Container(
             margin: EdgeInsets.fromLTRB(30, 60, 30, 0),
             padding: EdgeInsets.all(10),
             decoration: BoxDecoration(
                 borderRadius: BorderRadius.all(Radius.circular(2)),
                 border: Border.all(color: Colors.black, width: 2)),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceAround,
               children: [
                 IconButton(
                     onPressed: () {
                       Navigator.pop(context);
                     },
                     style: IconButton.styleFrom(
                         fixedSize: Size(140, 70),
                         shape: BeveledRectangleBorder(
                             borderRadius: BorderRadius.circular(3),
                             side: BorderSide(color: Colors.black)),
                         backgroundColor: Colors.white),
                     icon: Icon(
                       Icons.arrow_back,
                       size: 50,
                     )),

               ],
             ),
           ),

         ],
       ),
     ),
   );

  }
  
}