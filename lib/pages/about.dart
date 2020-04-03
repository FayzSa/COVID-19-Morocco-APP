
import 'package:flutter/material.dart';

class AboutDev extends StatefulWidget {
  @override
  _AboutDevState createState() => _AboutDevState();
}

class _AboutDevState extends State<AboutDev> {

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
                Container(
      
       margin: EdgeInsets.only(left: 20 , top: 10, right: 20 , bottom: 10),
       decoration: BoxDecoration(
                   
                   color:Colors.white,
                   borderRadius: BorderRadius.circular(13.0),
                   
       ),

       child: Column(
         children: <Widget>[



           Row(
             
             mainAxisAlignment: MainAxisAlignment.center,
             children: <Widget>[
               Column(
                 mainAxisAlignment: MainAxisAlignment.start,
                 children: <Widget>[
                   Image.asset(
                 "assets/dev.png",
                 width: 300,
                 fit: BoxFit.fill      
                   ),
                   Text(
                     "عن المطور ",
                     style: TextStyle(
                 fontWeight: FontWeight.w600,
                 fontSize: 23,
                     ),
                     textAlign: TextAlign.center,
                     ),
                     Text(
                     "الاسم : فايز صابير ",
                     style: TextStyle(
                 fontWeight: FontWeight.w300,
                 fontSize: 18,
                 color: Colors.black,
                     ),
                     textAlign: TextAlign.center,
                     ),
                     Text(
                     "Fayz.sabir@gmail.com : البريد الالكتروني   ",
                     style: TextStyle(
                 fontWeight: FontWeight.w300,
                 fontSize: 18,
                 color: Colors.black,
                     ),
                     textAlign: TextAlign.center,
                     ),

                     
                     Text(
                     "فايسبوك : فايز صابير  ",
                     
                     style: TextStyle(
                 fontWeight: FontWeight.w300,
                 fontSize: 18,
                 color: Colors.black,
                     ),
                     textAlign: TextAlign.center,
                     ),

                 ],
               ),
                

             ],
             
             ),
             Column(
               children: <Widget>[
                  Column(
             mainAxisAlignment: MainAxisAlignment.center,
             children: <Widget>[
               Image.asset(
                   "assets/c.png",
                   width: 300,
                   fit: BoxFit.fill      
               ),
               Text(
                 "المصدر ",
                 style: TextStyle(
                   fontWeight: FontWeight.w600,
                   fontSize: 23,
                 ),
                 textAlign: TextAlign.right,
                 ),
                 Text(
                 "جميع المعلومات عن الحالات  المصابة من وزارة الصحة المغربية ",
                 style: TextStyle(
                   fontWeight: FontWeight.w300,
                   fontSize: 18,
                   color: Colors.black,
                 ),
                 textAlign: TextAlign.center,
                 ),
                 Text(
                 "التطبيق غير تابع لوزارة الصحة ",
                 style: TextStyle(
                   fontWeight: FontWeight.w300,
                   fontSize: 18,
                   color: Colors.black,
                 ),
                 textAlign: TextAlign.center,
                 ),

                 Text(
                 "صور التوعية تابعة لمجموعة المبرمجين المغاربة و mcovid.ma : موقع ",
                 style: TextStyle(
                   fontWeight: FontWeight.w300,
                   fontSize: 18,
                   color: Colors.black,
                 ),
                 textAlign: TextAlign.center,
                 ),

             ],
           ),
               ],
             )
         ],
       ),
     ),







              ],
            ),
          ),
        ),
      ),
      
    );
  }
}


