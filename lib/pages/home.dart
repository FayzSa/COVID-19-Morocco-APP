import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

  final Color barBackgroundColor = Colors.white24;
  final Duration animDuration = Duration(milliseconds: 250);

  int touchedIndex;

  bool isPlaying = false;

class Home extends StatefulWidget {


  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
 // int _page = 0;


void ref() {
  Timer.periodic(Duration(minutes: 5), (timer) {
    Navigator.pushReplacementNamed(context, "/");
   });

  
}


@override
  void initState() {
    super.initState();
        ref();
  }


Map dataLoading = {};
Map<String, dynamic> regions = {};
 String x = "";






  @override
  Widget build(BuildContext context) {
    

      dataLoading = 
      dataLoading.isNotEmpty ? Navigator.pushReplacementNamed(context, "/"):
      ModalRoute.of(context).settings.arguments;
      regions = dataLoading['regions'];
      print(dataLoading["error"]);
      
      
      
      int bm = 0;
      int casa =0;
      int fesmk =0;
      int goulm =0;
      int raba =0;
      int sous = 0;
      int tethouc  = 0;
      int kech = 0;
      int ori= 0; 
      int dakhala = 0;
      int draa = 0;
      int layou = 0; 
      if(dataLoading['error']=="0" || regions.isEmpty){
       bm = 0;
       casa =0;
       fesmk =0;
       goulm =0;
       raba =0;
       sous = 0;
       tethouc  = 0;
       kech = 0; 
       ori= 0; 
       dakhala = 0;
       draa = 0;
       layou = 0; 
         
      }
      else
      { 

      bm = regions["BeniMellal"];
      casa = regions["Casa"];
      fesmk = regions["FesMkns"];
      goulm = regions["Goulm"];
      kech = regions["KechAsfi"];
      raba = regions["Rabat"];
      sous = regions["sousMasa"];
      tethouc  = regions["Tanger"];
      ori = regions["Oriental"]; 
      draa = regions["DraaTaf"];
      dakhala = regions["Dakhala"];
      layou = regions["Layoun"]; 
      
}



     
    return Container(
      child: SingleChildScrollView(
         child: Column(
           children: <Widget>[
             Container(
               height:200,
               width:double.infinity,
               padding: EdgeInsets.only(left: 25, right: 25, top:60),
               
               decoration: BoxDecoration(
                
                 color:Colors.deepPurple[900],
                 borderRadius: BorderRadius.only(
                   bottomLeft: Radius.circular(100),
                   bottomRight: Radius.circular(100)
                 )
               ),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.center,
                 children: <Widget>[
                   Text(    
                 " مستجدات فيروس كورونا في المغرب",
                 style: TextStyle(
                   fontWeight: FontWeight.w100,
                   fontSize: 20.0,
                   color: Colors.white,
                 ),
                
                   ),
                   
                 ],
                 ),
             ),
             Transform.translate(
               offset: Offset(0,-60),
                child: Container(
           
                 margin: EdgeInsets.only(left:25,right:25),
                       height: 380,
                       width:400,
                       decoration: BoxDecoration(
                         boxShadow: [BoxShadow(
                           color :Colors.grey[400],
                           blurRadius: 10.0,
                           offset: Offset(0 , 10.0),
                         )],
                         color: Colors.white,
                         borderRadius: BorderRadius.all(Radius.circular(25)),
                       ),
                     child: Column(
                       crossAxisAlignment: CrossAxisAlignment.center,
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: <Widget>[
             

        AspectRatio(
      aspectRatio: 1,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
        color: Colors.deepPurple[900],
        child: Stack(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(16),
              child: Column(
               crossAxisAlignment: CrossAxisAlignment.stretch,
               mainAxisAlignment: MainAxisAlignment.center,
               mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Text(
                    'إحصائيات',
                    style: TextStyle(
                        color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    'مواقع تواجد الفيروس في المغرب حسب الجهات',
                    style: TextStyle(
                        color: Colors.white54, fontSize: 16, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center
                  ),
                  const SizedBox(
                    height: 38,
                  ),
                  Expanded(
                    flex: 6,
                    child: BarChart(
                      isPlaying ? randomData() : mainBarData(benimellal: bm.toDouble(),dakhla: dakhala.toDouble(),draa: draa.toDouble(),fes: fesmk.toDouble(),casa: casa.toDouble(),kech: kech.toDouble(),laayoun: layou.toDouble(),glm: goulm.toDouble(),ori: ori.toDouble(),rabat: raba.toDouble(),sous: sous.toDouble(),tan: tethouc.toDouble()),
                      swapAnimationDuration: animDuration,
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.topRight,
             
            )
          ],
        ),
      ),
    ),

                       ],
                     ),
                     ),
                     
             ),
             
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                covCard(number:  dataLoading['cases'],context: context, desc: "الحالات المؤكدة" ,textColor: Colors.grey[700],icon: 'assets/all.jpeg'),
                covCard(number: dataLoading['activeCases'],context: context, desc: "المصابون" ,textColor: Colors.grey[700],icon: 'assets/now.png'),
              ],
            ),
              Row(

              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                covCard(number:dataLoading['recoverds'],context: context, desc: "المتعافون" ,textColor: Colors.green ,icon: 'assets/recoverd.jpg'),
                covCard(number:dataLoading['deaths'],context: context, desc: "المتوفون" ,textColor: Colors.red[900],icon: 'assets/death.jpg'),
              ],
            ),
                          Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                covCard(number:dataLoading['todayCases'],context: context, desc: "حالات اليوم" ,textColor: Colors.grey[700] ,icon: 'assets/todayCases.jpg'),
                covCard(number:dataLoading['todayDeaths'],context: context, desc: "وفايات اليوم" ,textColor: Colors.red[900],icon: 'assets/todaysDeath.jpg'),
              ],
            ),
                          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                covCard(number:dataLoading['excludes'],context: context, desc: "الحالات المستبعدة" ,textColor: Colors.green ,icon: 'assets/exclude.jpg'),
                
              ],
            ),
            

              MaterialButton(child: Text("تحديث",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                letterSpacing: 2.0,

              ),),
              minWidth: 200,
              height: 50,
                onPressed: (){
                  Navigator.pushReplacementNamed(context,"/");
                },
                shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(18.0),
                
                ),
                color: Colors.deepPurple[900],
                textColor: Colors.white,
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                splashColor: Colors.purple[700],
              ),
              SizedBox(height: 10.0),
              Text("التحديث الألي يكون كل 5 دقائق *" , style: TextStyle(
                color : Colors.red[300],
                fontSize:8,
              ),
              
              ),
              SizedBox(height: 10.0,)
           ],
         ),
      ),     
    );
  }
}

 Widget covCard({ context,  icon ,  desc ,  number ,textColor}){
   return Expanded(
        flex:4,
        child: Container(
         width: 160,
         height: 160,
         margin: EdgeInsets.only(left: 20 , top: 0 , right: 20 , bottom: 10),
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
      radius: 40,
),),
            Center(child: Text(desc,
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w300,
             
            ),
            )),
            Center(child: Text( 
              
              number,
            style: TextStyle(
              color: textColor,
              fontSize: 15,
              fontWeight: FontWeight.w700,
            ),
            )),
          ],
          
          ),
        ),
       ),
   );


   
 }


BarChartGroupData makeGroupData(
    int x,
    double y, {
    bool isTouched = false,
    Color barColor = Colors.white,
    double width = 20,
    List<int> showTooltips = const [],
  }) {
    return BarChartGroupData(
      x: x,
      barRods: [
        BarChartRodData(
          y: isTouched ? y + 1 : y,
          color: isTouched ? Colors.yellow : barColor,
          width: width,
          backDrawRodData: BackgroundBarChartRodData(
            show: true,
            y: 10,
            color: barBackgroundColor,
          ),
        ),
      ],
      showingTooltipIndicators: showTooltips,
    );
  }

  List<BarChartGroupData> showingGroups({casa , rabat , laayoun , dakhla , benimellal , fes, kech , draa,ori,sous,glm,tan }) => List.generate(12, (i) {
        switch (i) {
          case 0:
            return makeGroupData(0, casa, isTouched: i == touchedIndex);
          case 1:
            return makeGroupData(1, rabat, isTouched: i == touchedIndex);
          case 2:
            return makeGroupData(2, sous, isTouched: i == touchedIndex);
          case 3:
            return makeGroupData(3, tan, isTouched: i == touchedIndex);
          case 4:
            return makeGroupData(4, fes, isTouched: i == touchedIndex);
          case 5:
            return makeGroupData(5, draa, isTouched: i == touchedIndex);
          case 6:
            return makeGroupData(6, benimellal, isTouched: i == touchedIndex);
            case 7:
            return makeGroupData(7, dakhla, isTouched: i == touchedIndex);
            case 8:
            return makeGroupData(8, laayoun, isTouched: i == touchedIndex);
            case 9:
            return makeGroupData(9, kech, isTouched: i == touchedIndex);
            case 10:
            return makeGroupData(10, ori, isTouched: i == touchedIndex);
            case 11:
            return makeGroupData(11, glm, isTouched: i == touchedIndex);
          default:
            return null;
        }
      });

  BarChartData mainBarData({casa , rabat , laayoun , dakhla , benimellal , fes, kech , draa,ori,sous,glm,tan }) {
    return BarChartData(
      barTouchData: BarTouchData(
        touchTooltipData: BarTouchTooltipData(
            tooltipBgColor: Colors.blueGrey,
            getTooltipItem: (group, groupIndex, rod, rodIndex) {
              String reg;
              switch (group.x.toInt()) {
                case 0:
                  reg = 'الدار البيضاء سطات';
                  break;
                case 1:
                  reg = 'الرباط سلا القنيطرة';
                  break;
                case 2:
                  reg = 'سوس ماسة';
                  break;
                case 3:
                  reg = 'طنجة تطوان الحسيمة';
                  break;
                case 4:
                  reg = 'فاس مكناس';
                  break;
                case 5:
                  reg = 'درعة تافيلالت';
                  break;
                case 6:
                  reg = 'بني ملال خنيفرة';
                  break;
                    case 7:
                  reg = 'الداخلة وادي الذهب';
                  break;
              
                case 8:
                  reg = 'العيون الساقية الحمراء';
                  break;
              
                case 9:
                  reg = 'مراكش آسفي';
                  break;
              
                case 10:
                  reg = 'الشرق';
                  break;
              
                case 11:
                  reg = 'كلميم واد نون';
                  break;
                  
               
              
              }
              return BarTooltipItem(
                  reg + '\n' + (rod.y).toString(), TextStyle(color: Colors.white54));
            }),
        touchCallback: (barTouchResponse) {
         
            if (barTouchResponse.spot != null &&
                barTouchResponse.touchInput is! FlPanEnd &&
                barTouchResponse.touchInput is! FlLongPressEnd) {
              touchedIndex = barTouchResponse.spot.touchedBarGroupIndex;
            } else {
              touchedIndex = -1;
            }
          
        },
      ),
      titlesData: FlTitlesData(
        show: true,
        bottomTitles: SideTitles(
          showTitles: true,
          textStyle: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 10),
          margin: 18,
          getTitles: (double value) {
            switch (value.toInt()) {
              
                case 0:
                return 'ك,س';
              case 1:
                return 'ر,س,ق';
              case 2:
                return 'س,م';
              case 3:
                return 'ط,ت,ح';
              case 4:
                return 'ف,م';
              case 5:
                return 'د,ت';
              case 6:
                return 'ب,خ';
                case 7:
                return 'د,وذ';
                case 8:
                return 'ل,س ح';
                case 9:
                return 'م,أ';
                case 10:
                return 'ش';
                case 11:
                return 'ك,و ن';
              default:
                return '';
            }
          },
        ),
        leftTitles: const SideTitles(
          showTitles: false,
        ),
      ),
      borderData: FlBorderData(
        show: false,
      ),
      barGroups: showingGroups(benimellal: benimellal,glm: glm,ori: ori,tan: tan,sous: sous,rabat: rabat,casa: casa,laayoun: laayoun,kech: kech,fes: fes,draa: draa,dakhla: dakhla),
    );
  }

  BarChartData randomData() {
    return BarChartData(
      barTouchData: const BarTouchData(
        enabled: false,
      ),
      titlesData: FlTitlesData(
        show: true,
        bottomTitles: SideTitles(
          showTitles: true,
          textStyle: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 13),
          margin: 18,
          getTitles: (double value) {
            switch (value.toInt()) {
              case 0:
                return 'ك,س';
              case 1:
                return 'ر,س,ق';
              case 2:
                return 'س,م';
              case 3:
                return 'ط,ت,ح';
              case 4:
                return 'ف,م';
              case 5:
                return 'د,ت';
              case 6:
                return 'ب,خ';
                case 7:
                return 'د,وذ';
                case 8:
                return 'ل,س ح';
                case 9:
                return 'م,أ';
                case 10:
                return 'ش';
                case 11:
                return 'ك,و ن';
              default:
                return '';
            }
          },
        ),
        leftTitles: const SideTitles(
          showTitles: false,
        ),
      ),
      borderData: FlBorderData(
        show: false,
      ),
      barGroups: List.generate(12, (i) {
        switch (i) {
          case 0:
            return makeGroupData(0, Random().nextInt(15).toDouble() + 6,
                barColor: Colors.deepPurple[900]);
          case 1:
            return makeGroupData(1, Random().nextInt(15).toDouble() + 6,
                barColor: Colors.deepPurple[900]);
          case 2:
            return makeGroupData(2, Random().nextInt(15).toDouble() + 6,
                barColor: Colors.deepPurple[900]);
          case 3:
            return makeGroupData(3, Random().nextInt(15).toDouble() + 6,
                barColor: Colors.deepPurple[900]);
          case 4:
            return makeGroupData(4, Random().nextInt(15).toDouble() + 6,
                barColor: Colors.deepPurple[900]);
          case 5:
            return makeGroupData(5, Random().nextInt(15).toDouble() + 6,
                barColor:Colors.deepPurple[900]);
          case 6:
            return makeGroupData(6, Random().nextInt(15).toDouble() + 6,
                barColor:Colors.deepPurple[900]);
                
          case 7:
            return makeGroupData(7, Random().nextInt(15).toDouble() + 6,
                barColor:Colors.deepPurple[900]);
                
          case 8:
            return makeGroupData(8, Random().nextInt(15).toDouble() + 6,
                barColor:Colors.deepPurple[900]);
                
          case 9:
            return makeGroupData(9, Random().nextInt(15).toDouble() + 6,
                barColor:Colors.deepPurple[900]);
                
          case 10:
            return makeGroupData(10, Random().nextInt(15).toDouble() + 6,
                barColor:Colors.deepPurple[900]);
                
          case 11:
            return makeGroupData(11, Random().nextInt(15).toDouble() + 6,
                barColor:Colors.deepPurple[900]);
          default:
            return null;
        }
      }),
    );
  }

  Future<dynamic> refreshState() async {
    
    await Future<dynamic>.delayed(animDuration + Duration(milliseconds: 50));
    if (isPlaying) {
      refreshState();
    }
  }
