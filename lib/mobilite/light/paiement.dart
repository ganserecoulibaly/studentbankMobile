import 'package:flutter/material.dart';
import 'package:studentbankmobile/mobilite/light/valide_dossier.dart';

class paiement extends StatefulWidget {
  const paiement({super.key});

  @override
  State<paiement> createState() => _paiementState();
}

class _paiementState extends State<paiement> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        
        child: Container(
           decoration: BoxDecoration(
          color: Colors.white70,
          image: DecorationImage(image: AssetImage('images/LogoN_Mobilite.png'),fit: BoxFit.fill)
        ),
          child: ListView(children: [
             Container(
              margin: EdgeInsets.all(30),
              
              decoration:BoxDecoration(borderRadius: BorderRadius.circular(20),
              image: DecorationImage(image:  AssetImage("images/mobilite_3.jpg"),fit: BoxFit.cover,scale: 4)),
              // child: Image.asset("images/mobilite.jpeg",fit: BoxFit.contain,),
              height: 150,
              width: double.infinity,
              child:
                  Align(
                    alignment: Alignment.center,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.all(20),
                          child: LinearProgressIndicator(
                          color: Colors.blue.shade100,
                          backgroundColor: Colors.blueGrey,
                          value: 2/3,
                          borderRadius: BorderRadius.circular(30),
                          minHeight: 10,
                          ),
                        ),
                        SizedBox(height: 30,),
                        Text("Demande d'accueil",style: TextStyle(color:Colors.blue.shade100, fontWeight: FontWeight.bold,fontSize: 20),)
                      ],
                    ),
                  ),
               
            ),
            Container(
              // margin: EdgeInsets.all(5),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(30),
                color: Colors.white
              ),
              // width: double.infiniy,
              
              height: 300,
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blue.shade100,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30))
                    ),
                    height: 40,
                    width: double.infinity,
                    // margin: EdgeInsets.only(bottom: 5,left: 2,right: 2),
                    child: Center(child: Text("INFORMATION SUR VOTRE CARTE BANCAIRE",style: TextStyle(color: Colors.red,fontSize: 18),)),
                  ),
                  SizedBox(height: 10,),
                  Align(
                    alignment: Alignment.topLeft,
                    child: 
                  Text("Nom sur la classe",style: TextStyle(fontSize: 18,color: Colors.red),),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    margin: EdgeInsets.only(left:20,right: 20,top: 2,bottom: 5),
                    height: 40,
                    width: 250,
                    decoration: BoxDecoration(
                      color: Colors.blue.shade100
                    ),
                    child: Center(child: Text("Nom  et Prenom",style: TextStyle(fontSize: 18),)),
                  ),
                  SizedBox(height: 10,),
                  Align(
                    alignment: Alignment.topLeft,
                    child: 
                  Text("Numero de la carte",style: TextStyle(fontSize: 16,color: Colors.red),),
                  ),
                  SizedBox(height: 10,),
                   Container(
                    margin: EdgeInsets.only(left:20,right: 20,top: 2,bottom: 5),
                    height: 40,
                    width: 250,
                    decoration: BoxDecoration(
                      color: Colors.blue.shade100
                    ),
                    child: Center(child: Text("0000 0000 0000 0000,",style: TextStyle(fontSize: 16),)),
                  ),
                  
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      
                      Container(
                        width: 150,
                        child: Column(
                          children: [
                            Text("Date d'expiration",style: TextStyle(fontSize: 14,color: Colors.red),),
                            SizedBox(height: 5,),
                             Container(
                              margin: EdgeInsets.only(left:20,right: 20,top: 2,bottom: 5),
                              height: 40,
                              width: 55,
                              decoration: BoxDecoration(
                                color: Colors.blue.shade100
                              ),
                              child: Center(child: Text("MM/YY",style: TextStyle(fontSize: 14),)),
                            ),
                          ],
                        ),
                      ),
                      
                      Container(
                        width: 150,
                        child: Column(
                          children: [
                            Text("Cvc code",style: TextStyle(fontSize: 16,color: Colors.red),),
                            SizedBox(height: 5,),
                             Container(
                              margin: EdgeInsets.only(left:20,right: 20,top: 2,bottom: 5),
                              height: 40,
                              width: 55,
                              decoration: BoxDecoration(
                                color: Colors.blue.shade100
                              ),
                              child: Center(child: Text("000",style: TextStyle(fontSize: 14),)),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                
                  
                ],
              ),
            ),
               SizedBox(width: 30,),
                     Container(
                  margin: EdgeInsets.only(top:20,right: 50,bottom: 5,left: 50),
                  decoration: BoxDecoration(
                    color: Colors.red.shade400,
                    borderRadius: BorderRadius.circular(30),
                    ),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: TextButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>valider_doc()));
                        // Navigator.push(context, MaterialPageRoute(builder: (context)=>traitement()));
                    }, child: Text(" continuer ",style: TextStyle(color: Colors.white),)),
                  ),
                  )
          ]),
        ),
      ),
  
    );
  }
}