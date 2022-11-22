import 'dart:js';

import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:interiory/Pages/detail.dart';

  Widget makeInput({label, obscureText = false}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          label,
          style: TextStyle(
              fontSize: 15, fontWeight: FontWeight.w400, color: Colors.black87),
        ),
        SizedBox(
          height: 5,
        ),
        TextField(
          obscureText: obscureText,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
            enabledBorder:
                OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
            border:
                OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
          ),
        ),
        SizedBox(
          height: 30,
        )
      ],
    );
  }

  Widget InputSearch({obscuretext = false}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: 15,),
        TextField(
          obscureText: obscuretext,
          textAlign: TextAlign.left,
          decoration: InputDecoration(
            hintText: "Cari Sesuatu ...",
            icon: Icon(Icons.search),
            contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey), borderRadius: BorderRadius.circular(10)),
            border: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey), borderRadius: BorderRadius.circular(10))
          ),
        )
      ],
    );
  }

  Widget ImagePost({title, harga, image}) {
    return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
             // height: MediaQuery.of(context).size.height,
            height: 250,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage('assets/images/$image'))
             ),
            ),
            MaterialButton(
              onPressed: () {
                // Navigator.push(context, MaterialPageRoute(builder: (context) => const Detail()));
              },
              child: Text("$title", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.grey[700]),),
              ),
            SizedBox(height: 10,),
            Text("IDR $harga", style: TextStyle(fontSize: 14, color: Colors.grey[700]),),
            SizedBox(height: 10,),
          ],
        );
  }

  Widget BoxInfo({title, content}) {
    return Container(
       padding: EdgeInsets.all(10),
       margin: EdgeInsets.all(10),
       width: double.infinity,
       decoration: BoxDecoration(
         color: Colors.white,
         borderRadius: BorderRadius.circular(5),
         boxShadow: [
           BoxShadow(
             color: Colors.black.withOpacity(0.3),
             spreadRadius: 0,
             blurRadius: 2.0,
             offset: Offset(0, 0),
           ),
         ],
       ),
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: <Widget>[
           Text("$title", style: TextStyle(fontSize: 22), textAlign: TextAlign.left,),
           SizedBox(height: 10,),
           Text("$content", style: TextStyle(fontWeight: FontWeight.bold), textAlign: TextAlign.left,)
         ],
       ),
     );
  }