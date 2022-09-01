import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_chat_ui/widget/user_model.dart';

class ChatScreen extends StatefulWidget {
  final User user;
  ChatScreen({required this.user})
    // ChatScreen({this.user});

 ; @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,

appBar: AppBar(
  title: Text(widget.user.name,style: TextStyle(
fontSize: 28.0,
fontWeight: FontWeight.bold,

),
),
      elevation: 0.0,
 actions:<Widget> [
      IconButton(icon: Icon(Icons.more_horiz),
    iconSize: 30.0,
      color: Colors.white,
      onPressed:(){},
     ),
 ],
),
body: Container(
  decoration: BoxDecoration(color: Colors. white),
),

    );
  }
}