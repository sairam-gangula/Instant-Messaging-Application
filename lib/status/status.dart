import 'package:flutter/material.dart';

class Status extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[900],
      body: Container(
        padding: EdgeInsets.only(top: 20),
        decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.only(topLeft: Radius.circular(50),topRight: Radius.circular(50),)),
        child: Center(
          child: Text('STATUS')
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.teal[900],
        onPressed: (){},
        child: Icon(Icons.camera_alt_outlined),
      ),
    );
  }
}
