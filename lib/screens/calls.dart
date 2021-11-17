import 'package:flutter/material.dart';
import 'package:whatsapp_clone/models/call_model.dart';

class Calls extends StatefulWidget {
  const Calls({Key? key}) : super(key: key);

  @override
  _CallsState createState() => _CallsState();
}

class _CallsState extends State<Calls> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: callData.length,
      itemBuilder: (context, i) => Column(
        children: [
          Divider(
            height: 2,
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.blueGrey,
              backgroundImage: AssetImage(callData[i].avatar),
            ),
            title: Text(
              callData[i].name,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Row(
              children: [
                callData[i].callType,
                SizedBox(width: 8),
                Text(
                  callData[i].time,
                  style: TextStyle(fontSize: 12),
                ),
              ],
            ),
            trailing: IconButton(
              icon: Icon(
                Icons.call,
                color: Theme.of(context).primaryColor,
              ),
              onPressed: () {},
            ),
            onTap: () {},
          ),
          Divider(
            height: 2,
          ),
        ],
      ),
    );
  }
}
