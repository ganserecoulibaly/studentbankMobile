import 'package:flutter/material.dart';
import 'package:studentbankmobile/Logement/logement.dart';
import 'package:studentbankmobile/Sp_coder/connexion/page_intro.dart';
import 'package:studentbankmobile/mobilite/mobilite.dart';

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
          image: DecorationImage(image: AssetImage("images/DEBUT.png"),fit: BoxFit.cover)
        ),
        child: ListView(
           children: [
              Container(
                decoration: BoxDecoration(color: Colors.transparent),
                margin: EdgeInsets.all(20),
                child: Image(image: AssetImage("images/StudentBank - Logotype - Version quadrichrome dégradé-01 2.png")),
              ),
              Container(
                margin: EdgeInsets.all(20),
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
                      )
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