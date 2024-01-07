import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:studentbankmobile/mobilite/light/demande_admission.dart';

class demandeAdmission_ins_dark extends StatefulWidget {
  const demandeAdmission_ins_dark({super.key});

  @override
  State<demandeAdmission_ins_dark> createState() => _demandeAdmission_ins_darkState();
}

class _demandeAdmission_ins_darkState extends State<demandeAdmission_ins_dark> {
  var univ=["universite de lyon","universite de troyes","universite de lyon"];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage("images/darkFilter.jpg"),fit: BoxFit.cover)
        ),
        child:   ListView(
          children: [
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
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            margin: const EdgeInsets.all(20),
                            decoration: const BoxDecoration(
                              boxShadow: [
                                BoxShadow(color: Colors.white),
                                BoxShadow(color: Colors.white),
                                BoxShadow(color: Colors.white),
                                BoxShadow(color: Colors.white),
                              ]
                            ),
                            child: LinearProgressIndicator(
                            color: Colors.blue.shade100,
                            backgroundColor: Colors.blueGrey,
                            value: 2/3,
                            borderRadius: BorderRadius.circular(30),
                            minHeight: 10,
                            ),
                          ),
                          const SizedBox(height: 30,),
                          const Text("Demande d'admission",style: TextStyle(color:Colors.pink, fontWeight: FontWeight.bold,fontSize: 20),)
                        ,
                          const Row(
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
                        decoration: BoxDecoration(color: Colors.grey.shade900,
                        borderRadius: BorderRadius.circular(20)
                        ),
                        margin: const EdgeInsets.all(10),
                        height: 390,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              const Align(
                                alignment: Alignment.topLeft,
                                child: Text("Description",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontStyle: FontStyle.normal),),
                              ),
                               const Center(
                                // alignment: Alignment.center,
                                  child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",style: TextStyle(color: Colors.white,fontSize: 20),),
                              ),
                              const SizedBox(height: 10,),
                              Container(
                                margin: const EdgeInsets.all(10),
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
                                        Navigator.push(context,MaterialPageRoute(builder: (context)=>const demande_admission()));
                                      },child: const Text("inscription",style: TextStyle(color: Colors.white,fontSize:14),),),
                                    ),
                                    const SizedBox(width: 15,),
                                      Container(
                                      decoration:BoxDecoration(
                                        borderRadius: BorderRadius.circular(30),
                                        // gradient: LinearGradient(colors: [const Color.fromARGB(179, 212, 44, 44),Colors.pinkAccent])
                                       color: Colors.pink
                                      ),
                                      width: 150,
                                      child: TextButton(onPressed: ()=>FlutterPhoneDirectCaller.callNumber("338553682"),child: const Text("contactez-nous",style: TextStyle(color: Colors.white,fontSize: 14),),),
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
                      Padding(padding: const EdgeInsets.only(left:10,top: 20),
                      child: Container(
                        width: 190,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30)
                          ),
                        child: const Row(
                          children: [Icon(Icons.place,size:25,color:Colors.pinkAccent),SizedBox(width: 10,),Text("Lile",style:TextStyle(color:Colors.pinkAccent,fontSize: 12))],)) 
                      ),
                      Padding(padding: const EdgeInsets.only(left:10,top: 20),
                      child: Container(
                         width: 190,
                         height: 40,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30)
                          ),
                        child: const Row(
                          children: [Icon(Icons.screenshot_monitor,size:25,color:Colors.pinkAccent),SizedBox(width: 10,),Text("300m2        ",style:TextStyle(color:Colors.pinkAccent,fontSize: 12))],)) 
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(padding: const EdgeInsets.only(left:10,top: 20),
                      child: Container(
                        width: 190,
                         height: 40,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30)
                          ),
                        child: const Row(
                          children: [Icon(CupertinoIcons.cube_box_fill,size:25,color:Colors.pinkAccent),SizedBox(width: 10,),Text("20 ans d'existance   ",style:TextStyle(color:Colors.pinkAccent,fontSize: 12))],)) 
                      ),
                      Padding(padding: const EdgeInsets.only(left:10,top: 20),
                      child: Container(
                        width: 190,
                         height: 40,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30)
                          ),
                        child: const Row(
                          children: [Icon(CupertinoIcons.person_2,size:25,color:Colors.pinkAccent),SizedBox(width: 10,),Text("+5000 etudiants",style:TextStyle(color:Colors.pinkAccent,fontSize: 12))],)) 
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(padding: const EdgeInsets.only(left:10,top: 20),
                      child: Container(
                         width: 190,
                         height: 40,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30)
                          ),
                        child: const Row(
                          children: [Icon(CupertinoIcons.cube_box_fill,size:25,color:Colors.pinkAccent),SizedBox(width: 10,),Text("programme acredite   ",style:TextStyle(color:Colors.pinkAccent,fontSize: 12))],)) 
                      ),
                      Padding(padding: const EdgeInsets.only(left:10,top: 20),
                      child: Container(
                         width: 190,
                         height: 40,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30)
                          ),
                        child: const Row(
                          children: [Icon(CupertinoIcons.person_2,size:25,color:Colors.pinkAccent),SizedBox(width: 10,),Text("+1000 etudiants etrangers",style:TextStyle(color:Colors.pinkAccent,fontSize: 12))],)) 
                      ),
                    ],
                  ),
                  const Align(
                    alignment: Alignment.topLeft,
                    child: Text("Temoignages",style: TextStyle(color: Colors.pink,fontWeight: FontWeight.bold,fontSize: 28,),)
                    ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        margin: const EdgeInsets.all(20),
                        width: 160,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          children: [
                            const Row(
                              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Icon(Icons.person_pin),
                                ),
                                Text("Alfred Sitou",style: TextStyle(color: Colors.pink),)
                              ],
                            ),
                            const Text("lorem hdbjbshdb hbjfbjs fdsj"),
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
                                  itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                                  itemBuilder: (context, _) => const Icon(
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
                                      child: TextButton(onPressed: (){},child: const Text("contacter",style: TextStyle(color: Colors.white,fontSize: 10),),),
                                    )
                              ],
                            )
                          ],
                        )
                      ),
                       Container(
                        margin: const EdgeInsets.all(20),
                        width: 170,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          children: [
                            const Row(
                              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Icon(Icons.person_pin),
                                ),
                                Text("Alfred Sitou",style: TextStyle(color: Colors.pink),)
                              ],
                            ),
                            const Text("lorem hdbjbshdb hbjfbjs fdsj"),

                            Row(
                              children: [
                                RatingBar.builder(
                                  initialRating: 3,
                                  minRating: 1,
                                  direction: Axis.horizontal,
                                  allowHalfRating: true,
                                  itemCount: 5,
                                  itemSize: 12,
                                  itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                                  itemBuilder: (context, _) => const Icon(
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
                                      child: TextButton(onPressed: (){},child: const Text("contacter",style: TextStyle(color: Colors.white,fontSize: 10),),),
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
                  margin: const EdgeInsets.only(left:10,top:10,bottom: 2),
                  child: const Text("Contact",style: TextStyle(color: Colors.pink,fontSize: 28,fontWeight: FontWeight.bold),),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Mail: adress@mail.com",style: TextStyle(color:Colors.grey.shade900,fontSize: 16,fontWeight: FontWeight.bold),),
                      Text("Numero de telephone: 00.00.00.00.00",style: TextStyle(color:Colors.grey.shade900,fontSize: 16,fontWeight: FontWeight.bold),),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                  margin: const EdgeInsets.all(10),
                  decoration:BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    // gradient: LinearGradient(colors: [const Color.fromARGB(179, 212, 44, 44),Colors.pinkAccent])
                    color: Colors.pink
                  ),
                  // height: 60,
                  width: 250,
                  child: TextButton(onPressed: (){},child: const Text("contacter l'Université",style: TextStyle(color: Colors.white,fontSize: 18),),),
                              ),
                ),
                Container(
                  child: const Text("Vous pourriez aussi aimer",style: TextStyle(color: Colors.pink,fontSize: 20,fontWeight: FontWeight.bold),),
                ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child:
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [       
                      for(int i=0;i<3;i++)
                          Container(
                                margin: const EdgeInsets.all(5),
                                width: 170,
                                height: 140,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Column(
                                  
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.all(2),
                                      width: double.infinity,
                                      height: 30,
                                      child: const Image(image: AssetImage("images/img (6).jpg",),fit: BoxFit.fill,),),
                                      Container(
                                        margin: const EdgeInsets.only(left:5),
                                        child: const Text("lorem hdbjbshdb\n hbjfbjs fdsj")),
                                      Container(
                                        margin: const EdgeInsets.all(5),
                                        child: Text(univ[i],style: const TextStyle(fontSize: 14,color: Colors.pink),)),
                                    Row(
                                      children: [
                                        RatingBar.builder(
                                          initialRating: 3,
                                          minRating: 1,
                                          direction: Axis.horizontal,
                                          allowHalfRating: true,
                                          itemCount: 5,
                                          itemSize: 12,
                                          itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                                          itemBuilder: (context, _) => const Icon(
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
                                              child: TextButton(onPressed: (){},child: const Text("contacter",style: TextStyle(color: Colors.white,fontSize: 10),),),
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
                    margin: const EdgeInsets.all(20),
                    height: 250,
                    width: double.infinity,
                    decoration: BoxDecoration(color: Colors.pink,
                              borderRadius: BorderRadius.circular(30),),
                    child: Column(
                      
                      children: [
                        Container(
                          margin: const EdgeInsets.all(20),
                          child: const Text("My Buddies",style: TextStyle(fontSize: 20,color: Colors.white),),
                        ),
                        Container(
                          margin: const EdgeInsets.all(10),
                          height: 30,
                          width: 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.white70,
                          ),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(Icons.search,color: Colors.black,size: 20,),
                              SizedBox(width: 10,),
                              Text("Recherche",style: TextStyle(color: Colors.black),),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.all(20),
                          child: const Text("Adrien",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Colors.white),),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            for(int i=0;i<5;i++)
                            Container(
                            margin: const EdgeInsets.only(left: 10),
                           height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.white
                            ),
                            child: Column(
                              children: [
                                Align(
                                  alignment: Alignment.topRight,
                                  child: Container(
                                    width: 5,
                                    height: 5,
                                    decoration: BoxDecoration(color: Colors.green[300],borderRadius: BorderRadius.circular(30)),
                                  ),
                                ),
                                const Center(child: Icon(CupertinoIcons.person)),
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
     
    );
  }
}