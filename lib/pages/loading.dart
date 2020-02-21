import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {


  void getTime() async{

      // Make the request to the time api.
    Response response = await get("http://worldtimeapi.org/api/timezone/Europe/London");
    Map data = jsonDecode(response.body);
//    print(data);

    // get properties from data
    String dataTime = data["datetime"];
    String offset = data["utc_offset"].substring(1, 3);
//    print(dataTime);
//    print(offset);

    // Create DateTime object.
    DateTime now = DateTime.parse(dataTime);
    now = now.add(Duration(hours: int.parse(offset)));
    
  }

  @override
  void initState() {
    super.initState();

    getTime();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("Loading screen"),
    );
  }
}
