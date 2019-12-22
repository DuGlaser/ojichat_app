import 'package:flutter/material.dart';
import 'dart:async';
import 'package:http/http.dart' as http;

class ChatTextArea extends StatelessWidget {
  final addSpeaker;
  final addChat;
  final _textcontroller = TextEditingController();
  ChatTextArea({this.addSpeaker, this.addChat});

  Future<void> sendMessage() async {
    addSpeaker("舞子");
    addChat(_textcontroller.text);
    final result = await http.get("http://localhost:1323");
    addSpeaker("おじさん");
    addChat(result.body);
  }

  @override
  Widget build(BuildContext context) => Container(
        decoration: BoxDecoration(
          color: Colors.pink[400],
        ),
        padding: EdgeInsets.symmetric(horizontal: 10),
        height: 70.0,
        child: Row(
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.photo),
              iconSize: 25,
              onPressed: () {},
            ),
            Expanded(
              child: TextField(
                controller: _textcontroller,
                decoration: InputDecoration.collapsed(
                  hintText: 'メッセージを入力してください',
                ),
              ),
            ),
            IconButton(
              icon: Icon(Icons.send),
              iconSize: 25,
              onPressed: () => sendMessage(),
            ),
          ],
        ),
      );
}
