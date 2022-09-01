// ignore_for_file: prefer_const_constructors

import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_chat_ui/widget/categry_salector.dart';
import 'package:flutter_chat_ui/widget/favrotcontacs.dart';
import 'package:flutter_chat_ui/widget/messagemodel.dart';
import 'package:flutter_chat_ui/widget/recentchats.dart';

class homescreen extends StatefulWidget {
  const homescreen({super.key});

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
     appBar: AppBar(
      leading:IconButton(icon: Icon(Icons.menu),
    iconSize: 30.0,
      color: Colors.white,
      onPressed:(){},
      
      
      ),
      centerTitle: true,
        
    
      backgroundColor: Colors.red,
            title: Text('chat',
           style: TextStyle(fontSize:28.0,fontWeight: FontWeight.bold,letterSpacing: 1.2 ),


     ),  
     elevation: 0.0,
     actions:<Widget> [
      IconButton(icon: Icon(Icons.search),
    iconSize: 30.0,
      color: Colors.white,
      onPressed:(){},
     ),
     
         ],

    ),
    
    body: Column(
      children:<Widget> [
   
CategorySelector(),

Expanded(
  child:   Container(
    decoration: BoxDecoration(color:Theme.of(context).accentColor,
    borderRadius: BorderRadius.only(topLeft:Radius.circular(30.0,)
    ,topRight: Radius.circular(30.0))),
  child:Column(
    children: [
     favrotcontacs(),
     recentchats(),
    ],
  ), 
  ),
)  
      ],
    ),
   );

    
  }
}