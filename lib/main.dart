import 'package:flutter/material.dart';
import 'package:whatsapp_clone/models/routes.dart';
import 'package:whatsapp_clone/screens/chat_page.dart';
import 'package:whatsapp_clone/screens/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "WhatsApp",
      theme: ThemeData(
        primaryColor: Color(0xff075e54),
        accentColor: Color(0xff25d366),
      ),
      routes: {
        "/": (context) => MyHomePage(),
        MyRoutes.chatroute: (context) => ChatPage(),
      },
    );
  }
}
