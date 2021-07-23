import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_cl/chat/chatmodel.dart';


import 'chattab.dart';

class ChatList extends StatefulWidget {

  @override
  _ChatListState createState() => _ChatListState();
}

class _ChatListState extends State<ChatList> {

  List<ChatModel> chats = [
    ChatModel(
        name: 'Sairam',
        isGroup: false,
        time: '10:00',
        currentMessage: 'Hey Satish'),
    ChatModel(
        name: 'Dad',
        isGroup: false,
        time: '12:00',
        currentMessage: 'Hey Sairam'),
    ChatModel(
        name: 'Mummy',
        isGroup: false,
        time: '5:00',
        currentMessage: 'Hey Sairam'),
    ChatModel(
        name: 'Satish',
        isGroup: false,
        time: '5:00',
        currentMessage: 'Hey Sairam'),
    ChatModel(
        name: 'Sunny',
        isGroup: false,
        time: '8:00',
        currentMessage: 'Hey Sairam'),
    ChatModel(
        name: 'Family Group ',
        isGroup: true,
        time: '8:00',
        currentMessage: 'Hey Everyone'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(74, 83, 107,1),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Container(
                decoration: BoxDecoration(
                    color: Color.fromRGBO	( 198, 215, 235, 0.5),
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(50),topRight: Radius.circular(50),)
                ),
                padding: EdgeInsets.only(top: 20),
                child:ListView.builder(
                  itemCount: chats.length,
                  itemBuilder: (context,index){
                    return ChatTab(chatModel: chats[index],);
                  },
                ),
              ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color.fromRGBO(	217, 165, 179, 1) ,
        onPressed: (){},
          child: Icon(Icons.message),
      ),
    );
  }
}


