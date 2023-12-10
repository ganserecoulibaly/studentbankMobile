import 'package:flutter/material.dart';
import 'package:studentbankmobile/banque_sow/profile_dark.dart';

class parametre_dark extends StatefulWidget {
  const parametre_dark({super.key});

  @override
  State<parametre_dark> createState() => _parametre_darkState();
}

class _parametre_darkState extends State<parametre_dark> {
  bool press=false;
  bool press_2=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: const DecorationImage(image:AssetImage("images/filter_banque_black.png"),fit: BoxFit.cover) ,
        ),
        child: ListView(
          children: [
            Container(
              margin: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(onPressed: ()=>Navigator.pop(context), icon: Icon(Icons.arrow_back,color: Colors.white,)),
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(color: Colors.white,width: 2)
                    ),
                    child: GestureDetector(
                      onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>profile_dark())),
                      child: Image.asset("images/person-square 1.png",),
                    ),
                  )
                ],
              ),
            ),
            const Center(
              child: Text("Paramètres",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
            ),
           Center(
            child: Container(
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(
                border: Border(bottom: BorderSide(width: 2,color: Colors.white))
              ),
              child: TextButton(
                onPressed: (){},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.person,color: Colors.white,),
                    SizedBox(width: 15,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Mon Compte",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                        SizedBox(height: 5,),
                        Text("modifier mes information personnelles",style: TextStyle(color: Colors.white),)
                      ],
                    ),
                      ],
                    ),
                    Icon(Icons.arrow_forward_ios_rounded,color: Colors.white,)
                  ],
                ),
              ),
            ),
           ),
           Center(
            child: Container(
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(
                border: Border(bottom: BorderSide(width: 2,color: Colors.white))
              ),
              child: TextButton(
                onPressed: (){},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.notifications_active,color: Colors.white,),
                    SizedBox(width: 15,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Notification",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                        SizedBox(height: 5,),
                        Text("Bloquer les notifications",style: TextStyle(color: Colors.white),)
                      ],
                    ),
                      ],
                    ),
                    Switch.adaptive(
                        activeColor: Colors.green,
                        activeTrackColor: Colors.white,
                        inactiveThumbColor: Colors.red,
                        inactiveTrackColor: Colors.white,
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
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(
                border: Border(bottom: BorderSide(width: 2,color: Colors.white))
              ),
              child: TextButton(
                onPressed: (){},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        ImageIcon(AssetImage("images/Ask Question.png"),color: Colors.white,),
                        SizedBox(width: 15,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Besoin d'aide",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                        SizedBox(height: 5,),
                        Text("contacter notre centre d'aide",style: TextStyle(color: Colors.white),)
                      ],
                    ),
                      ],
                    ),
                    Icon(Icons.arrow_forward_ios_rounded,color: Colors.white,)
                  ],
                ),
              ),
            ),
           ),
           Center(
            child: Container(
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(
                border: Border(bottom: BorderSide(width: 2,color: Colors.white))
              ),
              child: TextButton(
                onPressed: (){},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        ImageIcon(AssetImage("images/Embroidery.png"),color: Colors.white,),
                        SizedBox(width: 15,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Modee jour",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                        SizedBox(height: 5,),
                        Text("passer à la version nuit ",style: TextStyle(color: Colors.white),)
                      ],
                    ),
                      ],
                    ), Switch.adaptive(
                        activeColor: Colors.green,
                        activeTrackColor: Colors.white,
                        inactiveThumbColor: Colors.red,
                        inactiveTrackColor: Colors.white,
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
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(
                border: Border(bottom: BorderSide(width: 2,color: Colors.white))
              ),
              child: TextButton(
                onPressed: (){},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        ImageIcon(AssetImage("images/Analyze.png"),color: Colors.white,),
                        SizedBox(width: 15,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("politique de confidentialité",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                        SizedBox(height: 5,),
                        Text("lire notre politique de confidentialité ",style: TextStyle(color: Colors.white),)
                      ],
                    ),
                      ],
                    ),
                    Icon(Icons.arrow_forward_ios_rounded,color: Colors.white,)
                  ],
                ),
              ),
            ),
           ),
          
           Center(
            child: Container(
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(
                border: Border(bottom: BorderSide(width: 2,color: Colors.white))
              ),
              child: TextButton(
                onPressed: (){},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        // ImageIcon(AssetImage("images/Info.png"),color: Colors.white,),
                        Icon(Icons.info,color: Colors.white,),
                        SizedBox(width: 15,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("A propos",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                        SizedBox(height: 5,),
                        Text("A propos de studentBank",style: TextStyle(color: Colors.white),)
                      ],
                    ),
                      ],
                    ),
                    Icon(Icons.arrow_forward_ios_rounded,color: Colors.white,)
                  ],
                ),
              ),
            ),
           ),
          
           Center(
            child: Container(
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(
                border: Border(bottom: BorderSide(width: 2,color: Colors.white))
              ),
              child: TextButton(
                onPressed: (){},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        // ImageIcon(AssetImage("images/Info.png"),color: Colors.white,),
                        Icon(Icons.info,color: Colors.white,),
                        SizedBox(width: 15,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Langue",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                        SizedBox(height: 5,),
                        Text("changer de langue",style: TextStyle(color: Colors.white),)
                      ],
                    ),
                      ],
                    ),
                    Icon(Icons.arrow_forward_ios_rounded,color: Colors.white,)
                  ],
                ),
              ),
            ),
           ),
          
           Center(
            child: Container(
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(
                border: Border(bottom: BorderSide(width: 2,color: Colors.white))
              ),
              child: TextButton(
                onPressed: (){},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        ImageIcon(AssetImage("images/Separate by Using Blank Sheets.png"),color: Colors.white,),
                        // Icon(Icons.vers,color: Colors.white,),
                        SizedBox(width: 15,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("version",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                        SizedBox(height: 5,),
                        Text("produit N°0001 v 1000",style: TextStyle(color: Colors.white),)
                      ],
                    ),
                      ],
                    ),
                    Icon(Icons.arrow_forward_ios_rounded,color: Colors.white,)
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