import 'package:flutter/material.dart';

class Calllog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Color.fromRGBO(74, 83, 107,1),
      body: Container(
        padding: EdgeInsets.only(top: 20),
        decoration: BoxDecoration(color: Color.fromRGBO	( 198, 215, 235, 0.5), borderRadius: BorderRadius.only(topLeft: Radius.circular(50),topRight: Radius.circular(50),)),
        child: Center(
            child: Text('CALL LOG')
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color.fromRGBO(	217, 165, 179, 1),
        onPressed: (){},
        child: Icon(Icons.add_ic_call_rounded),
      ),
    );
  }
}
