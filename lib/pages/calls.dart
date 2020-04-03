import 'dart:async';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';

class Calls extends StatefulWidget {
  @override
  _CallsState createState() => _CallsState();
}

 Future<void> launched;
  String phone = '';

  Future<void> _makePhoneCall(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

class _CallsState extends State<Calls> {








  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[900],
        title:Text("بقى_فدارك#", style:TextStyle(
          fontSize:20,
          letterSpacing:2.0,
          fontWeight: FontWeight.w700,
          color : Colors.white
        ),
        
        ),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        
              child: SafeArea(
                child: Container(
            child:Column(
              children: <Widget>[
                SizedBox(height: 40),
                covCard(context: context , number: "0801000180" , desc: "مركز مكافحة التسمم" , icon:"assets/toxic.png"),
                 SizedBox(height: 30),
                covCard(context: context , number: "0522262062" , desc: "معهد باستور" , icon:"assets/institut.png"),
                 SizedBox(height: 30),
                covCard(context: context , number: "0522989898" , desc: "أطباء المغرب" , icon:"assets/doctor.png"),
                 SizedBox(height: 30),
                covCard(context: context , number: '150' , desc: "إسعاف" , icon:"assets/ambulance.png"),
                 SizedBox(height: 30),
                covCard(context: context , number: '190' , desc: "الشرطة" , icon:"assets/police.png"),
                 SizedBox(height: 30),
                covCard(context: context , number: '160' , desc: "إستفسارات " , icon:"assets/call.png"),
              ],
            ),
          ),
        ),
      ),
      
    );
  }
}


 
Widget covCard({ context,  icon ,  desc ,  number}){
   return Transform.translate(
     offset: Offset(0, -20),
        child: Container(
       height: 170,
       margin: EdgeInsets.only(left: 20 , top: 10, right: 20 , bottom: 10),
       decoration: BoxDecoration(
         
         color:Colors.white,
         borderRadius: BorderRadius.circular(13.0),
         
         boxShadow: [BoxShadow(
           color: Colors.grey[350],
           blurRadius: 10.0,
           offset: Offset(10, 10),
         )],
       ),
       child: Padding(
         padding: EdgeInsets.only(left:20,right: 20 ,top: 0),
         child: Column(
           
           mainAxisAlignment: MainAxisAlignment.center,
           crossAxisAlignment: CrossAxisAlignment.start,
           children: <Widget>[
             
             Center(child:CircleAvatar(
               backgroundColor: Colors.white,
    child: ClipOval(
      
        child: Image.asset(
            icon,
            width: 120,
            fit: BoxFit.fill
            
        ),
    ),
    radius: 30,
),),
             Center(child: Text(desc,
             style: TextStyle(
               fontSize: 20,
               fontWeight: FontWeight.w300,
              
             ),
             )),
             Center(child: Text( 
               
               
               number,
             style: TextStyle(
               color: Colors.red[400],
               fontSize: 18,
               fontWeight: FontWeight.w700,
             ),
             
             
             )
             ),
              Center(
               child:FlatButton(onPressed: (){
                
                   phone = "$number";
                   launched = _makePhoneCall('tel:$phone');
                
               }, child: Text("اتصل", style: TextStyle(
                 color: Colors.deepPurple[900],
                 fontSize: 18,
                 fontWeight: FontWeight.w700,
                 letterSpacing: 2.0,
               ),
               )
               )
             ),
            
           ],
           
           ),
         ),
     ),
   );
 }
