import 'package:flutter/material.dart';
import 'package:studentbankmobile/mobilite/dark/valide_dossier_dark.dart';

class paiement_dark extends StatefulWidget {
  const paiement_dark({super.key});

  @override
  State<paiement_dark> createState() => _paiement_darkState();
}

class _paiement_darkState extends State<paiement_dark> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
          color: Colors.grey.shade900,   
          image: const DecorationImage(image: AssetImage("images/Logo N.png"),fit: BoxFit.fill)
        ),
        child: ListView(children: [
           Container(
            margin: const EdgeInsets.all(30),
            
            decoration:BoxDecoration(borderRadius: BorderRadius.circular(20),
            image: const DecorationImage(image:  AssetImage("images/mobilite_3.jpg"),fit: BoxFit.cover,scale: 4)),
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
                        margin: const EdgeInsets.all(20),
                        child: LinearProgressIndicator(
                        color: Colors.blue.shade100,
                        backgroundColor: Colors.blueGrey,
                        value: 2/3,
                        borderRadius: BorderRadius.circular(30),
                        minHeight: 10,
                        ),
                      ),
                      const SizedBox(height: 30,),
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
              borderRadius: const BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30))
                  ),
                  height: 40,
                  width: double.infinity,
                  // margin: EdgeInsets.only(bottom: 5,left: 2,right: 2),
                  child: const Center(child: Text("INFORMATION SUR VOTRE CARTE BANCAIRE",style: TextStyle(color: Colors.red,fontSize: 18),)),
                ),
                const SizedBox(height: 10,),
                const Align(
                  alignment: Alignment.topLeft,
                  child: 
                Text("Nom sur la classe",style: TextStyle(fontSize: 18,color: Colors.red),),
                ),
                const SizedBox(height: 10,),
                Container(
                  margin: const EdgeInsets.only(left:20,right: 20,top: 2,bottom: 5),
                  height: 40,
                  width: 250,
                  decoration: BoxDecoration(
                    color: Colors.blue.shade100,
                    borderRadius: BorderRadius.circular(30)
                  ),
                  child: const Center(child: Text("Nom  et Prenom",style: TextStyle(fontSize: 18),)),
                ),
                const SizedBox(height: 10,),
                const Align(
                  alignment: Alignment.topLeft,
                  child: 
                Text("Numero de la carte",style: TextStyle(fontSize: 16,color: Colors.red),),
                ),
                const SizedBox(height: 10,),
                 Container(
                  margin: const EdgeInsets.only(left:20,right: 20,top: 2,bottom: 5),
                  height: 40,
                  width: 250,
                  decoration: BoxDecoration(
                    color: Colors.blue.shade100,
                    borderRadius: BorderRadius.circular(30)
                  
                  ),
                  child: const Center(child: Text("0000 0000 0000 0000,",style: TextStyle(fontSize: 16),)),
                ),
                
                const SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    
                    SizedBox(
                      width: 150,
                      child: Column(
                        children: [
                          const Text("Date d'expiration",style: TextStyle(fontSize: 14,color: Colors.red),),
                          const SizedBox(height: 5,),
                           Container(
                            margin: const EdgeInsets.only(left:20,right: 20,top: 2,bottom: 5),
                            height: 40,
                            width: 55,
                            decoration: BoxDecoration(
                              color: Colors.blue.shade100,
                    borderRadius: BorderRadius.circular(30)
                            ),
                            child: const Center(child: Text("MM/YY",style: TextStyle(fontSize: 12),)),
                          ),
                        ],
                      ),
                    ),
                    
                    SizedBox(
                      width: 150,
                      child: Column(
                        children: [
                          const Text("Cvc code",style: TextStyle(fontSize: 16,color: Colors.red),),
                          const SizedBox(height: 5,),
                           Container(
                            margin: const EdgeInsets.only(left:20,right: 20,top: 2,bottom: 5),
                            height: 40,
                            width: 55,
                            decoration: BoxDecoration(
                              color: Colors.blue.shade100,
                           borderRadius: BorderRadius.circular(30)
                            ),
                            child: const Center(child: Text("000",style: TextStyle(fontSize: 14),)),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              
                
              ],
            ),
          ),
             const SizedBox(width: 30,),
                   Container(
                margin: const EdgeInsets.only(top:20,right: 50,bottom: 5,left: 50),
                decoration: BoxDecoration(
                  color: Colors.red.shade400,
                  borderRadius: BorderRadius.circular(30),
                  ),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: TextButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const valider_doc_dark()));
                      // Navigator.push(context, MaterialPageRoute(builder: (context)=>traitement()));
                  }, child: const Text(" continuer ",style: TextStyle(color: Colors.white),)),
                ),
                )
        ]),
      ),
      bottomNavigationBar:  Container(
                  // color: Colors.orange,
                  height: 70,
                  // margin: EdgeInsets.only(top: 0),
                  decoration: BoxDecoration(
                        color: Colors.grey.shade900,
                        image: const DecorationImage(image: AssetImage('images/Logo N.png'),fit: BoxFit.contain),
                        boxShadow: const [
                          BoxShadow(color: Colors.white),
                          BoxShadow(color: Colors.white),
                          BoxShadow(color: Colors.white),
                          BoxShadow(color: Colors.white),
                        ]
                  ),
                child: Center(
                  child: Container(
                  // margin: EdgeInsets.all(10),

                  padding: const EdgeInsets.all(5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(width:15),
                        IconButton(onPressed: (){}, icon: Image.asset('images/setting.png'),iconSize: 40,),
                        const SizedBox(width:15),
                        IconButton(onPressed: (){}, icon:Image.asset("images/euro_symbol.png"),iconSize: 40),
                        const SizedBox(width:15),
                        IconButton(onPressed: (){}, icon:Image.asset("images/Acceuil_icone.png",),iconSize: 40,),
                        const SizedBox(width:15),
                        IconButton(onPressed: (){}, icon:Image.asset('images/move_location.png'),iconSize: 40),
                        
                        const SizedBox(width:15),
                        IconButton(onPressed: (){}, icon:Image.asset('images/night_shelter.png'),iconSize: 40)
                      ],
                    ),
                  ),
                ),
                )
              
  );
  }
}