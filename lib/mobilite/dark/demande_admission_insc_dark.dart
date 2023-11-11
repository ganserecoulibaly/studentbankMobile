import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:studentbankmobile/mobilite/dark/demande_admission_dark.dart';
import 'package:studentbankmobile/mobilite/light/demande_admission.dart';

class demandeAdmission_ins_dark extends StatefulWidget {
  const demandeAdmission_ins_dark({super.key});

  @override
  State<demandeAdmission_ins_dark> createState() => _demandeAdmission_ins_darkState();
}

class _demandeAdmission_ins_darkState extends State<demandeAdmission_ins_dark> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          // shape: BoxShape.,
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.white, Colors.pinkAccent],
          ),
        ),
        child:   ListView(
          children: [
            Container(
                margin: EdgeInsets.all(30),
  
                decoration:BoxDecoration(borderRadius: BorderRadius.circular(20),
                color: Colors.grey.shade900,
                image: DecorationImage(image:  AssetImage("images/mobilite.jpeg"),fit: BoxFit.cover,scale: 4)),
                // child: Image.asset("images/mobilite.jpeg",fit: BoxFit.contain,),
                height: 150,
                width: double.infinity,
                child:
                    Align(
                      alignment: Alignment.center,
                      child: Column(
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
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(color: Colors.white),
                                BoxShadow(color: Colors.white),
                                BoxShadow(color: Colors.white),
                                BoxShadow(color: Colors.white),
                              ]
                            ),
                          ),
                          SizedBox(height: 30,),
                          Text("Demande d'admission",style: TextStyle(color:Colors.pink, fontWeight: FontWeight.bold,fontSize: 20),)
                        ,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                    children: [
                                      Image(image: AssetImage("images/Spain.png")),
                                      // SizedBox(height:3),
                                      Text("Espagne",style: TextStyle(color: Colors.pink,fontSize: 14,fontWeight: FontWeight.bold)  ),
                                  ]
                              ),
                              Column(
                                children: [
                                          
                                  Image(image:AssetImage("images/🦆 icon _building one_.png")),
                                          // SizedBox(height:3),
                                  Text("Universite de Barcelone",style: TextStyle(color: Colors.pink,fontSize: 14,fontWeight: FontWeight.bold,),)
                                    
                                ],
                              )
                            ],
                            
                          ),
                         
                  ] 
                 ),   
              ),
            ),
             Container(
                        decoration: BoxDecoration(color: Colors.white,
                        borderRadius: BorderRadius.circular(20)
                        ),
                        margin: EdgeInsets.all(10),
                        height: 200,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: Text("Description",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontStyle: FontStyle.normal),),
                              ),
                               Center(
                                // alignment: Alignment.center,
                                child: Text("lorem iushgsvgshnbjghbsvhvbhjsbh\njbshshbhhsjkbsjbhbhbhvbhbshbhjsbh\njvsbjhsbjhbvsjhvbshbvshjsbvhjsvbshj\nvfghgsvhvfgsgfvhgvshfvsghfvggshfv",style: TextStyle(color: Colors.black,fontSize: 20),),
                              ),
                              Container(
                                margin: EdgeInsets.all(10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      decoration:BoxDecoration(
                                        // gradient: LinearGradient(colors: [Colors.white70,Colors.pinkAccent])
                                        color: Colors.pink
                                      ),
                                      width: 100,
                                      child: TextButton(onPressed: (){
                                        Navigator.push(context,MaterialPageRoute(builder: (context)=>demande_admission_dark()));
                                      },child: Text("inscription",style: TextStyle(color: Colors.white,fontSize:14),),),
                                    ),
                                    SizedBox(width: 10,),
                                      Container(
                                      decoration:BoxDecoration(
                                        // gradient: LinearGradient(colors: [const Color.fromARGB(179, 212, 44, 44),Colors.pinkAccent])
                                       color: Colors.pink
                                      ),
                                      width: 100,
                                      child: TextButton(onPressed: (){},child: Text("contactez-nous",style: TextStyle(color: Colors.white,fontSize: 14),),),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                        Column(
                  // crossAxisAlignment:CrossAxisAlignment.center
                  children: [

                  // Row(children: [Padding(padding:EdgeInsets.only(top: 10,left: 20),child:Text("Apartement",style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold,color: Colors.black)),),],),
                
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(padding: EdgeInsets.only(left:10,top: 20),
                      child: Container(
                        width: 190,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30)
                          ),
                        child: Row(
                          children: [Icon(Icons.place,size:25,color:Colors.pinkAccent),SizedBox(width: 10,),Text("Lile",style:TextStyle(color:Colors.pinkAccent,fontSize: 12))],)) 
                      ),
                      Padding(padding: EdgeInsets.only(left:10,top: 20),
                      child: Container(
                         width: 190,
                         height: 40,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30)
                          ),
                        child: Row(
                          children: [Icon(Icons.screenshot_monitor,size:25,color:Colors.pinkAccent),SizedBox(width: 10,),Text("300m2        ",style:TextStyle(color:Colors.pinkAccent,fontSize: 12))],)) 
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(padding: EdgeInsets.only(left:10,top: 20),
                      child: Container(
                        width: 190,
                         height: 40,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30)
                          ),
                        child: Row(
                          children: [Icon(CupertinoIcons.cube_box_fill,size:25,color:Colors.pinkAccent),SizedBox(width: 10,),Text("20 ans d'existance   ",style:TextStyle(color:Colors.pinkAccent,fontSize: 12))],)) 
                      ),
                      Padding(padding: EdgeInsets.only(left:10,top: 20),
                      child: Container(
                        width: 190,
                         height: 40,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30)
                          ),
                        child: Row(
                          children: [Icon(CupertinoIcons.person_2,size:25,color:Colors.pinkAccent),SizedBox(width: 10,),Text("+5000 etudiants",style:TextStyle(color:Colors.pinkAccent,fontSize: 12))],)) 
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(padding: EdgeInsets.only(left:10,top: 20),
                      child: Container(
                         width: 190,
                         height: 40,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30)
                          ),
                        child: Row(
                          children: [Icon(CupertinoIcons.cube_box_fill,size:25,color:Colors.pinkAccent),SizedBox(width: 10,),Text("programme acredite   ",style:TextStyle(color:Colors.pinkAccent,fontSize: 12))],)) 
                      ),
                      Padding(padding: EdgeInsets.only(left:10,top: 20),
                      child: Container(
                         width: 190,
                         height: 40,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30)
                          ),
                        child: Row(
                          children: [Icon(CupertinoIcons.person_2,size:25,color:Colors.pinkAccent),SizedBox(width: 10,),Text("+1000 etudiants etrangers",style:TextStyle(color:Colors.pinkAccent,fontSize: 12))],)) 
                      ),
                    ],
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text("Temoignages",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20,),)
                    ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.all(20),
                        width: 150,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        // child: ,
                      ),
                      SizedBox(width: 5,),
                       Container(
                        margin: EdgeInsets.all(20),
                        width: 150,
                        height: 100,
                        decoration: BoxDecoration(color: Colors.white),
                        // child: ,
                      )
                    ],
                  )
                ],
                ),
          ],
        ),
      ),
   bottomNavigationBar:  Container(
                  // color: Colors.orange,
                  height: 70,
                  // margin: EdgeInsets.only(top: 0),
                  decoration: BoxDecoration(
                        color: Colors.grey.shade900,
                        image: DecorationImage(image: AssetImage('images/Logo N.png'),fit: BoxFit.contain),
                        boxShadow: [
                          BoxShadow(color: Colors.white),
                          BoxShadow(color: Colors.white),
                          BoxShadow(color: Colors.white),
                          BoxShadow(color: Colors.white),
                        ]
                  ),
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
                        IconButton(onPressed: (){}, icon:Image.asset("images/Acceuil_icone.png",),iconSize: 40,),
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