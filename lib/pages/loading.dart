import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Loading extends StatefulWidget {


  @override
  _State createState() => _State();
}

class _State extends State<Loading> {
  void getTime() async {
    //get response
   Response response = await get(Uri.parse('http://worldtimeapi.org/api/timezone/Europe/London'));
   Map data =  jsonDecode(response.body);

   //get proprties from data
    String datetime = data['utc_datetime'];
    String offset = data['utc_offset'].substring(1,3);//create a sub string from the offset string to only have the number and not the + sign
    //print(offset);
    //print(datetime);

    //create a datetime object
    DateTime now = DateTime.parse(datetime);//converts the time to a date time object
    now = now.add(Duration(hours:int.parse(offset)));//adds the offset that has been cut short to only the number
    //and then converted to an int
    print(now);

  }

  @override
  void initState() {
    super.initState();//super runs the inherted function that is being override then run the extra code
    //written inside the initstate
    getTime();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('LOADING SCREEN'),
    );
  }
}
