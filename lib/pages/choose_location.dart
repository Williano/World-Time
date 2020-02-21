import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

  void getData() async{
    // simulate a network request for a username.
    String username = await Future.delayed(Duration(seconds: 3), () {
      return "yoshi" ;
    });

    // simulate a network request to get bio of the username.
    String bio = await Future.delayed(Duration(seconds: 2), () {
      return "vega, muscian, egg collection";
    });

    print("$username - $bio");
  }

  int counter = 0;


  @override
  void initState() {
    super.initState();

    getData();
    print("Hey wait");
    print("InitState Function run");
  }
  @override
  Widget build(BuildContext context) {
    print("Build Function run");
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text("Choose Location"),
        centerTitle: true,
        elevation: 0,
      ),
      body: RaisedButton(
        onPressed: () {
          setState(() {
            counter = counter + 1;
          });
        },
        child: Text("Counter is $counter"),
      ),
    );
  }
}
