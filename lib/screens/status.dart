import 'package:flutter/material.dart';
import 'package:whatsapp_clone/models/status_model.dart';

class Status extends StatefulWidget {
  const Status({Key? key}) : super(key: key);

  @override
  _StatusState createState() => _StatusState();
}

class _StatusState extends State<Status> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Stack(
            children: [
              CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage("assets/images/krishna.jpg"),
                backgroundColor: Colors.grey,
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    height: 24,
                    width: 24,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: IconButton(
                        icon: Icon(
                          Icons.add,
                          size: 15,
                          color: Colors.white,
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          title: Text("My Status"),
          subtitle: Text(
            "Tap to add status update",
          ),
          trailing: Icon(Icons.more_horiz, color: Colors.grey),
        ),
        Divider(
          height: 10,
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 30,
          color: Colors.grey[200],
          child: Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Recent updates",
                style: TextStyle(color: Colors.black54, fontSize: 15),
              ),
            ),
          ),
        ),
        Flexible(
          child: ListView.builder(
            itemCount: statusData.length,
            itemBuilder: (context, i) => Column(
              children: [
                Divider(
                  height: 2,
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.blueGrey,
                    backgroundImage: AssetImage(statusData[i].avatar),
                  ),
                  title: Text(
                    statusData[i].name,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    statusData[i].time,
                    style: TextStyle(fontSize: 12),
                  ),
                  onTap: () {},
                ),
                Divider(
                  height: 2,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
