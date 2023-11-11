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
                     bottomNavigationBar:  Container(
                  // color: Colors.orange,
                  height: 70,
                  // margin: EdgeInsets.only(top: 0),
                  decoration: BoxDecoration(
                    color: Colors.blue.shade100,
                    // borderRadius: BorderRadius.only(topLeft: Radius.circular(45),topRight: Radius.circular(45))
                    ),
                child: Center(
                  child: Container(
                  // margin: EdgeInsets.all(10),

                  padding: EdgeInsets.all(5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(width:15),
                        IconButton(onPressed: (){}, icon: Image.asset('images/setting.png'),iconSize: 40,),
                        SizedBox(width:15),
                        IconButton(onPressed: (){}, icon:Image.asset("images/euro_symbol.png"),iconSize: 40),
                        SizedBox(width:15),
                        IconButton(onPressed: (){}, icon:Image.asset("images/Acceuil_icone.png",),iconSize: 40,),
                        SizedBox(width:15),
                        IconButton(onPressed: (){}, icon:Image.asset('images/move_location.png'),iconSize: 40),
                        
                        SizedBox(width:15),
                        IconButton(onPressed: (){}, icon:Image.asset('images/night_shelter.png'),iconSize: 40)
                      ],
                    ),
                  ),
                ),
                )

    );
  }
}