import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:studentbankmobile/Logement/Dark/Accueil_loyer_Dark.dart';
import 'package:studentbankmobile/Logement/light/Accueil_loyer.dart';

class changeMode extends StatelessWidget {
  const changeMode({super.key});
  @override
  Widget build(BuildContext context) {
  bool isdark=false;
    return Switch.adaptive(
      activeColor: Colors.green,
      inactiveThumbColor: Colors.red,
      value: isdark, onChanged: (value){  
      if(value==false){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>AccueilLoyer()));
      }
      else{
       Navigator.push(context, MaterialPageRoute(builder: (context)=>AccueilLoyer_Dark()));
      }
      
    });
  }
}