import 'package:flutter/material.dart';

class Calllog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[900],
      body: Container(
        padding: EdgeInsets.only(top: 20),
        decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.only(topLeft: Radius.circular(50),topRight: Radius.circular(50),)),
        child: Center(
            child: Text('CALL LOG')
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.teal[900],
        onPressed: (){},
        child: Icon(Icons.add_ic_call_rounded),
      ),
    );
  }
}
