import 'package:flutter/material.dart';

class traitement extends StatefulWidget {
  const traitement({super.key});

  @override
  State<traitement> createState() => _traitementState();
}

class _traitementState extends State<traitement> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top:50,left: 30,right: 30,bottom: 40),
                          child: LinearProgressIndicator(
                          color: Colors.blue.shade100,
                          value: 4/5,
                          backgroundColor: Colors.blueGrey,
                          borderRadius: BorderRadius.circular(30),
                          minHeight: 10,
                          ),
                        ),
                        Center(
                          child: 
                            Text("     Soyez patient! \nvotre demande est \n        en cour de \n        traitement.",style: TextStyle(color: Colors.red.shade400,fontSize: 20,fontStyle: FontStyle.italic),)),
                        Center(
                          child: Container(
                            margin: EdgeInsets.only(top: 50),
                              width: 200,
                              height: 200,    
                            child: CircleAvatar(
                              backgroundColor: Colors.red.shade400,
                              foregroundColor: Colors.white,
                              child: Text("en attente"),
                            )
                          ),
                        ),
                      ],
                    
                  ),
    );
  }
}