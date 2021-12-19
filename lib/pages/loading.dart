import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:world_time_app/services/world_time.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {


  @override
  _State createState() => _State();
}

class _State extends State<Loading> {


  void setupWorldTime() async {
    WorldTime instance = WorldTime ('Riyadh','assets/','Asia/Riyadh');
    await instance.getTime();

     Navigator.pushReplacementNamed(context, '/home',arguments: {
     'location': instance.location,
     'flag':instance.flag,
       'time':instance.time,
       'isDayTime': instance.isDayTime,
    });//directs result to home page and removes the loading page from stack

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
      backgroundColor: Colors.blue[800],
      body: Center (
        child: SpinKitFadingCube(
          color: Colors.white,
          size: 50.0,
        ),
      ),
    );
  }
}
