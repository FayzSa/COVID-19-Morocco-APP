import 'package:http/http.dart';
import 'dart:convert';


class Mcovid
{

    String cases;
    String activeCases;
    String deaths; 
    String todayDeaths;
    String todayCases;
    String recoverds;
    String excludes;
    String error ;
    Map<String, dynamic> regions = {};
    String desc;
    Mcovid({this.desc});

    Future <void> getCases() async{

      try {  
     
      Response res = await get("https://tram-production.com/covid-api");
      Map all = jsonDecode(res.body);
      
      List eReg = all['REGIONS'];
      print(int.parse(all["MA-CASES"]).toString());
      // new 
      this.regions = {
     "BeniMellal": int.parse(eReg[0]["BENIMELLALKHNIFRA"]),
    "Casa": int.parse(eReg[0]["CASASETTAT"]),
    "Tanger": int.parse(eReg[0]["TANGERTETOUANELHOCEIMA"]),
    "FesMkns": int.parse(eReg[0]["FESMEKNES"]),
    "Dakhala": int.parse(eReg[0]["DAKHLAOUEDEDDAHAB"]),
    "Layoun": int.parse(eReg[0]["LAAYOUNSAKIAELHAMRA"]),
    "Oriental": int.parse(eReg[0]["ORIENTAL"]),
    "Rabat": int.parse(eReg[0]["RABATSALKENITRA"]),
    "Goulm": int.parse(eReg[0]["GUELMIMOUEDNOUN"]),
    "sousMasa": int.parse(eReg[0]["SOUSSMASSA"]),
    "KechAsfi": int.parse(eReg[0]["MERRAKECHSAFI"]),
    "DraaTaf": int.parse(eReg[0]["DARAATAFILALET"])
      };

      this.cases = int.parse(all["MA-CASES"]).toString();
      this.activeCases = int.parse(all["MA-ACTIVE-CASES"]).toString();
      this.todayCases = int.parse(all["MA-TODAY-CASES"]).toString();
      this.deaths = int.parse(all["MA-DEATHS"]).toString();
      this.todayDeaths = int.parse(all["MA-TODAY-DEATHS"]).toString();
      this.recoverds = int.parse(all["MA-RECOVERED"]).toString();
      this.excludes = int.parse(all["MA-EXCLUDE"]).toString();




      //
      /*this.regions = all["regions"];
      this.cases = all["cases"].toString();
      this.activeCases = all["activeCases"].toString();
      this.todayCases = all["todayCases"].toString();
      this.deaths = all["deaths"].toString();
      this.todayDeaths = all["todayDeaths"].toString();
      this.recoverds = all["recovered"].toString();
      this.excludes = all["excludes"].toString();
      this.error = null;
   */
      } catch (e) {
        error = e.toString();
      }
      

    }

}