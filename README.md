# ojichat_app

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

# 画面構成
![](https://i.imgur.com/EfMk27u.png)

## widget 
```
ChatScreen (main.dart)
|_ChatTimeline (component/ChatTimeLine.dart)
|_ChatTextArea (component/ChatTextArea.dart)
```

## 関数
(main.dart)
* addChat: 変数chatに値を追加する。(ChatTextAreaで使用)
* addSpeaker: 変数speakerに値を追加する。(ChatTextAreaで使用)
* 本当はJSONでやった方がいいんだろうけどねぇ；；

(ChatTextArea.dart)
* sendMessage: メッセージをaddChat,addSpeakerを使い追加し、オジチャットを取得。オジチャットも同同様に追加する。

## 変数
* chat: chatの内容が入っている。変数chatは変数speakerと一対一で対応している。
* speaker: 誰が発言したかの情報が入っている。変数chatは変数speakerと一対一で対応している。

# サーバー側
> https://github.com/DuGlaser/ojichat
```
go run ojichat.go
```
をする事によりサーバー起動
