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
      appBar: PreferredSize(preferredSize: const Size.fromHeight(300), child:    Container(
              height: 200,
              decoration: BoxDecoration(
                boxShadow: [
                       BoxShadow(color: Colors.orange.shade200,blurRadius: 3.0,spreadRadius: 4.2),
              ],
                image: const DecorationImage(image: AssetImage('images/maisonNight.jpg'),fit: BoxFit.cover),
                borderRadius: const BorderRadius.only(bottomRight: Radius.circular(30),bottomLeft: Radius.circular(30))
              ),
              child:  const Align(
                        alignment: Alignment.center,
                        child: Text("Déposer un pré avis",style: TextStyle(color:Colors.white,fontSize: 20,fontWeight: FontWeight.bold)),
                      
                      ),
            ),
           ),
      body: Container(
        margin: const EdgeInsets.all(0),
        padding: const EdgeInsets.all(0),
        decoration: const BoxDecoration(
          color: Colors.white,
          image: DecorationImage(image: AssetImage('images/LogoNlogement.png'),fit: BoxFit.fill)
        ),
        // width: double.infinity,
        // height: double.infinity,
        child: ListView(
          // scrollDirection: Axis.vertical,
          children: [
            
          Container(
               margin: const EdgeInsets.all(20),

              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                boxShadow:const [
                  BoxShadow(spreadRadius: 4.2,blurRadius: 5),
                ] ,
                color: Colors.white,
                borderRadius: BorderRadius.circular(20)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                        const Text("Loyer Précédent"),
                        Center(child: Text("350${Icons.euro}"),)
                      ]
                      ),
                  )
                ]
                ),
            ),
            Container(
              margin: const EdgeInsets.all(20),
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                boxShadow:const [
                  BoxShadow(spreadRadius: 4.2,blurRadius: 11),
                ] ,
                color: Colors.white,
                borderRadius: BorderRadius.circular(20)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                        const Text("Loyer Precedent"),
                        Center(child: Text("350${Icons.euro}"),)
                      ]
                      ),
                  )
                ]
                ),
            ),
            Container(
              padding: const EdgeInsets.all(30),
              // alignment: Alignment.center,
              decoration: const BoxDecoration(
                // boxShadow: BoxShadow(blurRadius: ),
              ),
              child: Center(
                child: Column(
                  // alignment: Alignment.center,
              children: [
                     Container(
                      padding: const EdgeInsets.all(20),
                      margin: const EdgeInsets.all(5),
                      alignment: Alignment.center,
                      width:300,
                      decoration:  BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular((20)), boxShadow:const [
                  BoxShadow(spreadRadius: 4.2,blurRadius: 11),
                ] ,),
                      child:Row(
                        children: [
                           Container(
                      decoration: BoxDecoration(color: const Color.fromARGB(255, 180, 71, 38),borderRadius: BorderRadius.circular(7)),
                      height:35,width: 50,
                      
                      child: const Icon(CupertinoIcons.calendar)
                    ),
                     TextButton(
                      // style:ElevatedButton.styleFrom(primary: Colors.white),
                        onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>const DeclarerSinistre()));
                      }, child:const Text("Date de rentrée souhaitée",style: TextStyle(fontSize: 14,color: Colors.black),)),
                    
                        ],
                      )  
                      ),
                    Container(
                      padding: const EdgeInsets.all(20),
                      margin: const EdgeInsets.all(20),
                      alignment: Alignment.center,
                      width:300,
                      decoration:  BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular((20)), boxShadow:const [
                  BoxShadow(spreadRadius: 4.2,blurRadius: 11),
                ] ,),
                      child:Row(
                        children: [
                           Container(
                      decoration: BoxDecoration(color: const Color.fromARGB(255, 180, 71, 38),borderRadius: BorderRadius.circular(7)),
                      height:35,width: 50,
                      
                      child: const Icon(CupertinoIcons.calendar)
                    ),
                     TextButton(
                        // style:ElevatedButton.styleFrom(primary: Colors.white),
                        onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>const DeclarerSinistre()));
                      }, child:const Text("Date De Sortie souhaitée",style: TextStyle(fontSize: 14,color: Colors.black),)),
                    
                        ],
                      )  
                      ),
                // const SizedBox(height: 8,),
                Container(
                    decoration: BoxDecoration(
                       boxShadow:const [
                  BoxShadow(spreadRadius: 4.2,blurRadius: 11),
                ] ,
                      color: Colors.red,borderRadius: BorderRadius.circular(20)),
                    margin: const EdgeInsets.all(20),

              padding: const EdgeInsets.all(20),
                    child:const Column(
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
               ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.red),onPressed: (){}, child: const Text("Continuer",style: TextStyle(color: Colors.black),)),
            )
          ],
        ),
      ),  
      //  bottomNavigationBar:  Container(
      //             // color: Colors.orange,
      //             height: 70,
      //             // margin: EdgeInsets.only(top: 0),
      //             decoration: BoxDecoration(
      //               color: Colors.orange,
      //               borderRadius: BorderRadius.only(topLeft: Radius.circular(45),topRight: Radius.circular(45))),
      //           child: Center(
      //             child: Container(
      //             // margin: EdgeInsets.all(10),

      //             padding: EdgeInsets.all(5),
      //               child: Row(
      //                 mainAxisAlignment: MainAxisAlignment.center,
      //                 children: [
      //                   SizedBox(width:15),
      //                   IconButton(onPressed: (){}, icon: Image.asset('images/setting.png'),iconSize: 40,),
      //                   SizedBox(width:15),
      //                   IconButton(onPressed: (){}, icon:Image.asset("images/euro_symbol.png"),iconSize: 40),
      //                   SizedBox(width:15),
      //                   IconButton(onPressed: (){}, icon:Image.asset("images/Acceuil_icone.png"),iconSize: 50),
      //                   SizedBox(width:15),
      //                   IconButton(onPressed: (){}, icon:Image.asset('images/move_location.png'),iconSize: 40),
                        
      //                   SizedBox(width:15),
      //                   IconButton(onPressed: (){}, icon:Image.asset('images/night_shelter.png'),iconSize: 40)
      //                 ],
      //               ),
      //             ),
      //           ),
      //           )
                  
    );
    
  }
}