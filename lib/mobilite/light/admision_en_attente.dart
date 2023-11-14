import 'package:flutter/material.dart';
import 'package:studentbankmobile/mobilite/light/Accueil_mobilite.dart';
class admission_en_attente extends StatefulWidget {
  const admission_en_attente({super.key});

  @override
  State<admission_en_attente> createState() => _admission_en_attenteState();
}

class _admission_en_attenteState extends State<admission_en_attente> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                          Colors.orange,
                          Colors.red,
                        ])
                      ),
                      child: Column(
                        
                        children: [
                          SizedBox(height: 30,),
                          Container(
                            margin: EdgeInsets.all(10),
                            child: Center(
                              child: 
                                Text("Demande d'admission",style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold),)),
                          ),
                          Container(
                            margin: EdgeInsets.all(40),
                            child: Center(
                              child: Container(
                                margin: EdgeInsets.only(top: 50),
                                  width: 200,
                                  height: 200,    
                                child: CircleAvatar(
                                  backgroundColor: Colors.red.shade400,
                                  // foregroundColor: Colors.white,
                                  child: Text("En Cours de Traitement...") 
                                )
                              ),
                            ),
                          ),
                           SizedBox(width: 30,),
                           Container(
                            margin: EdgeInsets.only(top:30,right: 50,left: 50),
                            width: 100,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(colors: [
                                Colors.white,
                                Colors.red
                              ]),
                              color: Colors.red.shade400,
                              borderRadius: BorderRadius.circular(30),
                              ),
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: TextButton(onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>Accueil_mobilite()));
                                  // Navigator.push(context, MaterialPageRoute(builder: (context)=>traitement()));
                              }, child: Text(" Retour ",style: TextStyle(color: Colors.white),)),
                            ),
                            )
                       ],
                        ),
                    ),
                  
    );
  }
}