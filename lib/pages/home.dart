import 'package:flutter/material.dart';

class Home extends StatefulWidget {

  @override
  _State createState() => _State();
}

class _State extends State<Home> {

   Map data = {};

  @override
  Widget build(BuildContext context) {

    data = ModalRoute.of(context)?.settings.arguments as Map;
    print(data);

    //set background image
       String bgImage = data['isDayTime'] ? 'daytime.png' : 'nighttime.png' ;
       Color? bgColor = data['isDayTime'] ? Colors.pinkAccent[100] : Colors.black87;

    return Scaffold(
      backgroundColor:bgColor,
      body: SafeArea(
          child:Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image : AssetImage('assets/$bgImage'),
                fit: BoxFit.cover,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 120.0, 0,0),
              child: Column(
                children: [
                  FlatButton.icon(
                      onPressed: (){
                        Navigator.pushNamed(context, '/location');
                      },
                      icon: Icon(
                            Icons.edit_location,
                            color: Colors.grey[300],

                        ),
                      label: Text(
                          'Edit location',
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.white,
                        ),
                      ),
                  ),
                  SizedBox(height: 25.0,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        data ['location'],
                        style: TextStyle(
                          fontSize: 40.0,
                          letterSpacing: 2.0,
                          color: Colors.white,
                        )
                      )
                    ],
                  ),
                  SizedBox(height:20.0),
                  Text(
                    data['time'],
                    style: TextStyle(
                      fontSize: 30.0,
                      color: Colors.white,
                    ),
                  )
                ],

              ),
            ),
          )
      ),
    );
  }
}
