import 'package:flutter/material.dart';
import 'package:studentbankmobile/mobilite/dark/Accueil_mobilite_dark.dart';
class admission_en_attente_dark extends StatefulWidget {
  const admission_en_attente_dark({super.key});

  @override
  State<admission_en_attente_dark> createState() => _admission_en_attente_darkState();
}

class _admission_en_attente_darkState extends State<admission_en_attente_dark> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Container(
                      decoration: BoxDecoration(
                        color: Colors.grey.shade900,
                        image: const DecorationImage(image: AssetImage('images/Logo N.png'),fit: BoxFit.contain)
                      ),
                      child: Column(
                        
                        children: [
                          // Container(
                          //   margin: EdgeInsets.only(top:50,left: 30,right: 30,bottom: 40),
                          //   child: LinearProgressIndicator(
                          //   color: Colors.blue.shade100,
                          //   value: 4/5,
                          //   backgroundColor: Colors.blueGrey,
                          //   borderRadius: BorderRadius.circular(30),
                          //   minHeight: 10,
                          //   ),
                          // ),
                          const SizedBox(height: 30,),
                          Container(
                            margin: const EdgeInsets.all(10),
                            child: const Center(
                              child: 
                                Text("Demande d'admission",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),)),
                          ),
                          Container(
                            margin: const EdgeInsets.all(40),
                            child: Center(
                              child: Container(
                                margin: const EdgeInsets.only(top: 50),
                                  width: 200,
                                  height: 200,    
                                child: CircleAvatar(
                                  backgroundColor: Colors.red.shade400,
                                  // foregroundColor: Colors.white,
                                  child: const Text("En Cours de Traitement...") 
                                )
                              ),
                            ),
                          ),
                           const SizedBox(width: 30,),
                           Container(
                            margin: const EdgeInsets.only(top:30,right: 50,left: 50),
                            width: 100,
                            decoration: BoxDecoration(
                              gradient: const LinearGradient(colors: [
                                Colors.white,
                                Colors.red
                              ]),
                              color: Colors.red.shade400,
                              borderRadius: BorderRadius.circular(30),
                              ),
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: TextButton(onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>const Accueil_mobilite_dark()));
                                  // Navigator.push(context, MaterialPageRoute(builder: (context)=>traitement()));
                              }, child: const Text(" Retour ",style: TextStyle(color: Colors.white),)),
                            ),
                            )
                       ],
                        ),
                    ),
                 
    );
  }
}