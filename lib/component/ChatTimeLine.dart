import 'package:flutter/material.dart';

class ChatTimeline extends StatelessWidget {
  final List<String> chat;
  ChatTimeline({this.chat});

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
                    chat[index],
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.pink,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    "",
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
