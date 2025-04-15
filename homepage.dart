import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project/applocal/applocal.dart';
import 'package:project/nextpage.dart';

class HomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=>_HomePage();
  final namecntroller= TextEditingController();
  
}
class _HomePage extends State<HomePage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${getLang(context, "tital")}"),
      ),
      body:Container( margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(10),
        child:  Column(
          children: [

            TextField(
              controller: widget.namecntroller,
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: "${getLang(context, "name")}",
                  hintStyle: TextStyle(color: Colors.grey),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)))),
            ),
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
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>NextPage(name: widget.namecntroller.text)));
                      },
                      style: ElevatedButton.styleFrom(
                          fixedSize: Size(140, 70),
                          shape: BeveledRectangleBorder(
                              borderRadius: BorderRadius.circular(3),
                              side: BorderSide(color: Colors.black))),
                      child: Text("${getLang(context, "next")}",
                          style: TextStyle(fontSize: 25, color: Colors.black))),
                  SizedBox(width: 10,),
                  ElevatedButton(
                      onPressed: () {
                        exit(0);
                      },
                      style: ElevatedButton.styleFrom(
                          fixedSize: Size(140, 70),
                          shape: BeveledRectangleBorder(
                              borderRadius: BorderRadius.circular(3),
                              side: BorderSide(color: Colors.black))),
                      child: Text("${getLang(context, "close")}",
                          style: TextStyle(fontSize: 25, color: Colors.black)))
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
  
}