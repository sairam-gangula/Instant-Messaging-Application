import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_cl/popmenu.dart';
import 'chat/chatlist.dart';
import 'status/status.dart';
import 'calls/calls.dart';

void main() => runApp(MaterialApp(
    theme: ThemeData(
      primaryColor: Colors.teal[900],

    ),
    home: Home(),
  ),
);

class Home extends StatelessWidget {

  final tabs = <Widget>[
    Tab( icon: Icon(Icons.camera_alt_outlined),),
    Tab( text: 'CHATS',),
    Tab( text: 'STATUS',),
    Tab( text: 'CALLS',),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
          length: tabs.length,
          initialIndex: 1,
          child: Scaffold(
            backgroundColor: Color.fromRGBO(74, 83, 107,1) ,
            appBar: AppBar(
              backgroundColor:Color.fromRGBO(	74, 83, 107, 1),
              title: Text('Chat App', style: TextStyle( fontFamily: 'OpenSans',),),
              actions: <Widget>[
                IconButton(icon: Icon(Icons.search_outlined), onPressed: (){},),
                Popmenu(),
              ],
              bottom: TabBar( tabs: tabs,indicator: ShapeDecoration(
                color: Color.fromRGBO(	217, 165, 179, 1),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
              ),),
            elevation: 0,
            ),
            body:TabBarView(
              children: <Widget>[
                Center(child: Text('Camera' , style: TextStyle(color: Colors.white),)),
                ChatList(),
                Status(),
                Calllog(),
              ],
            ),

          ),
    );
  }
}




