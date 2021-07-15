import 'package:flutter/material.dart';

class Popmenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      color: Colors.teal[800],
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
      itemBuilder: (BuildContext context,){
      return [
        PopupMenuItem(child: Text(" New Group", style: TextStyle(color: Colors.white),), value: "New Group",),
        PopupMenuItem(child: Text(" New Broadcast", style: TextStyle(color: Colors.white),), value: "New Broadcast",),
        PopupMenuItem(child: Text(" Whatsapp Web", style: TextStyle(color: Colors.white),), value: "Whatsapp Web",),
        PopupMenuItem(child: Text(" Starred Messages ", style: TextStyle(color: Colors.white),), value: "Starred Messages",),
        PopupMenuItem(child: Text(" Settings", style: TextStyle(color: Colors.white),), value: "Settings",),
      ];
     },
    );
  }
}
