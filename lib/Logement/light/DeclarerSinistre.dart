import 'package:flutter/material.dart';


class DeclarerSinistre extends StatefulWidget {
  const DeclarerSinistre({super.key});

  @override
  State<DeclarerSinistre> createState() => _DeclarerSinistreState();
}

class _DeclarerSinistreState extends State<DeclarerSinistre> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(preferredSize: const Size.fromHeight(300), child:     Container(
              height: 200,
              decoration: BoxDecoration(
                boxShadow: [
                       BoxShadow(color: Colors.orange.shade200,blurRadius: 3.0,spreadRadius: 4.2),
              ],
                image: const DecorationImage(image: AssetImage('images/maisonNight.jpg'),fit: BoxFit.cover),
                borderRadius: const BorderRadius.only(bottomRight: Radius.circular(30),bottomLeft: Radius.circular(30))
              ),
              child:  const Align(
                        alignment: Alignment.centerLeft,
                        child: Text("Déclarer un sinistre",style: TextStyle(color:Colors.white,fontSize: 20,fontWeight: FontWeight.bold)),
                      ),
            ),
          ),
      body: Container(
        margin: const EdgeInsets.all(0),
        padding: const EdgeInsets.all(0),
        decoration: const BoxDecoration(
          color: Colors.white,
          image: DecorationImage(image: AssetImage('images/LogoNlogement.png'),fit: BoxFit.fill
          )
        ),
        // width: double.infinity,
        // height: double.infinity,
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
           Container(
                    color: Colors.transparent,
                    margin: const EdgeInsets.only(left:30,top:10),
                    child:const Column(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child:
                       Text("Déclarer un sinistre",style:TextStyle(color:Colors.orange,fontSize:15,fontWeight: FontWeight.bold)),
                        ),SizedBox(height: 10,),
                        Text("Lorem Ipsum is simply dummy\ntext of the printing and typesetting\ntext of the printing and typesettingtext of the printing \nand typesetting\ntext of the printing and typesetting\nindustry. Lorem Ipsum has\ntext of the printing and typesetting\nindustry. Lorem Ipsum has \n\n",style: TextStyle(color: Colors.black,fontSize: 15),),
                       ],
                    )
                  ),  
             Container(
                    margin: const EdgeInsets.only(left:30,top:10),
                    child:const Column(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child:
                       Text("Emplacement",style:TextStyle(color:Colors.orange,fontSize:15,fontWeight: FontWeight.bold)),
                        ),SizedBox(height: 10,),
                        Text("Lorem Ipsum is simply dummy\ntext of the printing and typesetting\ntext of the printing and typesettingtext of the printing \nand typesetting\ntext of the printing and typesetting\nindustry. Lorem Ipsum has\ntext of the printing and typesetting\nindustry. Lorem Ipsum has \n\n",style: TextStyle(color: Colors.black,fontSize: 15),),
                       ],
                    )
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
               Container(
                margin: const EdgeInsets.only(bottom: 10),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.orangeAccent),
                  onPressed: (){}, 
                  child: const Text("Contacter le propriétaire",style: TextStyle(color: Colors.black),)
                  )
                ),
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