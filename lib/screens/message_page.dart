import 'package:flutter/material.dart';
import 'package:bubble/bubble.dart';
import 'package:flutter/scheduler.dart';

class MessagePage extends StatefulWidget {
  const MessagePage({Key? key}) : super(key: key);

  @override
  _MessagePageState createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  static const senderstyle = BubbleStyle(
    margin: BubbleEdges.only(top: 10),
    alignment: Alignment.topRight,
    color: Color.fromRGBO(225, 255, 199, 1),
    nip: BubbleNip.rightTop,
  );
  static const recieverStyle = BubbleStyle(
    margin: BubbleEdges.only(top: 10),
    alignment: Alignment.topLeft,
    nip: BubbleNip.leftTop,
  );

  ScrollController _myScrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    SchedulerBinding.instance!.addPostFrameCallback((_) {
      _myScrollController.jumpTo(_myScrollController.position.maxScrollExtent);
    });
    return ListView(
      controller: _myScrollController,
      children: [
        Bubble(
          alignment: Alignment.center,
          color: Color.fromRGBO(212, 234, 244, 1),
          child: Text(
            "TODAY",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 11),
          ),
        ),
        Bubble(
          style: senderstyle,
          child: Text(
            "Hello World!",
            textAlign: TextAlign.right,
          ),
        ),
        Bubble(
          style: senderstyle,
          showNip: false,
          child: Text(
            "How are you?",
            textAlign: TextAlign.right,
          ),
        ),
        Bubble(
          style: recieverStyle,
          child: Text(
            "Hi, Developer!",
            textAlign: TextAlign.left,
          ),
        ),
        Bubble(
          style: recieverStyle,
          showNip: false,
          child: Text(
            "Well,see for yourself",
            textAlign: TextAlign.left,
          ),
        ),
        Bubble(
          style: senderstyle,
          child: Text(
            "Hello World!",
            textAlign: TextAlign.right,
          ),
        ),
        Bubble(
          style: senderstyle,
          showNip: false,
          child: Text(
            "How are you?",
            textAlign: TextAlign.right,
          ),
        ),
        Bubble(
          style: recieverStyle,
          child: Text(
            "Hi, Developer!",
            textAlign: TextAlign.left,
          ),
        ),
        Bubble(
          style: recieverStyle,
          showNip: false,
          child: Text(
            "Well,see for yourself",
            textAlign: TextAlign.left,
          ),
        ),
        Bubble(
          style: senderstyle,
          child: Text(
            "Hello World!",
            textAlign: TextAlign.right,
          ),
        ),
        Bubble(
          style: senderstyle,
          showNip: false,
          child: Text(
            "How are you?",
            textAlign: TextAlign.right,
          ),
        ),
        Bubble(
          style: recieverStyle,
          child: Text(
            "Hi, Developer!",
            textAlign: TextAlign.left,
          ),
        ),
        Bubble(
          style: recieverStyle,
          showNip: false,
          child: Text(
            "Well,see for yourself",
            textAlign: TextAlign.left,
          ),
        ),
        Bubble(
          style: senderstyle,
          child: Text(
            "Hello World!",
            textAlign: TextAlign.right,
          ),
        ),
        Bubble(
          style: senderstyle,
          showNip: false,
          child: Text(
            "How are you?",
            textAlign: TextAlign.right,
          ),
        ),
        Bubble(
          style: recieverStyle,
          child: Text(
            "Hi, Developer!",
            textAlign: TextAlign.left,
          ),
        ),
        Bubble(
          style: recieverStyle,
          showNip: false,
          child: Text(
            "Well,see for yourself",
            textAlign: TextAlign.left,
          ),
        ),
        Bubble(
          style: senderstyle,
          child: Text(
            "Hello World!",
            textAlign: TextAlign.right,
          ),
        ),
        Bubble(
          style: senderstyle,
          showNip: false,
          child: Text(
            "How are you?",
            textAlign: TextAlign.right,
          ),
        ),
        Bubble(
          style: recieverStyle,
          child: Text(
            "Hi, Developer!",
            textAlign: TextAlign.left,
          ),
        ),
        Bubble(
          style: recieverStyle,
          showNip: false,
          child: Text(
            "Well,see for yourself",
            textAlign: TextAlign.left,
          ),
        ),
      ],
    );
  }
}
