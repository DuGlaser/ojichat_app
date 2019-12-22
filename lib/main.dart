import 'package:flutter/material.dart';
import './component/ChatTimeLine.dart';
import './component/ChatTextArea.dart';

void main() => runApp(
      MaterialApp(
        title: "ojichat",
        home: ChatScreen(),
      ),
    );

class ChatScreen extends StatefulWidget {
  @override
  ChatScreenState createState() => new ChatScreenState();
}

class ChatScreenState extends State<ChatScreen> {
  List<String> speaker = [];
  List<String> chat = [];

  void addChat(String chatdata) {
    setState(() {
      chat.add(chatdata);
    });
  }

  void addSpeaker(String speakerData) {
    setState(() {
      speaker.add(speakerData);
    });
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text("chat"),
          backgroundColor: Colors.pink[400],
        ),
        body: Column(
          children: <Widget>[
            ChatTimeline(speaker: speaker, chat: chat),
            ChatTextArea(addSpeaker: addSpeaker, addChat: addChat),
          ],
        ),
        backgroundColor: Colors.deepOrange[50],
      );
}
