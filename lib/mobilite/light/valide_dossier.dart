import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:studentbankmobile/mobilite/light/Accueil_mobilite.dart';

class valider_doc extends StatefulWidget {
  const valider_doc({super.key});

  @override
  State<valider_doc> createState() => _valider_docState();
}

class _valider_docState extends State<valider_doc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Container(
         decoration: BoxDecoration(
          color: Colors.pink,
          image: DecorationImage(image: AssetImage('images/LogoN_Mobilite.png'),fit: BoxFit.fill)
        ),
        child: ListView(
          children: [
             Container(
              margin: EdgeInsets.only(top:50,left: 30,right: 30,bottom: 40),
              child: LinearProgressIndicator(
              color: Colors.pink.shade100,
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
      ),
     
    );
  }
}