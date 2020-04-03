
import 'package:corona_morroco/pages/about.dart';
import 'package:corona_morroco/pages/calls.dart';
import 'package:corona_morroco/pages/home.dart';
import 'package:corona_morroco/pages/protect.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';



class ShowPages extends StatefulWidget {
  @override
  _ShowPagesState createState() => _ShowPagesState();
}

class _ShowPagesState extends State<ShowPages> {
   GlobalKey _bottomNavigationKey = GlobalKey();
   
   final Home  _home = Home();
   final Calls _calls = new Calls();
   final ProtectSf _protectSf = new ProtectSf();
   final AboutDev _aboutDev = new AboutDev();
   Widget _showPage = Home();

   Widget _choosenPage(int index){
    // if(index == 0) return _home;
     if(index == 1) return _calls;
     if(index == 2) return _protectSf;
     if(index == 3) return _aboutDev;
     else {
       return Scaffold(
         backgroundColor: Colors.white,
         body: Container(
           padding: EdgeInsets.all(50),
           child:Center(child: Text("There's No Selected Page !!"))
         ),

       );
     }
   }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
          key: _bottomNavigationKey,
          index: 0,
          height: 50.0,
          items: <Widget>[
            Icon(Icons.insert_chart, size: 25,color: Colors.white, ),
            Icon(Icons.call, size: 25,color: Colors.white,),
            Icon(Icons.help, size: 25,color: Colors.white,),
            Icon(Icons.info, size: 25,color: Colors.white,),
            
            ],
          color: Colors.deepPurple[900],
          buttonBackgroundColor: Colors.deepPurple[900],
          backgroundColor: Colors.transparent,
          animationCurve: Curves.easeInOut,
          animationDuration: Duration(milliseconds: 600),
          onTap: (index) {
            if(index==0)
            {
              Navigator.pushReplacementNamed(context, "/");
            }
            else{
            setState(() {
              _showPage = _choosenPage(index);
            });
              }
              },
          
        ),
        body: Container(
          child: AnimatedContainer(
            
            curve: Curves.fastOutSlowIn,
            duration: Duration(milliseconds: 2000),
            child: _showPage
            ),
        ),
    );
  }
}




