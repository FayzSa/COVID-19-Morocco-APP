

import 'package:flutter/material.dart';
import 'package:expansion_tile_card/expansion_tile_card.dart';
class ProtectSf extends StatefulWidget {
  @override
  _ProtectSfState createState() => _ProtectSfState();
}

class _ProtectSfState extends State<ProtectSf> {

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
                    child: drop(context: context),
                      ),
      ),
      );
      
    
  }
}


 





Widget drop({context , title , list})
{

  return Column(
    children: <Widget>[


      Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0 , vertical: 10),
              child: ExpansionTileCard(
                
               // leading: CircleAvatar(child: Text('$index')),
                title: Text('شنو هو كوفيد 19 او فيروس كورونا ؟',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize:20
                             ),
                  textAlign: TextAlign.end,
                ),
                onExpansionChanged: (i){
                 print("object");
                },
                turnsCurve: Curves.easeInOutCubic,
                children: <Widget>[
                  Divider(
                    thickness: 1.0,
                    height: 1.0,
                  ),
                  Image.asset("assets/2.jpg",
                  fit: BoxFit.cover,
                  
                  ),
                  
                ],
              ),
            ),
















      Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0 , vertical: 10),
              child: ExpansionTileCard(
                
               // leading: CircleAvatar(child: Text('$index')),
                title: Text('أشناهيا أعراض فيروس كورونا ؟',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize:20
                             ),
                  textAlign: TextAlign.end,
                ),
                onExpansionChanged: (i){
                 print("object");
                },
                turnsCurve: Curves.easeInOutCubic,
                children: <Widget>[
                  Divider(
                    thickness: 1.0,
                    height: 1.0,
                  ),
                  Image.asset("assets/3.jpg",
                  fit: BoxFit.cover,
                  
                  ),
                  
                ],
              ),
            ),




      Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0 , vertical: 10),
              child: ExpansionTileCard(
                
               // leading: CircleAvatar(child: Text('$index')),
                title: Text(' كيفاش ممكن نحمي نفسي من الاصابة بفيروس كورونا ؟',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize:20
                             ),
                  textAlign: TextAlign.end,
                ),
                onExpansionChanged: (i){
                 print("object");
                },
                turnsCurve: Curves.easeInOutCubic,
                children: <Widget>[
                  Divider(
                    thickness: 1.0,
                    height: 1.0,
                  ),
                  Image.asset("assets/4.jpg",
                  fit: BoxFit.cover,
                  
                  ),
                  
                ],
              ),
            ),








 Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0 , vertical: 10),
              child: ExpansionTileCard(
                
               // leading: CircleAvatar(child: Text('$index')),
                title: Text(' اش غا ندير الى جلست فالدار ؟',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize:20
                             ),
                  textAlign: TextAlign.end,
                ),
                onExpansionChanged: (i){
                 print("object");
                },
                turnsCurve: Curves.easeInOutCubic,
                children: <Widget>[
                  Divider(
                    thickness: 1.0,
                    height: 1.0,
                  ),
                  Image.asset("assets/5.jpg",
                  fit: BoxFit.cover,
                  
                  ),
                  
                ],
              ),
            ),









 Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0 , vertical: 10),
              child: ExpansionTileCard(
                
               // leading: CircleAvatar(child: Text('$index')),
                title: Text(' شحال كايبقا الفيروس فوق الاسطح ؟',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize:20
                             ),
                  textAlign: TextAlign.end,
                ),
                onExpansionChanged: (i){
                 print("object");
                },
                turnsCurve: Curves.easeInOutCubic,
                children: <Widget>[
                  Divider(
                    thickness: 1.0,
                    height: 1.0,
                  ),
                  Image.asset("assets/6.jpg",
                  fit: BoxFit.cover,
                  
                  ),
                  
                ],
              ),
            ),







 Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0 , vertical: 10),
              child: ExpansionTileCard(
                
               // leading: CircleAvatar(child: Text('$index')),
                title: Text(' شنو خصني ندير فحالة قصت شي حاجة مشبوهة ؟',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize:20
                             ),
                  textAlign: TextAlign.end,
                ),
                onExpansionChanged: (i){
                 print("object");
                },
                turnsCurve: Curves.easeInOutCubic,
                children: <Widget>[
                  Divider(
                    thickness: 1.0,
                    height: 1.0,
                  ),
                  Image.asset("assets/7.jpg",
                  fit: BoxFit.cover,
                  
                  ),
                  
                ],
              ),
            ),



 Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0 , vertical: 10),
              child: ExpansionTileCard(
                
               // leading: CircleAvatar(child: Text('$index')),
                title: Text('الفئة لي كايهدها الفيروس أكثر ؟',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize:20
                             ),
                  textAlign: TextAlign.end,
                ),
                onExpansionChanged: (i){
                 print("object");
                },
                turnsCurve: Curves.easeInOutCubic,
                children: <Widget>[
                  Divider(
                    thickness: 1.0,
                    height: 1.0,
                  ),
                  Image.asset("assets/8.jpg",
                  fit: BoxFit.cover,
                  
                  ),
                  
                ],
              ),
            ),




 Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0 , vertical: 10),
              child: ExpansionTileCard(
                
               // leading: CircleAvatar(child: Text('$index')),
                title: Text('كيفاش يمكن ليا نحافض على التكامل الغدائي ديالي ؟',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize:20
                             ),
                  textAlign: TextAlign.end,
                ),
                onExpansionChanged: (i){
                 print("object");
                },
                turnsCurve: Curves.easeInOutCubic,
                children: <Widget>[
                  Divider(
                    thickness: 1.0,
                    height: 1.0,
                  ),
                  Image.asset("assets/9.jpg",
                  fit: BoxFit.cover,
                  
                  ),
                  
                ],
              ),
            ),



    ],
  );
}


