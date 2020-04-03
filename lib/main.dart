import 'package:corona_morroco/pages/about.dart';
import 'package:corona_morroco/pages/calls.dart';
import 'package:corona_morroco/pages/protect.dart';
import 'package:corona_morroco/pages/refreshing.dart';
import 'package:corona_morroco/pages/showP.dart';
import 'package:flutter/material.dart';
import 'package:corona_morroco/pages/loading.dart';
import 'package:corona_morroco/pages/home.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();


runApp(MaterialApp(
  title: "COVID-19 Morocco",
  color: Colors.deepPurple[900],
  theme: ThemeData(
 
    primaryColor: Colors.deepPurple[900],
    accentColor: Colors.deepPurple[700],
    


    // Define the default font family.
    fontFamily: 'Georgia',

    // Define the default TextTheme. Use this to specify the default
    // text styling for headlines, titles, bodies of text, and more.
    textTheme: TextTheme(
      headline: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold , color: Colors.deepPurple[900]),
      title: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic , color: Colors.deepPurple[900]),
      body1: TextStyle(fontSize: 14.0, fontFamily: 'Hind' , color: Colors.deepPurple[900]),
    ),
  ),
  
  debugShowCheckedModeBanner: false,
  initialRoute: '/',
  routes: {
    '/' : (context) => Loading(),
    '/home' : (context) => Home(),
    '/refreshing' : (context) => Refreshing(),
    '/calls' : (context) => Calls(),
    '/about' : (context) => AboutDev(),
    '/protectsf' : (context) => ProtectSf(),
    '/showPages':(context) => ShowPages()
    
  },
));

} 

