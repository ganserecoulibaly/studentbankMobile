import 'package:flutter/material.dart';
import 'package:studentbankmobile/banque_sow/parametre_dark.dart';
import 'package:studentbankmobile/banque_sow/profile_dark.dart';
import 'package:studentbankmobile/map/map.dart';
import 'package:studentbankmobile/Logement/logement.dart';
import 'package:studentbankmobile/Sp_coder/connexion/page_intro.dart';
import 'package:studentbankmobile/banque_sow/cagnotte_1.dart';
import 'package:studentbankmobile/banque_sow/cagnotte_1_dark.dart';
import 'package:studentbankmobile/banque_sow/compte_virement_1.dart';
import 'package:studentbankmobile/banque_sow/compte_virement_1_dark.dart';
import 'package:studentbankmobile/banque_sow/compte_virement_2_dark.dart';
import 'package:studentbankmobile/banque_sow/mes_depanages.dart';
import 'package:studentbankmobile/banque_sow/mes_depanages_dark.dart';
import 'package:studentbankmobile/banque_sow/participe_cagnotte.dart';
import 'package:studentbankmobile/banque_sow/participe_cagnotte_dark.dart';
import 'package:studentbankmobile/banque_sow/virement_mot_de_passe.dart';
import 'package:studentbankmobile/banque_sow/virement_mot_de_passe_dark.dart';
import 'package:studentbankmobile/mobilite/mobilite.dart';

import 'banque_sow/compte_virement_2.dart';

class Accueil extends StatefulWidget {
  const Accueil({super.key});
  @override
  State<Accueil> createState() => _AccueilState();
}
class _AccueilState extends State<Accueil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
         decoration: BoxDecoration(
          // shape: BoxShape.,
          // gradient: LinearGradient(
          //   begin: Alignment.topLeft,
          //   end: Alignment.bottomRight,
          //   colors: [Colors.white, Colors.pinkAccent],
          // ),
          image: DecorationImage(image: AssetImage("images/darkFilter.jpg"),fit: BoxFit.cover)
        ),
        child: ListView(
           children: [
              Container(
                decoration: BoxDecoration(color: Colors.transparent),
                margin: EdgeInsets.only(top:20),
                child: Image(image: AssetImage("images/StudentBank - Logotype - Version quadrichrome dégradé-01 2.png")),
              ),
              Container(
                // margin: EdgeInsets.all(20),
                child: Center(
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.pink,
                          borderRadius: BorderRadius.circular(30)
                        ),
                        child: TextButton(onPressed:(){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>PageIntro()));
                        },child: Text("Page Intro",style: TextStyle(color: Colors.white),), ),
                      ),
                       Container(
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.pink,
                          borderRadius: BorderRadius.circular(30)
                        ),
                        child: TextButton(onPressed:(){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>loyer()));
                          },child: Text("Logement",style: TextStyle(color: Colors.white),), ),
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.pink,
                            borderRadius: BorderRadius.circular(30)
                        ),
                        child: TextButton(onPressed:(){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>mobilite()));
                        },child: Text("Mobilite",style: TextStyle(color: Colors.white),), ),
                      ),
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: Colors.pink,
                                borderRadius: BorderRadius.circular(30)
                            ),
                            child: TextButton(onPressed:(){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>const compte_virement_1_dark()));
                            },child: Text("compte_virement_1_dark",style: TextStyle(color: Colors.white),), ),
                          ),
                          Container(
                            margin: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: Colors.pink,
                                borderRadius: BorderRadius.circular(30)
                            ),
                            child: TextButton(onPressed:(){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>const compte_virement_1()));
                            },child: Text("compte_virement_1",style: TextStyle(color: Colors.white),), ),
                          ),
                        ],
                      ),
                       Row(
                         children: [
                           Container(
                            margin: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: Colors.pink,
                                borderRadius: BorderRadius.circular(30)
                            ),
                            child: TextButton(onPressed:(){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>const compte_virement_2_dark()));
                            },child: Text("compte_virement_2_dark",style: TextStyle(color: Colors.white),), ),
                                                 ),
                           Container(
                            margin: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: Colors.pink,
                                borderRadius: BorderRadius.circular(30)
                            ),
                            child: TextButton(onPressed:(){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>const compte_virement_2()));
                            },child: Text("compte_virement_2",style: TextStyle(color: Colors.white),), ),
                                                 ),
                         ],
                       ),
                       Row(
                         children: [
                           Container(
                            margin: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: Colors.pink,
                                borderRadius: BorderRadius.circular(30)
                            ),
                            child: TextButton(onPressed:(){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>const depanages_dark()));
                            },child: Text("depannages_dark",style: TextStyle(color: Colors.white),), ),
                                                 ),
                           Container(
                            margin: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: Colors.pink,
                                borderRadius: BorderRadius.circular(30)
                            ),
                            child: TextButton(onPressed:(){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>const depanages()));
                            },child: Text("depannages",style: TextStyle(color: Colors.white),), ),
                                                 ),
                         ],
                       ),
                       Row(
                         children: [
                           Container(
                            margin: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: Colors.pink,
                                borderRadius: BorderRadius.circular(30)
                            ),
                            child: TextButton(onPressed:(){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>const v_pin_code_dark()));
                            },child: Text("pin_code_dark",style: TextStyle(color: Colors.white),), ),
                                                 ),
                           Container(
                            margin: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: Colors.pink,
                                borderRadius: BorderRadius.circular(30)
                            ),
                            child: TextButton(onPressed:(){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>const v_pin_code()));
                            },child: Text("pin_code",style: TextStyle(color: Colors.white),), ),
                                                 ),
                         ],
                       ),
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: Colors.pink,
                                borderRadius: BorderRadius.circular(30)
                            ),
                            child: TextButton(onPressed:(){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>const cagnotte_1_dark()));
                            },child: Text("cagnotte_1_dark",style: TextStyle(color: Colors.white),), ),
                          ),
                          Container(
                            margin: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: Colors.pink,
                                borderRadius: BorderRadius.circular(30)
                            ),
                            child: TextButton(onPressed:(){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>const cagnotte_1()));
                            },child: Text("cagnotte_1",style: TextStyle(color: Colors.white),), ),
                          ),
                        ],
                      ),
                        Row(
                          children: [
                            Container(
                            margin: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: Colors.pink,
                                borderRadius: BorderRadius.circular(30)
                            ),
                            child: TextButton(onPressed:(){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>const participe_cagnotte_dark()));
                            },child: Text("cagnotte_participe_dark",style: TextStyle(color: Colors.white),), ),
                                                  ),
                            Container(
                            margin: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: Colors.pink,
                                borderRadius: BorderRadius.circular(30)
                            ),
                            child: TextButton(onPressed:(){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>const participe_cagnotte()));
                            },child: Text("cagnotte_participe",style: TextStyle(color: Colors.white),), ),
                                                  ),
                          ],
                        ),
                        Container(
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.pink,
                            borderRadius: BorderRadius.circular(30)
                        ),
                        child: TextButton(onPressed:(){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> mymap()));
                        },child: Text("map",style: TextStyle(color: Colors.white),), ),
                      ),
                        Container(
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.pink,
                            borderRadius: BorderRadius.circular(30)
                        ),
                        child: TextButton(onPressed:(){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> parametre_dark()));
                        },child: Text("parametre",style: TextStyle(color: Colors.white),), ),
                      ),
                        Container(
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.pink,
                            borderRadius: BorderRadius.circular(30)
                        ),
                        child: TextButton(onPressed:(){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> profile_dark()));
                        },child: Text("profile",style: TextStyle(color: Colors.white),), ),
                      ),
                 
                    ],
                  ),
                ),
              )
           ]  
           ),
      ),
    );
  }
}