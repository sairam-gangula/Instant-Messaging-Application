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
            backgroundColor: Theme.of(context).primaryColor ,
            appBar: AppBar(
              backgroundColor:Colors.teal[900] ,
              title: Text('WhatsApp', style: TextStyle( fontFamily: 'OpenSans',),),
              actions: <Widget>[
                IconButton(icon: Icon(Icons.search_outlined), onPressed: (){},),
                Popmenu(),
              ],
              bottom: TabBar( tabs: tabs, indicatorColor: Colors.green,),
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




