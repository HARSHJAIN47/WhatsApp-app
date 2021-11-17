import 'package:flutter/material.dart';
import 'package:whatsapp_clone/models/routes.dart';
import 'package:whatsapp_clone/models/users_model.dart';

class Chat extends StatefulWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: userData.length,
      itemBuilder: (context, i) => Column(
        children: [
          Divider(
            height: 2,
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.blueGrey,
              backgroundImage: AssetImage(userData[i].avatar),
            ),
            title: Text(
              userData[i].name,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(userData[i].message),
            trailing: Column(
              children: [
                Text(
                  userData[i].time,
                  style: TextStyle(fontSize: 12),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.green,
                  ),
                  child: Center(
                    child: Text(
                      "2",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
            onTap: () {
              Navigator.pushReplacementNamed(context, MyRoutes.chatroute,arguments: [userData[i].name,userData[i].avatar,userData[i].time,]);
            },
          ),
          Divider(
            height: 2,
          ),
        ],
      ),
    );

    // return FloatingActionButton(
    //   onPressed: () {},
    //   backgroundColor: Color(0xff075e54),
    //   foregroundColor: Colors.white,
    //   child: Icon(Icons.add_outlined),
    // );
  }
}
