import 'package:flutter/material.dart';
import 'package:studentbankmobile/parametre.dart';
import 'package:studentbankmobile/banque/dark/parametre_dark.dart';
import 'package:studentbankmobile/banque/profile.dart';
import 'package:studentbankmobile/banque/dark/profile_dark.dart';
import 'package:studentbankmobile/map/map.dart';
import 'package:studentbankmobile/Logement/logement.dart';
import 'package:studentbankmobile/banque/cagnotte_1.dart';
import 'package:studentbankmobile/banque/dark/cagnotte_1_dark.dart';
import 'package:studentbankmobile/banque/compte_virement_1.dart';
import 'package:studentbankmobile/banque/dark/compte_virement_1_dark.dart';
import 'package:studentbankmobile/banque/dark/compte_virement_2_dark.dart';
import 'package:studentbankmobile/banque/mes_depanages.dart';
import 'package:studentbankmobile/banque/dark/mes_depanages_dark.dart';
import 'package:studentbankmobile/banque/participe_cagnotte.dart';
import 'package:studentbankmobile/banque/dark/participe_cagnotte_dark.dart';
import 'package:studentbankmobile/banque/virement_mot_de_passe.dart';
import 'package:studentbankmobile/banque/dark/virement_mot_de_passe_dark.dart';
import 'package:studentbankmobile/mobilite/mobilite.dart';

import 'banque/compte_virement_2.dart';

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
         decoration: const BoxDecoration(
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
                decoration: const BoxDecoration(color: Colors.transparent),
                margin: const EdgeInsets.only(top:20),
                child: const Image(image: AssetImage("images/StudentBank - Logotype - Version quadrichrome dégradé-01 2.png")),
              ),
              Container(
                // margin: EdgeInsets.all(20),
                child: Center(
                  child: Column(
                    children: [
                   
                       Container(
                        margin: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.pink,
                          borderRadius: BorderRadius.circular(30)
                        ),
                        child: TextButton(onPressed:(){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>const loyer()));
                          },child: const Text("Logement",style: TextStyle(color: Colors.white),), ),
                      ),
                      Container(
                        margin: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.pink,
                            borderRadius: BorderRadius.circular(30)
                        ),
                        child: TextButton(onPressed:(){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>const mobilite()));
                        },child: const Text("Mobilite",style: TextStyle(color: Colors.white),), ),
                      ),
                      Row(
                        children: [
                          Container(
                            margin: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: Colors.pink,
                                borderRadius: BorderRadius.circular(30)
                            ),
                            child: TextButton(onPressed:(){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>const compte_virement_1_dark()));
                            },child: const Text("compte_virement_1_dark",style: TextStyle(color: Colors.white),), ),
                          ),
                          Container(
                            margin: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: Colors.pink,
                                borderRadius: BorderRadius.circular(30)
                            ),
                            child: TextButton(onPressed:(){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>const compte_virement_1()));
                            },child: const Text("compte_virement_1",style: TextStyle(color: Colors.white),), ),
                          ),
                        ],
                      ),
                       Row(
                         children: [
                           Container(
                            margin: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: Colors.pink,
                                borderRadius: BorderRadius.circular(30)
                            ),
                            child: TextButton(onPressed:(){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>const compte_virement_2_dark()));
                            },child: const Text("compte_virement_2_dark",style: TextStyle(color: Colors.white),), ),
                                                 ),
                           Container(
                            margin: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: Colors.pink,
                                borderRadius: BorderRadius.circular(30)
                            ),
                            child: TextButton(onPressed:(){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>const compte_virement_2()));
                            },child: const Text("compte_virement_2",style: TextStyle(color: Colors.white),), ),
                                                 ),
                         ],
                       ),
                       Row(
                         children: [
                           Container(
                            margin: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: Colors.pink,
                                borderRadius: BorderRadius.circular(30)
                            ),
                            child: TextButton(onPressed:(){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>const depanages_dark()));
                            },child: const Text("depannages_dark",style: TextStyle(color: Colors.white),), ),
                                                 ),
                           Container(
                            margin: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: Colors.pink,
                                borderRadius: BorderRadius.circular(30)
                            ),
                            child: TextButton(onPressed:(){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>const depanages()));
                            },child: const Text("depannages",style: TextStyle(color: Colors.white),), ),
                                                 ),
                         ],
                       ),
                       Row(
                         children: [
                           Container(
                            margin: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: Colors.pink,
                                borderRadius: BorderRadius.circular(30)
                            ),
                            child: TextButton(onPressed:(){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>const v_pin_code_dark()));
                            },child: const Text("pin_code_dark",style: TextStyle(color: Colors.white),), ),
                                                 ),
                           Container(
                            margin: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: Colors.pink,
                                borderRadius: BorderRadius.circular(30)
                            ),
                            child: TextButton(onPressed:(){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>const v_pin_code()));
                            },child: const Text("pin_code",style: TextStyle(color: Colors.white),), ),
                                                 ),
                         ],
                       ),
                      Row(
                        children: [
                          Container(
                            margin: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: Colors.pink,
                                borderRadius: BorderRadius.circular(30)
                            ),
                            child: TextButton(onPressed:(){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>const cagnotte_1_dark()));
                            },child: const Text("cagnotte_1_dark",style: TextStyle(color: Colors.white),), ),
                          ),
                          Container(
                            margin: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: Colors.pink,
                                borderRadius: BorderRadius.circular(30)
                            ),
                            child: TextButton(onPressed:(){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>const cagnotte_1()));
                            },child: const Text("cagnotte_1",style: TextStyle(color: Colors.white),), ),
                          ),
                        ],
                      ),
                        Row(
                          children: [
                            Container(
                            margin: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: Colors.pink,
                                borderRadius: BorderRadius.circular(30)
                            ),
                            child: TextButton(onPressed:(){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>const participe_cagnotte_dark()));
                            },child: const Text("cagnotte_participe_dark",style: TextStyle(color: Colors.white),), ),
                                                  ),
                            Container(
                            margin: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: Colors.pink,
                                borderRadius: BorderRadius.circular(30)
                            ),
                            child: TextButton(onPressed:(){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>const participe_cagnotte()));
                            },child: const Text("cagnotte_participe",style: TextStyle(color: Colors.white),), ),
                                                  ),
                          ],
                        ),
                        Container(
                        margin: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.pink,
                            borderRadius: BorderRadius.circular(30)
                        ),
                        child: TextButton(onPressed:(){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> const mymap()));
                        },child: const Text("map",style: TextStyle(color: Colors.white),), ),
                      ),
                        Row(
                          children: [
                            Container(
                            margin: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: Colors.pink,
                                borderRadius: BorderRadius.circular(30)
                            ),
                            child: TextButton(onPressed:(){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> const parametre_dark()));
                            },child: const Text("parametre_dark",style: TextStyle(color: Colors.white),), ),
                                                  ),
                            Container(
                            margin: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: Colors.pink,
                                borderRadius: BorderRadius.circular(30)
                            ),
                            child: TextButton(onPressed:(){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> const parametre()));
                            },child: const Text("parametre",style: TextStyle(color: Colors.white),), ),
                                                  ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                            margin: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: Colors.pink,
                                borderRadius: BorderRadius.circular(30)
                            ),
                            child: TextButton(onPressed:(){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> const profile_dark()));
                            },child: const Text("profile_dark",style: TextStyle(color: Colors.white),), ),
                                                  ),
                            Container(
                            margin: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: Colors.pink,
                                borderRadius: BorderRadius.circular(30)
                            ),
                            child: TextButton(onPressed:(){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> const profile()));
                            },child: const Text("profile",style: TextStyle(color: Colors.white),), ),
                                                  ),
                          ],
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