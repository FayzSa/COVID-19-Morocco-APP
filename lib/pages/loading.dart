import 'dart:async';

import 'package:flutter/material.dart';
import 'package:corona_morroco/services/mcovid.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
    FlutterLocalNotificationsPlugin();

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  
 

 

  String todayCases = "0"; 
  String allCases = "0"; 
  void setUpData() async{
  Mcovid mcovid = Mcovid(desc:"Hello");  
   await mcovid.getCases();
   print(" ERROR : ${mcovid.error}");

   if(mcovid.error !=null){
     
    mcovid.cases = "0";
    mcovid.activeCases = "0";
    mcovid.deaths = "0";
    mcovid.todayDeaths = "0";
    mcovid.todayCases = "0";
    mcovid.recoverds = "0";
    mcovid.excludes = "0";
    mcovid.error = "0";
    mcovid.regions = {};  
   }

   // send Data To Home Page
     Navigator.pushReplacementNamed(context, "/showPages",arguments:{

    'cases': mcovid.cases,
    'activeCases':mcovid.activeCases,
    'deaths': mcovid.deaths, 
    'todayDeaths':mcovid.todayDeaths,
    'todayCases':mcovid.todayCases,
    'recoverds':mcovid.recoverds,
    'excludes':mcovid.excludes,
    'error':mcovid.error,
    'regions':mcovid.regions,    
    
    
    });
    todayCases = mcovid.todayCases.toString();
    allCases = mcovid.cases.toString(); 
      _repeatNotification(todayCases);

  }
  
 Future<void> _repeatNotification(String cases) async {
    var androidPlatformChannelSpecifics = AndroidNotificationDetails(
        'repeating channel id',
        'repeating channel name',
        'repeating description');
    var iOSPlatformChannelSpecifics = IOSNotificationDetails();
    var platformChannelSpecifics = NotificationDetails(
        androidPlatformChannelSpecifics, iOSPlatformChannelSpecifics);
    await flutterLocalNotificationsPlugin.periodicallyShow(0, 'فيروس كورونا : تحديت الحالات الجديدة المصابة في المغرب',
        cases != "0" ? cases != "2" ? 'تسجيل $cases  حالة إصابة جديدة ليرتفع المجموع إلى $allCases' : "تسجيل $cases  حالتان مصابة جديدة ليرتفع المجموع إلى $allCases'" : " لم يتم تسجيل اي حالة الى حدود الساعة" ,
          RepeatInterval.Hourly,
          platformChannelSpecifics);
  }



//


//
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
var initializationSettingsAndroid = AndroidInitializationSettings('icon');
var initializationSettingsIOS = IOSInitializationSettings();
var initializationSettings = InitializationSettings(
initializationSettingsAndroid, initializationSettingsIOS);
flutterLocalNotificationsPlugin.initialize(initializationSettings);
    setUpData();
   
    
  
  

  }
  







  @override
  Widget build(BuildContext context) {





    return Scaffold(
      backgroundColor: Colors.deepPurple[900],
      body: Center(
        child: SpinKitChasingDots(
          color: Colors.white,
          size: 50.0,
        ),
        ),
    );
  }
}