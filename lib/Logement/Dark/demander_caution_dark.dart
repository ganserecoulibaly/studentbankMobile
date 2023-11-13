import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:studentbankmobile/Logement/light/DeclarerSinistre.dart';


class DemanderCaution_dark extends StatefulWidget {
  const DemanderCaution_dark({super.key});

  @override
  State<DemanderCaution_dark> createState() => _DemanderCaution_darkState();
}

class _DemanderCaution_darkState extends State<DemanderCaution_dark> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(0),
        padding: EdgeInsets.all(0),
        decoration: BoxDecoration(
          color: Colors.grey.shade900,
          image: DecorationImage(image: AssetImage('images/Logo N.png'),fit: BoxFit.contain)
        ),
        // width: double.infinity,
        // height: double.infinity,
        child: ListView(
          // scrollDirection: Axis.vertical,
          children: [
            
            Container(
              height: 200,
              decoration: BoxDecoration(
                boxShadow: [
                       BoxShadow(color: Colors.white,blurRadius: 3.0,spreadRadius: 4.2),
              ],
                image: DecorationImage(image: AssetImage('images/maisonNight.jpg'),fit: BoxFit.cover),
                borderRadius: BorderRadius.only(bottomRight: Radius.circular(30),bottomLeft: Radius.circular(30))
              ),
              child:  Align(
                        alignment: Alignment.center,
                        child: Text("Demander une caution",style: TextStyle(color:Colors.white,fontSize: 20,fontWeight: FontWeight.bold)),
                      
                      ),
            ),
            Container(
               margin: EdgeInsets.all(20),

              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                boxShadow:[
                  BoxShadow(spreadRadius: 4.2,blurRadius: 11),
                ] ,
                color: Colors.white,
                borderRadius: BorderRadius.circular(20)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                       Text("Mr Nom prenom"),
                       SizedBox(width: 30,),
                        Text("Adresse"),
                    ],
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Column(
                      children: [
                        Text("Loyer Precedent"),
                        Center(child: Text("550${Icon(Icons.euro)}"),)
                      ]
                      ),
                  )
                ]
                ),
            ),
            Container(
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                boxShadow:[
                  BoxShadow(spreadRadius: 4.2,blurRadius: 11),
                ] ,
                color: Colors.white,
                borderRadius: BorderRadius.circular(20)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                       Text("Mr Jules Macron"),
                       SizedBox(width: 30,),
                       Text("Ancienne Adresse"),
                    ],
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Column(
                      children: [
                        Text("Loyer Precedent"),
                        Center(child: Text("33 3733 33383 37834"),)
                      ]
                      ),
                  )
                ]
                ),
            ),
            Container(
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                boxShadow:[
                  BoxShadow(spreadRadius: 4.2,blurRadius: 11),
                ] ,
                color: Colors.white,
                borderRadius: BorderRadius.circular(20)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                       Text("Montant de la caution"),
                       SizedBox(width: 30,),
                       Icon(CupertinoIcons.money_dollar_circle_fill),
                    ],
                  ),
                 
                ]
                ),
            ),
            Container(
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                boxShadow:[
                  BoxShadow(spreadRadius: 4.2,blurRadius: 11),
                ] ,
                color: Colors.white,
                borderRadius: BorderRadius.circular(20)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                       Text("immediat"),
                      
                       SizedBox(width: 30,),
                      Icon(CupertinoIcons.calendar),
                    ],
                  ),
                 
                ]
                ),
            ),
            Container(
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                boxShadow:[
                  BoxShadow(spreadRadius: 4.2,blurRadius: 11),
                ] ,
                color: Colors.white,
                borderRadius: BorderRadius.circular(20)),
              child:Text("Information suplementaire"),
            ),
           Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(onPressed: (){}, icon: Icon(Icons.upload_file,color: Colors.red,),tooltip: "partie 1",),
                  SizedBox(width: 10,),
                  IconButton(onPressed: (){}, icon: Icon(Icons.upload_file,color: Colors.red,),tooltip: "partie 2",),
                  SizedBox(width: 10,),
                  IconButton(onPressed: (){}, icon: Icon(Icons.upload_file,color: Colors.red,),tooltip: "partie 3",)           
                ],
              ),
            ),
            Center(
              child:
               Container(
                margin: EdgeInsets.only(bottom: 10),
                child: ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.red),onPressed: (){}, child: Text("Continuer",style: TextStyle(color: Colors.black),))),
              
            ),
          ],
        ),
      ),  
 
    );
    
  }
}