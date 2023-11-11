import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:studentbankmobile/mobilite/light/demande_admission.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
class demandeAdmission_ins extends StatefulWidget {
  const demandeAdmission_ins({super.key});

  @override
  State<demandeAdmission_ins> createState() => _demandeAdmission_insState();
}

class _demandeAdmission_insState extends State<demandeAdmission_ins> {
  var univ=["universite de lyon","universite de troyes","universite de lyon"];
  TextEditingController _search=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          // shape: BoxShape.,
          // gradient: LinearGradient(
          //   begin: Alignment.topLeft,
          //   end: Alignment.bottomRight,
          //   colors: [Colors.white, Colors.pinkAccent],
          // ),
          image: DecorationImage(image: AssetImage("images/DEBUT.png"),fit: BoxFit.cover)
        ),
        child:   ListView(
          children: [
            Container(
                margin: EdgeInsets.all(30),
                
                decoration:BoxDecoration(borderRadius: BorderRadius.circular(20),
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
                        height: 390,
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
                                  child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",style: TextStyle(color: Colors.black,fontSize: 20),),
                              ),
                              SizedBox(height: 10,),
                              Container(
                                margin: EdgeInsets.all(10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      decoration:BoxDecoration(
                                        
                                        borderRadius: BorderRadius.circular(30),
                                        // gradient: LinearGradient(colors: [Colors.white70,Colors.pinkAccent])
                                        color: Colors.pink
                                      ),
                                      width: 150,
                                      child: TextButton(onPressed: (){
                                        Navigator.push(context,MaterialPageRoute(builder: (context)=>demande_admission()));
                                      },child: Text("inscription",style: TextStyle(color: Colors.white,fontSize:14),),),
                                    ),
                                    SizedBox(width: 15,),
                                      Container(
                                      decoration:BoxDecoration(
                                        borderRadius: BorderRadius.circular(30),
                                        // gradient: LinearGradient(colors: [const Color.fromARGB(179, 212, 44, 44),Colors.pinkAccent])
                                       color: Colors.pink
                                      ),
                                      width: 150,
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
                    child: Text("Temoignages",style: TextStyle(color: Colors.pink,fontWeight: FontWeight.bold,fontSize: 28,),)
                    ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        margin: EdgeInsets.all(20),
                        width: 160,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          children: [
                            Row(
                              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Icon(Icons.person_pin),
                                ),
                                Text("Alfred Sitou",style: TextStyle(color: Colors.pink),)
                              ],
                            ),
                            Text("lorem hdbjbshdb hbjfbjs fdsj"),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                RatingBar.builder(
                                  initialRating: 3,
                                  minRating: 1,
                                  direction: Axis.horizontal,
                                  allowHalfRating: true,
                                  itemCount: 5,
                                  itemSize: 12,
                                  itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                                  itemBuilder: (context, _) => Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  onRatingUpdate: (rating) {
                                    print(rating);
                                  },
                                ),
                                 Container(
                                      decoration:BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        // gradient: LinearGradient(colors: [const Color.fromARGB(179, 212, 44, 44),Colors.pinkAccent])
                                       color: Colors.pink
                                      ),
                                      height: 30,
                                      width: 60,
                                      child: TextButton(onPressed: (){},child: Text("contacter",style: TextStyle(color: Colors.white,fontSize: 10),),),
                                    )
                              ],
                            )
                          ],
                        )
                      ),
                       Container(
                        margin: EdgeInsets.all(20),
                        width: 170,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          children: [
                            Row(
                              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Icon(Icons.person_pin),
                                ),
                                Text("Alfred Sitou",style: TextStyle(color: Colors.pink),)
                              ],
                            ),
                            Text("lorem hdbjbshdb hbjfbjs fdsj"),

                            Row(
                              children: [
                                RatingBar.builder(
                                  initialRating: 3,
                                  minRating: 1,
                                  direction: Axis.horizontal,
                                  allowHalfRating: true,
                                  itemCount: 5,
                                  itemSize: 12,
                                  itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                                  itemBuilder: (context, _) => Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  onRatingUpdate: (rating) {
                                    print(rating);
                                  },
                                ),
                                 Container(
                                      decoration:BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        // gradient: LinearGradient(colors: [const Color.fromARGB(179, 212, 44, 44),Colors.pinkAccent])
                                       color: Colors.pink
                                      ),
                                      height: 30,
                                      width: 60,
                                      child: TextButton(onPressed: (){},child: Text("contacter",style: TextStyle(color: Colors.white,fontSize: 10),),),
                                    )
                              ],
                            )
                          ],
                        )
                      )
                    ],
                  )
                ],
                ),
                Container(
                  margin: EdgeInsets.only(left:10,top:10,bottom: 2),
                  child: Text("Contact",style: TextStyle(color: Colors.pink,fontSize: 28,fontWeight: FontWeight.bold),),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Mail: adress@mail.com",style: TextStyle(color:Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                      Text("Numero de telephone: 00.00.00.00.00",style: TextStyle(color:Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                  margin: EdgeInsets.all(10),
                  decoration:BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    // gradient: LinearGradient(colors: [const Color.fromARGB(179, 212, 44, 44),Colors.pinkAccent])
                    color: Colors.pink
                  ),
                  // height: 60,
                  width: 250,
                  child: TextButton(onPressed: (){},child: Text("contacter l'universite",style: TextStyle(color: Colors.white,fontSize: 18),),),
                              ),
                ),
                Container(
                  child: Text("Vous pourriez aussi aimer",style: TextStyle(color: Colors.pink,fontSize: 24,fontWeight: FontWeight.bold),),
                ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child:
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [       
                      for(int i=0;i<3;i++)
                          Container(
                                margin: EdgeInsets.all(5),
                                width: 170,
                                height: 140,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Column(
                                  
                                  children: [
                                    Container(
                                      margin: EdgeInsets.all(2),
                                      width: double.infinity,
                                      height: 30,
                                      child: Image(image: AssetImage("images/img (6).jpg",),fit: BoxFit.fill,),),
                                      Container(
                                        margin: EdgeInsets.only(left:5),
                                        child: Text("lorem hdbjbshdb hbjfbjs fdsj")),
                                      Container(
                                        margin: EdgeInsets.all(5),
                                        child: Text(univ[i],style: TextStyle(fontSize: 18,color: Colors.pink),)),
                                    Row(
                                      children: [
                                        RatingBar.builder(
                                          initialRating: 3,
                                          minRating: 1,
                                          direction: Axis.horizontal,
                                          allowHalfRating: true,
                                          itemCount: 5,
                                          itemSize: 12,
                                          itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                                          itemBuilder: (context, _) => Icon(
                                            Icons.star,
                                            color: Colors.amber,
                                          ),
                                          onRatingUpdate: (rating) {
                                            print(rating);
                                          },
                                        ),
                                         Container(
                                              decoration:BoxDecoration(
                                                borderRadius: BorderRadius.circular(20),
                                                // gradient: LinearGradient(colors: [const Color.fromARGB(179, 212, 44, 44),Colors.pinkAccent])
                                               color: Colors.pink
                                              ),
                                              height: 30,
                                              width: 60,
                                              child: TextButton(onPressed: (){},child: Text("contacter",style: TextStyle(color: Colors.white,fontSize: 10),),),
                                            )
                                      ],
                                    )
                                  ],
                                )
                              ),
                        ],
                      ),
                  ),
                  Container(
                    margin: EdgeInsets.all(20),
                    height: 250,
                    width: double.infinity,
                    decoration: BoxDecoration(color: Colors.pink,
                              borderRadius: BorderRadius.circular(30),),
                    child: Column(
                      
                      children: [
                        Container(
                          margin: EdgeInsets.all(20),
                          child: Text("My Buddies",style: TextStyle(fontSize: 20,color: Colors.white),),
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          height: 30,
                          width: 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.white70,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(Icons.search,color: Colors.black,size: 20,),
                              SizedBox(width: 10,),
                              Text("Recherche",style: TextStyle(color: Colors.black),),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(20),
                          child: Text("Adrien",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Colors.white),),
                        ),
                        Row(
                          children: [
                            for(int i=0;i<5;i++)
                            Container(
                            margin: EdgeInsets.only(left: 10),
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.white
                            ),
                            child: Column(
                              children: [
                                Align(
                                  alignment: Alignment.topRight,
                                  child: Container(
                                    width: 10,
                                    height: 10,
                                    decoration: BoxDecoration(color: Colors.green[300],borderRadius: BorderRadius.circular(30)),
                                  ),
                                ),
                                Center(child: Icon(CupertinoIcons.person)),
                              ],
                            ))
                          ],
                        )
                      ],
                    ),
                  )
          ],
        ),
      ),
        bottomNavigationBar:  Container(
                  // color: Colors.orange,
                  height: 70,
                  // margin: EdgeInsets.only(top: 0),
                  decoration: BoxDecoration(
                    color: Colors.blue.shade100,
                    // borderRadius: BorderRadius.only(topLeft: Radius.circular(45),topRight: Radius.circular(45))
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