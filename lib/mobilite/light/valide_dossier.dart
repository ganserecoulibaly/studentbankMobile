import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:studentbankmobile/mobilite/light/Accueil_mobilite.dart';

class valider_doc_visa extends StatefulWidget {
  const valider_doc_visa({super.key});

  @override
  State<valider_doc_visa> createState() => _valider_doc_visaState();
}

class _valider_doc_visaState extends State<valider_doc_visa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: ListView(
        children: [
           Container(
            margin: EdgeInsets.only(top:50,left: 30,right: 30,bottom: 40),
            child: LinearProgressIndicator(
            color: Colors.blue.shade100,
            value: 1,
            backgroundColor: Colors.blueGrey,
            borderRadius: BorderRadius.circular(30),
            minHeight: 10,
            ),
          ),
          Center(
          child: 
            Text("  Dossier à été transmis ! \n      avec succes\n",style: TextStyle(color: Colors.black,fontSize: 20,fontStyle: FontStyle.italic),)
          ),
          SizedBox(height: 15,),
          Center(
            child: 
              Text(" Lorem dhfjfjgbbhfbfbdfjhbdjdbjd! \nipsumvfsfsdvsvfbsbsnsvnsvs vn snnsv\n",style: TextStyle(color: Colors.black,fontSize: 12,fontStyle: FontStyle.italic),)
          ),
          Center(
            child: Icon(Icons.download_done_sharp,color: Colors.green[300],size: 200,),
          ),
           Container(
              margin: EdgeInsets.only(top:20,right: 50,bottom: 5,left: 50),
              decoration: BoxDecoration(
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
    );
  }
}