import 'package:flutter/material.dart';
import 'package:world_time_app/pages/choose_location.dart';
import 'package:world_time_app/pages/home.dart';
import 'package:world_time_app/pages/loading.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/',//this overrides the base rout and assignes
                         // the home as the first page to load up
  routes: {
    '/': (context) => Loading(), //the values are functions that takes the context object
    //that keeps track where in the widget tree its currnetly is
    '/home' : (context) =>Home(),
    '/location': (context) => ChooseLocation(),
    //'/' is the base route the first one when we open the app
    // and the values for the routs are functions that take in
    // the object as an argument that keeps track of where we are
    // in the tree
},
));

