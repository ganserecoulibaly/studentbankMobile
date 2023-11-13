import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class loyerinfo extends StatelessWidget {
  loyerinfo({super.key,required this.index});
  int index;
  var pNames=[
    "img (2)",
    "img (2)",
    "img (5)",
    "img (6)",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: [
          ListView(
            scrollDirection: Axis.vertical,
            children: [
              Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height/2,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    image: DecorationImage(image: AssetImage('images/LogoNlogement.png'),fit: BoxFit.contain)
                  ),
                  child: ListView(
                    scrollDirection: Axis.vertical,
                    children: [
                       Container(
                        height: 300,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(color: Colors.orange.shade200,blurRadius: 3.0,spreadRadius: 4.2),
                      ],
                      image: DecorationImage(image: AssetImage('images/maisonNight.jpg'),fit: BoxFit.cover),
                      borderRadius: BorderRadius.only(bottomRight: Radius.circular(30),bottomLeft: Radius.circular(30))
                    ),
                    child: Container(
                           child: 
                          Center(
                            child: 
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                            SizedBox(height: 10,),
                              Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text("ANNONCES",style: TextStyle(color:Colors.white,fontSize: 20,fontWeight: FontWeight.bold)),
                            
                            ),
                            Align(
                            alignment: Alignment.centerRight,
                              child: IconButton(onPressed: (){},icon: Icon(Icons.menu),color: Colors.white,),
                              ),
                              ],
                              
                            ),
                            Align(
                            alignment: Alignment.centerRight,
                              child: IconButton(onPressed: (){},icon: Icon(Icons.favorite_border),color: Colors.white,),
                              ),
                            Text("lorem ghdfshgvhsgsvss\nfhvsgvbfsfj\bnfbssbvfsvsvhn",style: TextStyle(color:Colors.white,fontSize: 13,fontWeight: FontWeight.normal),),
                            // SizedBox(height: 10,),
                            ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.white),onPressed: (){}, child: Text("voir plus",style: TextStyle(color: Colors.black),))
                          ],),
                          ),
                        
                        ),
                      ),
                     
                      
                    ],
                  ),
                ),

                // SizedBox(height: 10),
                 Center(
                   child: Container(
                          alignment: Alignment.center,
                          margin: EdgeInsets.only(left:15,right:15),
                          // padding: EdgeInsets.all(20),
                          width: double.infinity,
                          height: 300,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(image: AssetImage("images/${pNames[index]}.jpg"),fit: BoxFit.fill),
                          ),
                          // child: Image.asset(""),
                        ),
                 ),
                // SizedBox(height: 10),
                Column(
                  // crossAxisAlignment:CrossAxisAlignment.center
                  children: [

                  // Row(children: [Padding(padding:EdgeInsets.only(top: 10,left: 20),child:Text("Apartement",style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold,color: Colors.black)),),],),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(padding: EdgeInsets.only(left:10,top: 20),
                      child: Row(children: [Icon(CupertinoIcons.money_dollar_circle_fill,size: 25,color:Colors.orange),SizedBox(width: 5,),Text("prix du loyer",style:TextStyle(color:Colors.orange))],) 
                      ),
                      Padding(padding: EdgeInsets.only(left:10,top: 20),
                      child:Row(children: [Icon(CupertinoIcons.rectangle_fill_on_rectangle_fill,size:25,color:Colors.orange),SizedBox(width: 10,),Text("Place            ",style:TextStyle(color:Colors.orange))],) 
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(padding: EdgeInsets.only(left:10,top: 20),
                      child: Row(children: [Icon(Icons.place,size:25,color:Colors.orange),SizedBox(width: 10,),Text("Localisation",style:TextStyle(color:Colors.orange))],) 
                      ),
                      Padding(padding: EdgeInsets.only(left:10,top: 20),
                      child: Row(children: [Icon(Icons.screenshot_monitor,size:25,color:Colors.orange),SizedBox(width: 10,),Text("Surface        ",style:TextStyle(color:Colors.orange))],) 
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(padding: EdgeInsets.only(left:10,top: 20),
                      child: Row(children: [Icon(CupertinoIcons.cube_box_fill,size:25,color:Colors.orange),SizedBox(width: 10,),Text("Meuble   ",style:TextStyle(color:Colors.orange))],) 
                      ),
                      Padding(padding: EdgeInsets.only(left:10,top: 20),
                      child: Row(children: [Icon(CupertinoIcons.person_2,size:25,color:Colors.orange),SizedBox(width: 10,),Text("Colocation",style:TextStyle(color:Colors.orange))],) 
                      ),
                    ],
                  )
                ]),
                 Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent
                    ),
                    margin: EdgeInsets.only(left:30,top:10),
                    child:Column(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                       Align(
                          alignment: Alignment.topLeft,
                          child:
                       Text("Descriptif",style:TextStyle(color:Colors.orange,fontSize:15,fontWeight: FontWeight.bold)),
                        ),SizedBox(height: 10,),
                        Text("Lorem Ipsum is simply dummy\ntext of the printing and typesetting\ntext of the printing and typesettingtext of the printing \nand typesetting\ntext of the printing and typesetting\nindustry. Lorem Ipsum has\ntext of the printing and typesetting\nindustry. Lorem Ipsum has \n\n",style: TextStyle(color: Colors.black,fontSize: 15),),
                       ],
                    )
                  ),  
              
                ],
              ),
            ],
          ),
       ListView(
        scrollDirection: Axis.vertical,
         children: [
           Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height/2,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    image: DecorationImage(image: AssetImage('images/LogoNlogement.png'),fit: BoxFit.contain)
                  ),
                  child: ListView(
                    scrollDirection: Axis.vertical,
                    children: [
                       Container(
                        height: 300,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(color: Colors.orange.shade200,blurRadius: 3.0,spreadRadius: 4.2),
                      ],
                      image: DecorationImage(image: AssetImage('images/maisonNight.jpg'),fit: BoxFit.cover),
                      borderRadius: BorderRadius.only(bottomRight: Radius.circular(30),bottomLeft: Radius.circular(30))
                    ),
                    child: Container(
                           child: 
                          Center(
                            child: 
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                            SizedBox(height: 10,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text("ANNONCES",style: TextStyle(color:Colors.white,fontSize: 20,fontWeight: FontWeight.bold)),
                            
                            ),
                            Align(
                            alignment: Alignment.centerRight,
                              child: IconButton(onPressed: (){},icon: Icon(Icons.menu),color: Colors.white,),
                              ),
                              ],
                              
                            ),
                            Text("lorem ghdfshgvhsgsvss\nfhvsgvbfsfj\bnfbssbvfsvsvhn",style: TextStyle(color:Colors.white,fontSize: 13,fontWeight: FontWeight.normal),),
                            SizedBox(height: 10,),
                            ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.white),onPressed: (){}, child: Text("voir plus",style: TextStyle(color: Colors.black),))
                          ],),
                          ),
                        
                        ),
                      ),
                     
                    ],
                  ),
                ),

                // SizedBox(height: 10),
                 Center(
                   child: Container(
                          alignment: Alignment.center,
                          // margin: EdgeInsets.all(10),
                          // padding: EdgeInsets.all(20),
                          margin: EdgeInsets.only(left:15,right:15),
                          // padding: EdgeInsets.all(20),
                          width: double.infinity,
                          height: 300,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(image: AssetImage("images/${pNames[index]}.jpg"),fit: BoxFit.fill),
                          ),
                          // child: Image.asset(""),
                        ),
                 ),
                      
                // SizedBox(height: 10),
                Container(
                  // height: 100,
                    decoration: BoxDecoration(
                      color: Colors.transparent
                    ),
                    child: Column(children: [
                      // Row(children: [Padding(padding:EdgeInsets.only(top: 10,left: 20),child:Text("Apartement",style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold,color: Colors.black)),),],),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Padding(padding: EdgeInsets.only(left:10,top: 20),
                          child: Row(children: [Icon(CupertinoIcons.money_dollar_circle_fill,size: 25,color:Colors.orange),SizedBox(width: 5,),Text("prix du loyer",style:TextStyle(color:Colors.orange))],) 
                          ),
                          Padding(padding: EdgeInsets.only(left:10,top: 20),
                          child:Row(children: [Icon(CupertinoIcons.rectangle_fill_on_rectangle_fill,size:25,color:Colors.orange),SizedBox(width: 10,),Text("Place            ",style:TextStyle(color:Colors.orange))],) 
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Padding(padding: EdgeInsets.only(left:10,top: 20),
                          child: Row(children: [Icon(Icons.place,size:25,color:Colors.orange),SizedBox(width: 10,),Text("Localisation",style:TextStyle(color:Colors.orange))],) 
                          ),
                          Padding(padding: EdgeInsets.only(left:10,top: 20),
                          child: Row(children: [Icon(Icons.screenshot_monitor,size:25,color:Colors.orange),SizedBox(width: 10,),Text("Surface        ",style:TextStyle(color:Colors.orange))],) 
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Padding(padding: EdgeInsets.only(left:10,top: 20),
                          child: Row(children: [Icon(CupertinoIcons.cube_box_fill,size:25,color:Colors.orange),SizedBox(width: 10,),Text("Meuble   ",style:TextStyle(color:Colors.orange))],) 
                          ),
                          Padding(padding: EdgeInsets.only(left:10,top: 20),
                          child: Row(children: [Icon(CupertinoIcons.person_2,size:25,color:Colors.orange),SizedBox(width: 10,),Text("Colocation",style:TextStyle(color:Colors.orange))],) 
                          ),
                        ],
                      )
                    ]),
                ),
                 Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent
                    ),
                    margin: EdgeInsets.only(left:30,top:10),
                    child:Column(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                       Align(
                          alignment: Alignment.topLeft,
                          child:
                       Text("Descriptif",style:TextStyle(color:Colors.orange,fontSize:15,fontWeight: FontWeight.bold)),
                        ),SizedBox(height: 10,),
                        Text("Lorem Ipsum is simply dummy\ntext of the printing and typesetting\ntext of the printing and typesettingtext of the printing \nand typesetting\ntext of the printing and typesetting\nindustry. Lorem Ipsum has\ntext of the printing and typesetting\nindustry. Lorem Ipsum has \n\n",style: TextStyle(color: Colors.black,fontSize: 15),),
                       ],
                    )
                  ),  
               
      ],
      ),
         ],
       ),
        ListView(
          scrollDirection: Axis.vertical,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height/2,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    image: DecorationImage(image: AssetImage('images/LogoNlogement.png'),fit: BoxFit.contain)
                  ),
                  child: ListView(
                    scrollDirection: Axis.vertical,
                    children: [
                       Container(
                        height: 300,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(color: Colors.orange.shade200,blurRadius: 3.0,spreadRadius: 4.2),
                      ],
                      image: DecorationImage(image: AssetImage('images/maisonNight.jpg'),fit: BoxFit.cover),
                      borderRadius: BorderRadius.only(bottomRight: Radius.circular(30),bottomLeft: Radius.circular(30))
                    ),
                    child: Container(
                           child: 
                          Center(
                            child: 
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                            SizedBox(height: 10,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text("ANNONCES",style: TextStyle(color:Colors.white,fontSize: 20,fontWeight: FontWeight.bold)),
                            
                            ),
                            Align(
                            alignment: Alignment.centerRight,
                              child: IconButton(onPressed: (){},icon: Icon(Icons.menu),color: Colors.white,),
                              ),
                              ],
                              
                            ),
                            Text("lorem ghdfshgvhsgsvss\nfhvsgvbfsfj\bnfbssbvfsvsvhn",style: TextStyle(color:Colors.white,fontSize: 13,fontWeight: FontWeight.normal),),
                            SizedBox(height: 10,),
                            ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.white),onPressed: (){}, child: Text("voir plus",style: TextStyle(color: Colors.black),))
                          ],),
                          ),
                        
                        ),
                      ),
                     
                      
                    ],
                  ),
                ),

                // SizedBox(height: 10),
                 Center(
                   child: Container(
                          alignment: Alignment.center,
                          // padding: EdgeInsets.all(20),
                          margin: EdgeInsets.only(left:15,right:15),
                          // padding: EdgeInsets.all(20),
                          width: double.infinity,
                          height: 300,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(image: AssetImage("images/${pNames[index]}.jpg"),fit: BoxFit.fill),
                          ),
                          // child: Image.asset(""),
                        ),
                 ),
             Container(
                  // height: 100,
                    decoration: BoxDecoration(
                      color: Colors.transparent
                    ),
                    child: Column(children: [
                      // Row(children: [Padding(padding:EdgeInsets.only(top: 10,left: 20),child:Text("Apartement",style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold,color: Colors.black)),),],),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Padding(padding: EdgeInsets.only(left:10,top: 20),
                          child: Row(children: [Icon(CupertinoIcons.money_dollar_circle_fill,size: 25,color:Colors.orange),SizedBox(width: 5,),Text("prix du loyer",style:TextStyle(color:Colors.orange))],) 
                          ),
                          Padding(padding: EdgeInsets.only(left:10,top: 20),
                          child:Row(children: [Icon(CupertinoIcons.rectangle_fill_on_rectangle_fill,size:25,color:Colors.orange),SizedBox(width: 10,),Text("Place            ",style:TextStyle(color:Colors.orange))],) 
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Padding(padding: EdgeInsets.only(left:10,top: 20),
                          child: Row(children: [Icon(Icons.place,size:25,color:Colors.orange),SizedBox(width: 10,),Text("Localisation",style:TextStyle(color:Colors.orange))],) 
                          ),
                          Padding(padding: EdgeInsets.only(left:10,top: 20),
                          child: Row(children: [Icon(Icons.screenshot_monitor,size:25,color:Colors.orange),SizedBox(width: 10,),Text("Surface        ",style:TextStyle(color:Colors.orange))],) 
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Padding(padding: EdgeInsets.only(left:10,top: 20),
                          child: Row(children: [Icon(CupertinoIcons.cube_box_fill,size:25,color:Colors.orange),SizedBox(width: 10,),Text("Meuble   ",style:TextStyle(color:Colors.orange))],) 
                          ),
                          Padding(padding: EdgeInsets.only(left:10,top: 20),
                          child: Row(children: [Icon(CupertinoIcons.person_2,size:25,color:Colors.orange),SizedBox(width: 10,),Text("Colocation",style:TextStyle(color:Colors.orange))],) 
                          ),
                        ],
                      )
                    ]),
                ),
                 Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent
                    ),
                    margin: EdgeInsets.only(left:30,top:10),
                    child:Column(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child:
                       Text("Descriptif",style:TextStyle(color:Colors.orange,fontSize:15,fontWeight: FontWeight.bold)),
                        ),SizedBox(height: 10,),
                        Text("Lorem Ipsum is simply dummy\ntext of the printing and typesetting\ntext of the printing and typesettingtext of the printing \nand typesetting\ntext of the printing and typesetting\nindustry. Lorem Ipsum has\ntext of the printing and typesetting\nindustry. Lorem Ipsum has \n\n",style: TextStyle(color: Colors.black,fontSize: 15),),
                       ],
                    )
                  ),  
                
      ],
      ),
          ],
        ),
        ListView(
          scrollDirection: Axis.vertical,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height/2,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    image: DecorationImage(image: AssetImage('images/LogoNlogement.png'),fit: BoxFit.contain)
                  ),
                  child: ListView(
                    scrollDirection: Axis.vertical,
                    children: [
                       Container(
                        height: 300,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(color: Colors.orange.shade200,blurRadius: 3.0,spreadRadius: 4.2),
                      ],
                      image: DecorationImage(image: AssetImage('images/maisonNight.jpg'),fit: BoxFit.cover),
                      borderRadius: BorderRadius.only(bottomRight: Radius.circular(30),bottomLeft: Radius.circular(30))
                    ),
                    child: Container(
                        
                           child: 
                          Center(
                            child: 
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                            SizedBox(height: 10,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text("ANNONCES",style: TextStyle(color:Colors.white,fontSize: 20,fontWeight: FontWeight.bold)),
                            
                            ),
                            Align(
                            alignment: Alignment.centerRight,
                              child: IconButton(onPressed: (){},icon: Icon(Icons.menu),color: Colors.white,),
                              ),
                              ],
                              
                            ),
                            Text("lorem ghdfshgvhsgsvss\nfhvsgvbfsfj\bnfbssbvfsvsvhn",style: TextStyle(color:Colors.white,fontSize: 13,fontWeight: FontWeight.normal),),
                            SizedBox(height: 10,),
                            ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.white),onPressed: (){}, child: Text("voir plus",style: TextStyle(color: Colors.black),))
                          ],),
                          ),
                        
                        ),
                      ),
                    
                      
                    ],
                  ),
                ),
                  Center(
                        child: Container(
                          alignment: Alignment.center,
                          margin: EdgeInsets.only(left:15,right:15),
                          // padding: EdgeInsets.all(20),
                          width: double.infinity,
                          height: 300,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(image: AssetImage("images/${pNames[index]}.jpg"),fit: BoxFit.fill),
                          ),
                          // child: Image.asset(""),
                        ),
                      ),
                Container(
                  // height: 100,
                    decoration: BoxDecoration(
                    color: Colors.transparent,
                    // image: DecorationImage(image: AssetImage('images/LogoNlogement.png'),fit: BoxFit.fill)
                  ),
                    child: Column(children: [
                      // Row(children: [Padding(padding:EdgeInsets.only(top: 10,left: 20),child:Text("Apartement",style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold,color: Colors.black)),),],),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Padding(padding: EdgeInsets.only(left:10,top: 20),
                          child: Row(children: [Icon(CupertinoIcons.money_dollar_circle_fill,size: 25,color:Colors.orange),SizedBox(width: 5,),Text("prix du loyer",style:TextStyle(color:Colors.orange))],) 
                          ),
                          Padding(padding: EdgeInsets.only(left:10,top: 20),
                          child:Row(children: [Icon(CupertinoIcons.rectangle_fill_on_rectangle_fill,size:25,color:Colors.orange),SizedBox(width: 10,),Text("Place            ",style:TextStyle(color:Colors.orange))],) 
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Padding(padding: EdgeInsets.only(left:10,top: 20),
                          child: Row(children: [Icon(Icons.place,size:25,color:Colors.orange),SizedBox(width: 10,),Text("Localisation",style:TextStyle(color:Colors.orange))],) 
                          ),
                          Padding(padding: EdgeInsets.only(left:10,top: 20),
                          child: Row(children: [Icon(Icons.screenshot_monitor,size:25,color:Colors.orange),SizedBox(width: 10,),Text("Surface        ",style:TextStyle(color:Colors.orange))],) 
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Padding(padding: EdgeInsets.only(left:10,top: 20),
                          child: Row(children: [Icon(CupertinoIcons.cube_box_fill,size:25,color:Colors.orange),SizedBox(width: 10,),Text("Meuble   ",style:TextStyle(color:Colors.orange))],) 
                          ),
                          Padding(padding: EdgeInsets.only(left:10,top: 20),
                          child: Row(children: [Icon(CupertinoIcons.person_2,size:25,color:Colors.orange),SizedBox(width: 10,),Text("Colocation",style:TextStyle(color:Colors.orange))],) 
                          ),
                        ],
                      )
                    ]),
                ),
                 Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent
                    ),
                    margin: EdgeInsets.only(left:30,top:10),
                    child:Column(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child:
                       Text("Descriptif",style:TextStyle(color:Colors.orange,fontSize:15,fontWeight: FontWeight.bold)),
                        ),SizedBox(height: 10,),
                        Text("Lorem Ipsum is simply dummy\ntext of the printing and typesetting\ntext of the printing and typesettingtext of the printing \nand typesetting\ntext of the printing and typesetting\nindustry. Lorem Ipsum has\ntext of the printing and typesetting\nindustry. Lorem Ipsum has \n\n",style: TextStyle(color: Colors.black,fontSize: 15),),
                       ],
                    )
                  ),  
                 
              
      ],
      ),
          ],
        ),
      ][index]
      ),
      // bottomNavigationBar:  Container(
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