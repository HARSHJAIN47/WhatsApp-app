import 'package:flutter/material.dart';
import 'package:whatsapp_clone/screens/calls.dart';
import 'package:whatsapp_clone/screens/camera.dart';
import 'package:whatsapp_clone/screens/chats.dart';
import 'package:whatsapp_clone/screens/status.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;
  final List<Tab> topTabs = <Tab>[
    Tab(
      icon: Icon(
        Icons.camera_alt_outlined,
      ),
    ),
    Tab(
      child: Row(
        children: [
          Text("CHATS"),
          Container(
            margin: EdgeInsets.only(left: 5),
            height: 16,
            width: 16,
            decoration: BoxDecoration(
              color: Colors.white70,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Text(
                "20",
                style: TextStyle(
                  fontSize: 10,
                  color: Color(0xff075e54),
                ),
              ),
            ),
          )
        ],
      ),
    ),
    Tab(
      child: Row(
        children: [
          Text("STATUS"),
          Container(
            margin: EdgeInsets.only(left: 5),
            height: 7,
            width: 7,
            decoration: BoxDecoration(
              color: Colors.white70,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ],
      ),
    ),
    Tab(
      child: Container(
        child: Text("CALLS"),
      ),
    ),
  ];
  @override
  void initState() {
    _tabController =
        TabController(initialIndex: 1, length: topTabs.length, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WhatsApp"),
        actions: [
          IconButton(
            icon: Icon(
              Icons.search,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.more_vert,
            ),
            onPressed: () {},
          ),
        ],
        bottom: TabBar(
          controller: _tabController,
          tabs: topTabs,
          indicatorColor: Colors.white,
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Camera(),
          Chat(),
          Status(),
          Calls(),
        ],
      ),
      floatingActionButton: getFAB(),
    );
  }

  getFAB() {
    if (_tabController?.index == 1) {
      return FloatingActionButton(
        onPressed: () {
          print(_tabController?.index);
        },
        backgroundColor: Theme.of(context).accentColor,
        child: Icon(
          Icons.chat,
          color: Colors.white,
        ),
      );
    } else if (_tabController?.index == 2) {
      return FloatingActionButton(
        onPressed: () {
          print(_tabController?.index);
        },
        backgroundColor: Theme.of(context).accentColor,
        child: Icon(
          Icons.camera_alt,
          color: Colors.white,
        ),
      );
    } else if (_tabController?.index == 3) {
      return FloatingActionButton(
        onPressed: () {
          print(_tabController?.index);
        },
        backgroundColor: Theme.of(context).accentColor,
        child: Icon(
          Icons.call,
          color: Colors.white,
        ),
      );
    }
  }
}
