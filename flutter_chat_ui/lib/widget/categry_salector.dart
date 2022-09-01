import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:html';


class CategorySelector extends StatefulWidget {
  const CategorySelector({super.key});

  @override
  State<CategorySelector> createState() => _CategorySelectorState();
}

class _CategorySelectorState extends State<CategorySelector> {
  int selectedIndex=0;
  final List <String> catagroy=['messeges','online','groups','requist'];
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 90,
      color: Theme.of(context).primaryColor,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: catagroy.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: (){
              setState(() {
                selectedIndex=index;
              });
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 30.0),
              child: Text(catagroy[index],style: TextStyle(fontSize: 24.0,
              fontWeight: FontWeight.bold,
              
              color:index==selectedIndex ? Colors.white:Colors.white60,
              
            letterSpacing:1.0),
                   
            ),
            ),
          );
        },
      ),

      
    );
  }
}