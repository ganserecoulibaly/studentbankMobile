import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class DemanderCaution extends StatefulWidget {
  const DemanderCaution({super.key});

  @override
  State<DemanderCaution> createState() => _DemanderCautionState();
}

class _DemanderCautionState extends State<DemanderCaution> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(300), 
        child:  Container(
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
                        child: Text("Demander une caution",style: TextStyle(color:Colors.white,fontSize: 20,fontWeight: FontWeight.bold)),
                      
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
                        const Text("Loyer Precedent"),
                        Center(child: Text("550${const Icon(Icons.euro)}"),)
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
              child: const Column(
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
              margin: const EdgeInsets.all(20),
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                boxShadow:const [
                  BoxShadow(spreadRadius: 4.2,blurRadius: 11),
                ] ,
                color: Colors.white,
                borderRadius: BorderRadius.circular(20)),
              child: const Column(
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
              margin: const EdgeInsets.all(20),
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                boxShadow:const [
                  BoxShadow(spreadRadius: 4.2,blurRadius: 11),
                ] ,
                color: Colors.white,
                borderRadius: BorderRadius.circular(20)),
              child: const Column(
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
              margin: const EdgeInsets.all(20),
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                boxShadow:const [
                  BoxShadow(spreadRadius: 4.2,blurRadius: 11),
                ] ,
                color: Colors.white,
                borderRadius: BorderRadius.circular(20)),
              child:const Text("Information suplementaire"),
            ),
           Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(onPressed: (){}, icon: const Icon(Icons.upload_file,color: Colors.orange,),tooltip: "partie 1",),
                  const SizedBox(width: 10,),
                  IconButton(onPressed: (){}, icon: const Icon(Icons.upload_file,color: Colors.orange,),tooltip: "partie 2",),
                  const SizedBox(width: 10,),
                  IconButton(onPressed: (){}, icon: const Icon(Icons.upload_file,color: Colors.orange,),tooltip: "partie 3",)           
                ],
              ),
            ),
            Center(
              child:
               ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.red),onPressed: (){}, child: const Text("Continuer",style: TextStyle(color: Colors.black),)),
              
            ),
            const SizedBox(height: 20,),
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