import 'package:http/http.dart' ;
import 'dart:convert';
import 'package:intl/intl.dart';

class WorldTime{
  late String location; //location name for the ui
  late String time; //the time in the location
  late String flag; // a url to an asset flag icon
  late String url; //location url for api endpoint exp ( /Europe/london)

  WorldTime (String location, String flag, String url) {
    this.location = location;
    this.flag = flag;
    this.url=url;
  }//constructer

  Future <void> getTime() async {

    try {
      //get response
      Response response = await get(Uri.parse('http://worldtimeapi.org/api/timezone/$url')); //getting the data from the json link then storing the response in a response variable
      Map data =  jsonDecode(response.body); //pass the data from the response and then from the body of the response wich is where the actual data is stored

      //get proprties from data
      String datetime = data['utc_datetime'];
      String offset = data['utc_offset'].substring(1,3);//create a sub string from the offset string to only have the number and not the + sign
      //print(offset);
      //print(datetime);

      //create a datetime object
      DateTime now = DateTime.parse(datetime);//converts the time to a date time object
      now = now.add(Duration(hours:int.parse(offset)));//adds the offset that has been cut short to only the number
      //and then converted to an int

      //set time property
      time = DateFormat.jm().format(now); //convert the datetime object into a string then store it in the time variable

    }
    catch (e) {
      print ('caught error: $e');
      time = 'could not get time data';
    }

  }

}
