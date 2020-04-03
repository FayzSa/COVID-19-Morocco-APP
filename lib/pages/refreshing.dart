import 'package:corona_morroco/services/mcovid.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
class Refreshing extends StatefulWidget {
  @override
  _RefreshingState createState() => _RefreshingState();
}

class _RefreshingState extends State<Refreshing> {
  int index = 0;
void refreshing () async {
Map dataLoading = ModalRoute.of(context).settings.arguments;
 index = dataLoading['index'];

   Mcovid mcovid = Mcovid(desc:"Hello");  
   await mcovid.getCases();
   print(index);
   String path = '/home';
   // send Data To Home Page
   if(index == 1) path = '/calls';
   if(index == 2) path = '/protectsf';
   if(index == 3) path = '/about';
     Navigator.pushReplacementNamed(context, path,arguments:{

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
}


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    refreshing();
  }
  @override
  Widget build(BuildContext context) {
    refreshing();
    return Scaffold( backgroundColor: Colors.deepPurple[900],
      body: Center(
        child: SpinKitThreeBounce(
          color: Colors.white,
          size: 50.0,
        ),
        )
        );
  }
}