import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:studentbankmobile/Logement/light/DeclarerSinistre.dart';


class DeposerPreavis extends StatefulWidget {
  const DeposerPreavis({super.key});

  @override
  State<DeposerPreavis> createState() => _DeposerPreavisState();
}

class _DeposerPreavisState extends State<DeposerPreavis> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(0),
        padding: EdgeInsets.all(0),
        decoration: BoxDecoration(
          color: Colors.white,
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
                       BoxShadow(color: Colors.orange.shade200,blurRadius: 3.0,spreadRadius: 4.2),
              ],
                image: DecorationImage(image: AssetImage('images/maisonNight.jpg'),fit: BoxFit.cover),
                borderRadius: BorderRadius.only(bottomRight: Radius.circular(30),bottomLeft: Radius.circular(30))
              ),
              child:  Align(
                        alignment: Alignment.center,
                        child: Text("Deposer un pré avis",style: TextStyle(color:Colors.white,fontSize: 20,fontWeight: FontWeight.bold)),
                      
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
                       Align(
                    alignment: Alignment.topLeft,
                    child: Text("Mr Nom prenom"),
                  ),
                   Align(
                    alignment: Alignment.topRight,
                    child: Text("Ancienne Adresse"),
                  ),
                    ],
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Column(
                      children: [
                        Text("Loyer Precedent"),
                        Center(child: Text("350${Icons.euro}"),)
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
                       Align(
                    alignment: Alignment.topLeft,
                    child: Text("Mr Nom prenom"),
                  ),
                   Align(
                    alignment: Alignment.topRight,
                    child: Text("Ancienne Adresse"),
                  ),
                    ],
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Column(
                      children: [
                        Text("Loyer Precedent"),
                        Center(child: Text("350${Icons.euro}"),)
                      ]
                      ),
                  )
                ]
                ),
            ),
            Container(
              padding: EdgeInsets.all(30),
              // alignment: Alignment.center,
              decoration: BoxDecoration(
                // boxShadow: BoxShadow(blurRadius: ),
              ),
              child: Center(
                child: Column(
                  // alignment: Alignment.center,
              children: [
                     Container(
                      padding: EdgeInsets.all(20),
                      alignment: Alignment.center,
                      width:300,
                      decoration:  BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular((8))),
                      child:Row(
                        children: [
                           Container(
                      decoration: BoxDecoration(color: Color.fromARGB(255, 180, 71, 38),borderRadius: BorderRadius.circular(7)),
                      height:35,width: 50,
                      
                      child: Icon(CupertinoIcons.calendar)
                    ),
                     ElevatedButton(
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.white,elevation: 10,shadowColor: Colors.black),
                      
                        // style:ElevatedButton.styleFrom(primary: Colors.white),
                        onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>DeclarerSinistre()));
                      }, child:const Text("Date d'entree",style: TextStyle(fontSize: 14,color: Colors.black),)),
                    
                        ],
                      )  
                      ),
                    Container(
                      padding: EdgeInsets.all(20),
                      alignment: Alignment.center,
                      width:300,
                      decoration:  BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular((8))),
                      child:Row(
                        children: [
                           Container(
                      decoration: BoxDecoration(color: Color.fromARGB(255, 180, 71, 38),borderRadius: BorderRadius.circular(7)),
                      height:35,width: 50,
                      
                      child: Icon(CupertinoIcons.calendar)
                    ),
                     ElevatedButton(
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.white,elevation: 10,shadowColor: Colors.black),
                      
                        // style:ElevatedButton.styleFrom(primary: Colors.white),
                        onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>DeclarerSinistre()));
                      }, child:const Text("Date de sortie souhaiter",style: TextStyle(fontSize: 14,color: Colors.black),)),
                    
                        ],
                      )  
                      ),
                // const SizedBox(height: 8,),
                Container(
                    decoration: BoxDecoration(
                       boxShadow:[
                  BoxShadow(spreadRadius: 4.2,blurRadius: 11),
                ] ,
                      color: Colors.red,borderRadius: BorderRadius.circular(20)),
                    margin: EdgeInsets.all(20),

              padding: EdgeInsets.all(20),
                    child:Column(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child:
                       Text("Information complementaire",style:TextStyle(color:Colors.white,fontSize:15,fontWeight: FontWeight.bold)),
                        ),SizedBox(height: 10,),
                        Text("Lorem Ipsum is simply dummy\ntext of the printing and typesetting\ntext of the printing and typesettingtext of the printing \nand typesetting\ntext of the printing and typesetting\nindustry. Lorem Ipsum has\ntext of the printing and typesetting\nindustry. Lorem Ipsum has \n\n",style: TextStyle(color: Colors.black,fontSize: 15),),
                       ],
                    )
                  ), 
              ],
              ),
              ),
            ),
            Center(
              child:
               ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.red),onPressed: (){}, child: Text("Continuer",style: TextStyle(color: Colors.black),)),
            )
          ],
        ),
      ),  
       bottomNavigationBar:  Container(
                  // color: Colors.orange,
                  height: 70,
                  // margin: EdgeInsets.only(top: 0),
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(45),topRight: Radius.circular(45))),
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
                        IconButton(onPressed: (){}, icon:Image.asset("images/Acceuil_icone.png"),iconSize: 50),
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