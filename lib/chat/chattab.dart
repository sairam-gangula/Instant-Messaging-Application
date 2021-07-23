import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:whatsapp_cl/chat/chatmodel.dart';
import 'package:whatsapp_cl/chat/chatpage.dart';
class ChatTab extends StatelessWidget {

final ChatModel chatModel;
ChatTab({required this.chatModel});


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => ChatPage(
          chatModel:chatModel ,)));
      },
      child: Column(
          children: <Widget>[
            ListTile(
              leading: CircleAvatar(
                radius: 25,
                backgroundColor: Color.fromRGBO(74, 83, 107,1),
                child: SvgPicture.asset(chatModel.isGroup?'icons/groups_white_36dp.svg':'icons/person_outline_white_36dp.svg'),
              ),
              title: Text(chatModel.name , style: TextStyle(fontFamily:"OpenSans" ,color: Colors.white),),
              subtitle: Text(chatModel.currentMessage, style: TextStyle(fontFamily:"OpenSans" ,color: Colors.white),),

              trailing: Padding(
                padding: const EdgeInsets.fromLTRB(0,5,8,5),
                child: Column(
                  children: <Widget>[
                    Text(chatModel.time,style: TextStyle(color: Colors.white),),
                    SizedBox(height:6),
                    Icon(Icons.done_rounded,color: Colors.white),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(50,0,40,0),
              child: Divider(
                height: 0,
                thickness: 1,
              ),
            ) ,
          ]
      ),
    );
  }
}

