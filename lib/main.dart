import 'package:flutter/material.dart';

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
  List<String> chat = [];

  void addChat(String chatdata) {
    setState(() {
      chat.add(chatdata);
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
            ChatTimeline(chat: chat),
            // ChatTextArea(),
          ],
        ),
      );
}

