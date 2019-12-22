import 'package:flutter/material.dart';

class ChatTimeline extends StatelessWidget {
  final List<String> speaker;
  final List<String> chat;
  ChatTimeline({this.speaker, this.chat});

  @override
  Widget build(BuildContext context) => Expanded(
        child: Container(
          child: ListView.builder(
            itemCount: chat.length,
            itemBuilder: (context, index) {
              return Container(
                child: ListTile(
                  leading: Icon(Icons.people),
                  title: Text(
                    speaker[index],
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.pink,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    chat[index],
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black87,
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      );
}
