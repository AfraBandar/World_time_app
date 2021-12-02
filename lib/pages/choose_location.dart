import 'package:flutter/material.dart';
class ChooseLocation extends StatefulWidget {

  @override
  _State createState() => _State();
}

class _State extends State<ChooseLocation> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Choose a location'),
        centerTitle: true,
        elevation: 0,
      ),
      body: RaisedButton(
          onPressed: (){}
          ),
    );
  }
}
