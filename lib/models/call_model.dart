import 'package:flutter/material.dart';

class CallModel {
  late final String name;
  final Icon callType;
  late final String time;
  late final String avatar;

  CallModel({
    required this.name,
    required this.callType,
    required this.time,
    required this.avatar,
  });

  static Icon callRecieved = Icon(
    Icons.call_received,
    size: 18,
    color: Colors.green,
  );
  static Icon callMissed = Icon(
    Icons.call_missed,
    size: 18,
    color: Colors.red,
  );
}

List<CallModel> callData = [
  CallModel(
      name: "Harsh Jain",
      callType: CallModel.callMissed,
      time: "10:10 pm",
      avatar: "assets/images/krishna.jpg"),
  CallModel(
    name: "Jheel Jain",
    callType: CallModel.callRecieved,
    time: "8:45 pm",
    avatar: "assets/images/vasudev.jpg",
  ),
  CallModel(
    name: "Ironman",
    time: "6:30 am",
    callType: CallModel.callMissed,
    avatar: "assets/images/ganesha.jpg",
  ),
  CallModel(
      name: "Doctor Strange",
      callType: CallModel.callRecieved,
      time: "8:56 am",
      avatar: "assets/images/other.jpg"),
  CallModel(
      name: "Harsh Jain",
      callType: CallModel.callMissed,
      time: "10:10 pm",
      avatar: "assets/images/krishna.jpg"),
  CallModel(
    name: "Jheel Jain",
    callType: CallModel.callRecieved,
    time: "8:45 pm",
    avatar: "assets/images/vasudev.jpg",
  ),
  CallModel(
    name: "Ironman",
    callType: CallModel.callMissed,
    time: "6:30 am",
    avatar: "assets/images/ganesha.jpg",
  ),
  CallModel(
      name: "Doctor Strange",
      callType: CallModel.callRecieved,
      time: "8:56 am",
      avatar: "assets/images/other.jpg"),
  CallModel(
      name: "Harsh Jain",
      callType: CallModel.callMissed,
      time: "10:10 pm",
      avatar: "assets/images/krishna.jpg"),
  CallModel(
    name: "Jheel Jain",
    callType: CallModel.callRecieved,
    time: "8:45 pm",
    avatar: "assets/images/vasudev.jpg",
  ),
  CallModel(
    name: "Ironman",
    callType: CallModel.callMissed,
    time: "6:30 am",
    avatar: "assets/images/ganesha.jpg",
  ),
  CallModel(
      name: "Doctor Strange",
      callType: CallModel.callRecieved,
      time: "8:56 am",
      avatar: "assets/images/other.jpg"),
  CallModel(
      name: "Harsh Jain",
      callType: CallModel.callMissed,
      time: "10:10 pm",
      avatar: "assets/images/krishna.jpg"),
  CallModel(
    name: "Jheel Jain",
    callType: CallModel.callRecieved,
    time: "8:45 pm",
    avatar: "assets/images/vasudev.jpg",
  ),
  CallModel(
    name: "Ironman",
    callType: CallModel.callMissed,
    time: "6:30 am",
    avatar: "assets/images/ganesha.jpg",
  ),
  CallModel(
      name: "Doctor Strange",
      callType: CallModel.callRecieved,
      time: "8:56 am",
      avatar: "assets/images/other.jpg"),
  CallModel(
      name: "Harsh Jain",
      callType: CallModel.callMissed,
      time: "10:10 pm",
      avatar: "assets/images/krishna.jpg"),
  CallModel(
    name: "Jheel Jain",
    callType: CallModel.callRecieved,
    time: "8:45 pm",
    avatar: "assets/images/vasudev.jpg",
  ),
  CallModel(
    name: "Ironman",
    callType: CallModel.callMissed,
    time: "6:30 am",
    avatar: "assets/images/ganesha.jpg",
  ),
  CallModel(
      name: "Doctor Strange",
      callType: CallModel.callRecieved,
      time: "8:56 am",
      avatar: "assets/images/other.jpg"),
];
