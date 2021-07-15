import 'package:emoji_picker_flutter/emoji_picker_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:whatsapp_cl/chat/chatmodel.dart';

class ChatPage extends StatefulWidget {
  final ChatModel chatModel;
  ChatPage({required this.chatModel});

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {

  bool showEmoji = false;
  FocusNode focusNode = FocusNode();
  TextEditingController controller =TextEditingController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    focusNode.addListener(() {
      if(focusNode.hasFocus){
        setState(() {
          showEmoji = false;
        });
      }
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 80,
        leading: InkWell(
          onTap: (){
            Navigator.pop(context,);
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.arrow_back),
              SizedBox(width: 5,),
              CircleAvatar( radius: 24,
                backgroundColor: Colors.teal[800],
                child: SvgPicture.asset(
                    widget.chatModel.isGroup?'icons/groups_white_36dp.svg':'icons/person_outline_white_36dp.svg'),
              ),
            ],
          ),
        ),
        title: InkWell(
          onTap:() {

          },
          child: Container(
            padding: EdgeInsets.all(6),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text(widget.chatModel.name, style: TextStyle(fontSize: 20,fontFamily: "OpenSans",fontWeight:FontWeight.normal),),
                Text("Last seen today at 12:00",style: TextStyle(fontSize: 12,color:Colors.white70),)
              ],
            ),
          ),
        ),
        actions: [
          IconButton(
          onPressed: (){},
              icon: Icon(Icons.video_call)),
          IconButton(
          onPressed: (){},
              icon: Icon(Icons.call),)
        ],
        elevation: 0,
      ),
      body: Container(
        color: Colors.teal[400],
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: WillPopScope(

          child: Stack(
            children: [
              ListView(),
              Align(
                alignment: Alignment.bottomCenter,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width -55,
                            child: Card(
                              margin: EdgeInsets.only(left: 4,right: 2,bottom: 8),
                              color: Colors.grey[100],
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(22))),
                              child: TextFormField(
                                focusNode: focusNode,
                                textAlignVertical: TextAlignVertical.center,
                                keyboardType: TextInputType.multiline,
                                maxLines:2 ,
                                minLines: 1,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Type a Message',
                                  prefixIcon: IconButton(
                                    icon: Icon(Icons.emoji_emotions_outlined),
                                    onPressed: (){
                                     setState(() {
                                       focusNode.unfocus();
                                       focusNode.canRequestFocus=false;
                                       showEmoji=!showEmoji;
                                     });
                                    },
                                  ),
                                  suffixIcon: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children:<Widget>[
                                      IconButton(icon: Icon(Icons.attach_file_rounded,),onPressed: (){},),
                                      IconButton(icon: Icon(Icons.camera_alt_outlined),onPressed: (){},),
                                      ],
                                    ),
                                  contentPadding: EdgeInsets.all(10)
                                ),
                              ),
                            ),
                         ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8,left: 2),
                          child: CircleAvatar(
                            radius:25,
                            backgroundColor: Colors.teal[700],
                            foregroundColor: Colors.white,
                            child: IconButton(
                              icon: Icon(Icons.mic,),
                              onPressed: (){},
                            ),
                          ),
                        )
                      ],
                    ),
                    showEmoji? emojiSelect():Container()
                  ],
                ),
              ),
            ],
          ),
          onWillPop: (){
            if(showEmoji){
              setState(() {
                showEmoji=false;
              });
            }
            else{
              Navigator.pop(context);
            }
            return Future.value(false);
          },
        ),
      ),
    );
  }
  Widget emojiSelect(){
    return SizedBox(
      height: 250,
      child: EmojiPicker(
        onEmojiSelected: (category, emoji){
          setState(() {
            controller.text =  controller.text + emoji.emoji;
          });;
        },
        config: const Config(
          columns: 7,
          emojiSizeMax: 32.0,
          verticalSpacing: 0,
          horizontalSpacing: 0,

        ),
      ),
    );
  }
}


