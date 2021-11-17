import 'package:flutter/material.dart';
import 'package:whatsapp_clone/screens/message_page.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    List data = ModalRoute.of(context)!.settings.arguments as List;
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        title: Row(
          children: [
            CircleAvatar(
              radius: 18,
              backgroundColor: Colors.grey,
              backgroundImage: AssetImage(data[1]),
            ),
            Padding(
              padding: EdgeInsets.only(left: 6),
            ),
            Column(children: [
              Text(data[0]),
              Text(
                "Last seen " + data[2],
                style: TextStyle(fontSize: 10),
              )
            ]),
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.video_call),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.call,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: MessagePage(),
          ),
          Container(
            alignment: Alignment.bottomCenter,
            padding: EdgeInsetsDirectional.all(16),
            child: Row(
              children: [
                Flexible(
                  child: TextFormField(
                    minLines: 1,
                    decoration: InputDecoration(
                      hintText: "Type a message",
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      prefixIcon: Icon(
                        Icons.emoji_emotions,
                        color: Colors.grey,
                      ),
                      suffixIcon: Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Icon(
                              Icons.attach_file,
                              color: Colors.grey,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 8),
                            ),
                            Icon(
                              Icons.camera_alt,
                              color: Colors.grey,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Theme.of(context).primaryColor,
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.mic),
                    color: Colors.white,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
