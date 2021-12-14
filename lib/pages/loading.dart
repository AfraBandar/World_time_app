import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:world_time_app/services/world_time.dart';


class Loading extends StatefulWidget {


  @override
  _State createState() => _State();
}

class _State extends State<Loading> {

  String time1 = 'loading';//initial value until the getTime data is complete

  void setupWorldTime() async {
    WorldTime instance = WorldTime ('London','london.png','Europe/London');
    await instance.getTime();
    print(instance.time);
    
    setState(() {
      time1 = instance.time;
    });// to refresh the time variable after getting the data
    
  }//create an object instance to connect the getTime function to this page

  @override
  void initState() {
    super.initState();//super runs the inherted function that is being override then run the extra code
    //written inside the initstate
    setupWorldTime();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(50.0),
        child:Text(time1),
      ),
    );
  }
}
