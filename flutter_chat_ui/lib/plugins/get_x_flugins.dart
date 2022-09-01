// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Counter extends StatelessWidget {
  const Counter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('get x'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 15),
            MaterialButton(
              shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20.0))),
              elevation: 5.0,
              minWidth: 200.0,
              height: 50,
              color: Color.fromARGB(255, 207, 121, 158),
              onPressed: () {
                Get.snackbar(
                  'title',
                  'massege has been sent',
                  backgroundColor: Colors.amberAccent[200],
                );
              },
              child: Text("snake bar"),
            ),
            SizedBox(height: 15),

            MaterialButton(
              color: Colors.pinkAccent
              ,height: 50,
            elevation: 10,
                 
              shape: RoundedRectangleBorder( borderRadius:BorderRadius.circular(20.0)),
              onPressed: () {
                Get.defaultDialog(title: 'Dilag');
              },
              // shape: bor,
              child: Text("defaultDialog"),
            ),
          ],
        ),
      ),
    );
  }
}
