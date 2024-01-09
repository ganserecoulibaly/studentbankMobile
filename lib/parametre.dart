import 'package:flutter/material.dart';
import 'package:studentbankmobile/banque/profile.dart';

class parametre extends StatefulWidget {
  const parametre({super.key});

  @override
  State<parametre> createState() => _parametreState();
}

class _parametreState extends State<parametre> {
  bool press=true;
  bool press_2=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(image:AssetImage("images/theme_blanc_rose_studentBanc.png"),fit: BoxFit.cover) ,
        ),
        child: ListView(
          children: [
            Container(
              margin: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(onPressed: ()=>Navigator.pop(context), icon: const Icon(Icons.arrow_back,color: Colors.pink,)),
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(color: Colors.black,width: 2)
                    ),
                    child: GestureDetector(
                      onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>const profile())),
                      child: Image.asset("images/person-square 1.png",),
                    ),
                  )
                ],
              ),
            ),
            const Center(
              child: Text("Paramètres",style: TextStyle(color: Colors.pink,fontSize: 20,fontWeight: FontWeight.bold),),
            ),
           Center(
            child: Container(
              margin: const EdgeInsets.all(5),
              decoration: const BoxDecoration(
                border: Border(bottom: BorderSide(width: 2,color: Colors.black))
              ),
              child: TextButton(
                onPressed: (){},
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.person,color: Colors.black,),
                    SizedBox(width: 15,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Mon Compte",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                        SizedBox(height: 5,),
                        Text("modifier mes information personnelles",style: TextStyle(color: Colors.black),)
                      ],
                    ),
                      ],
                    ),
                    Icon(Icons.arrow_forward_ios_rounded,color: Colors.black,)
                  ],
                ),
              ),
            ),
           ),
           Center(
            child: Container(
              margin: const EdgeInsets.all(5),
              decoration: const BoxDecoration(
                border: Border(bottom: BorderSide(width: 2,color: Colors.black))
              ),
              child: TextButton(
                onPressed: (){},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Row(
                      children: [
                        Icon(Icons.notifications_active,color: Colors.black,),
                    SizedBox(width: 15,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Notification",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                        SizedBox(height: 5,),
                        Text("Bloquer les notifications",style: TextStyle(color: Colors.black),)
                      ],
                    ),
                      ],
                    ),
                    Switch.adaptive(
                        activeColor: Colors.green,
                        activeTrackColor: Colors.black,
                        inactiveThumbColor: Colors.red,
                        inactiveTrackColor: Colors.black,
                        value: press, onChanged: (value){  
                          setState(() {
                            press=!press;
                            if(press==false){
                                //  Navigator.push(context, MaterialPageRoute(builder: (context)=>AccueilLoyer()));
                          
                           }
                            else{
                                  //  Navigator.push(context, MaterialPageRoute(builder: (context)=>AccueilLoyer_Dark()));
                            
                           }
                        
                          });
                       
                        
                      }),
                  ],
                ),
              ),
            ),
           ),
           Center(
            child: Container(
              margin: const EdgeInsets.all(5),
              decoration: const BoxDecoration(
                border: Border(bottom: BorderSide(width: 2,color: Colors.black))
              ),
              child: TextButton(
                onPressed: (){},
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                        Row(
                          children: [
                            ImageIcon(AssetImage("images/Ask Question.png"),color: Colors.black,),
                            SizedBox(width: 15,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Besoin d'aide",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                            SizedBox(height: 5,),
                            Text("contacter notre centre d'aide",style: TextStyle(color: Colors.black),)
                          ],
                        ),
                      ],
                    ),
                    Icon(Icons.arrow_forward_ios_rounded,color: Colors.black,)
                  ],
                ),
              ),
            ),
           ),
           Center(
            child: Container(
              margin: const EdgeInsets.all(5),
              decoration: const BoxDecoration(
                border: Border(bottom: BorderSide(width: 2,color: Colors.black))
              ),
              child: TextButton(
                onPressed: (){},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Row(
                      children: [
                        ImageIcon(AssetImage("images/Embroidery.png"),color: Colors.black,),
                        SizedBox(width: 15,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Modee jour",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                        SizedBox(height: 5,),
                        Text("passer à la version nuit ",style: TextStyle(color: Colors.black),)
                      ],
                    ),
                      ],
                    ), Switch.adaptive(
                        activeColor: Colors.green,
                        activeTrackColor: Colors.black,
                        inactiveThumbColor: Colors.red,
                        inactiveTrackColor: Colors.black,
                        value: press_2, onChanged: (value){  
                          setState(() {
                            press_2=!press_2;
                            if(press_2==false){
                                //  Navigator.push(context, MaterialPageRoute(builder: (context)=>AccueilLoyer()));
                          
                           }
                            else{
                                  //  Navigator.push(context, MaterialPageRoute(builder: (context)=>AccueilLoyer_Dark()));
                            
                           }
                        
                          });
                       
                        
                      }),
                  ],
                ),
              ),
            ),
           ),
           Center(
            child: Container(
              margin: const EdgeInsets.all(5),
              decoration: const BoxDecoration(
                border: Border(bottom: BorderSide(width: 2,color: Colors.black))
              ),
              child: TextButton(
                onPressed: (){},
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        ImageIcon(AssetImage("images/Analyze.png"),color: Colors.black,),
                        SizedBox(width: 15,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("politique de confidentialité",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                        SizedBox(height: 5,),
                        Text("lire notre politique de confidentialité ",style: TextStyle(color: Colors.black),)
                      ],
                    ),
                      ],
                    ),
                    Icon(Icons.arrow_forward_ios_rounded,color: Colors.black,)
                  ],
                ),
              ),
            ),
           ),
          
           Center(
            child: Container(
              margin: const EdgeInsets.all(5),
              decoration: const BoxDecoration(
                border: Border(bottom: BorderSide(width: 2,color: Colors.black))
              ),
              child: TextButton(
                onPressed: (){},
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        // ImageIcon(AssetImage("images/Info.png"),color: Colors.white,),
                        Icon(Icons.info,color: Colors.black,),
                        SizedBox(width: 15,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("A propos",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                        SizedBox(height: 5,),
                        Text("A propos de studentBank",style: TextStyle(color: Colors.black),)
                      ],
                    ),
                      ],
                    ),
                    Icon(Icons.arrow_forward_ios_rounded,color: Colors.black,)
                  ],
                ),
              ),
            ),
           ),
          
           Center(
            child: Container(
              margin: const EdgeInsets.all(5),
              decoration: const BoxDecoration(
                border: Border(bottom: BorderSide(width: 2,color: Colors.black))
              ),
              child: TextButton(
                onPressed: (){},
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        // ImageIcon(AssetImage("images/Info.png"),color: Colors.white,),
                        Icon(Icons.info,color: Colors.black,),
                        SizedBox(width: 15,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Langue",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                        SizedBox(height: 5,),
                        Text("changer de langue",style: TextStyle(color: Colors.black),)
                      ],
                    ),
                      ],
                    ),
                    Icon(Icons.arrow_forward_ios_rounded,color: Colors.black,)
                  ],
                ),
              ),
            ),
           ),
          
           Center(
            child: Container(
              margin: const EdgeInsets.all(5),
              decoration: const BoxDecoration(
                border: Border(bottom: BorderSide(width: 2,color: Colors.black))
              ),
              child: TextButton(
                onPressed: (){},
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        ImageIcon(AssetImage("images/Separate by Using Blank Sheets.png"),color: Colors.black,),
                        // Icon(Icons.vers,color: Colors.white,),
                        SizedBox(width: 15,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("version",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                        SizedBox(height: 5,),
                        Text("produit N°0001 v 1000",style: TextStyle(color: Colors.black),)
                      ],
                    ),
                      ],
                    ),
                    Icon(Icons.arrow_forward_ios_rounded,color: Colors.black,)
                  ],
                ),
              ),
            ),
           ),
          
          ],
        )
      ),
    );
  }
}