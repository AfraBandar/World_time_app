import 'package:flutter/material.dart';
import 'package:world_time_app/services/world_time.dart';
class ChooseLocation extends StatefulWidget {

  @override
  _State createState() => _State();
}

class _State extends State<ChooseLocation> {
    List <WorldTime> locations = [
      WorldTime ('Riyadh','assets/riyadh.png','Asia/Riyadh'),
      WorldTime ('Cairo','assets/cairo.png','Africa/Cairo'),
      WorldTime ('Tunis','assets/tunis.png','Africa/Tunis'),
      WorldTime ('Lagos','assets/lagos.png','Africa/Lagos'),
      WorldTime ('Los Angeles','assets/us.png','America/Los_Angeles'),
      WorldTime ('New York','assets/us.png','America/New_York'),
      WorldTime ('Baghdad','assets/baghdad.png','Asia/Baghdad'),
      WorldTime ('Bangkok','assets/bangkok.png','Asia/Bangkok'),
      WorldTime ('Beirut','assets/beirut.png','Asia/Beirut'),
      WorldTime ('Dubai','assets/dubai.png','Asia/Dubai'),
      WorldTime ('Hong Kong','assets/hong_kong.png','Asia/Hong_Kong'),
      WorldTime ('Gaza','assets/gaza.png','Asia/Gaza'),
      WorldTime ('Qatar','assets/qatar.png','Asia/Qatar'),
      WorldTime ('Jakarta','assets/jakarta.png','Asia/Jakarta'),
      WorldTime ('Seoul','assets/seoul.png','Asia/Seoul'),
      WorldTime ('Tokyo','assets/tokyo.png','Asia/Tokyo'),
      WorldTime ('Sydney','assets/sydney.png','Australia/Sydney'),
      WorldTime ('Istanbul','assets/istanbul.png','Europe/Istanbul'),
      WorldTime ('London','assets/london.png','Europe/London'),
      WorldTime ('Moscow','assets/moscow.png','Europe/Moscow'),
      WorldTime ('Paris','assets/paris.png','Europe/Paris'),
      WorldTime ('Rome','assets/rome.png','Europe/Rome'),
      WorldTime ('Berlin','assets/berlin.png','Europe/Berlin'),
    ];

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
