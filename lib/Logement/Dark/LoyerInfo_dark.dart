import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class loyerinfo_dark extends StatelessWidget {
  loyerinfo_dark({super.key,required this.index});
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
      appBar: PreferredSize(preferredSize: Size.fromHeight(300), child:  Container(
                  height: MediaQuery.of(context).size.height/2,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade900,
                    image: DecorationImage(image: AssetImage('images/Logo N.png'),fit: BoxFit.contain)
                  ),
                  child: ListView(
                    scrollDirection: Axis.vertical,
                    children: [
                       Container(
                        height: 300,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(color: Colors.white,blurRadius: 3.0,spreadRadius: 5.2),
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
                            SizedBox(height: 10,),
                            ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.white),onPressed: (){}, child: Text("voir plus",style: TextStyle(color: Colors.black),))
                          ],),
                          ),
                        
                        ),
                      ),
                     
                      
                    ],
                  ),
                ),
),
      body: Container(
        child: [
          ListView(
            scrollDirection: Axis.vertical,
            children: [
              Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               
                // SizedBox(height: 10),
                Container(
                  decoration: BoxDecoration(
                    color:Colors.grey.shade900,
                  ),
                  child:Column(
                    children: [
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
                      child: Row(children: [Icon(CupertinoIcons.money_dollar_circle_fill,size: 25,color:Colors.white),SizedBox(width: 5,),Text("prix du loyer",style:TextStyle(color:Colors.red))],) 
                      ),
                      Padding(padding: EdgeInsets.only(left:10,top: 20),
                      child:Row(children: [Icon(CupertinoIcons.rectangle_fill_on_rectangle_fill,size:25,color:Colors.white),SizedBox(width: 10,),Text("Place            ",style:TextStyle(color:Colors.red))],) 
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(padding: EdgeInsets.only(left:10,top: 20),
                      child: Row(children: [Icon(Icons.place,size:25,color:Colors.white),SizedBox(width: 10,),Text("Localisation",style:TextStyle(color:Colors.red))],) 
                      ),
                      Padding(padding: EdgeInsets.only(left:10,top: 20),
                      child: Row(children: [Icon(Icons.screenshot_monitor,size:25,color:Colors.white),SizedBox(width: 10,),Text("Surface        ",style:TextStyle(color:Colors.red))],) 
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(padding: EdgeInsets.only(left:10,top: 20),
                      child: Row(children: [Icon(CupertinoIcons.cube_box_fill,size:25,color:Colors.white),SizedBox(width: 10,),Text("Meuble   ",style:TextStyle(color:Colors.red))],) 
                      ),
                      Padding(padding: EdgeInsets.only(left:10,top: 20),
                      child: Row(children: [Icon(CupertinoIcons.person_2,size:25,color:Colors.white),SizedBox(width: 10,),Text("Colocation",style:TextStyle(color:Colors.red))],) 
                      ),
                    ],
                  )
                ]),
                 Container(
                  
                    margin: EdgeInsets.only(left:30,top:10),
                    child:Column(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child:
                       Text("Descriptif",style:TextStyle(color:Colors.red,fontSize:15,fontWeight: FontWeight.bold)),
                        ),
                       SizedBox(height: 10,),
                        Text("Lorem Ipsum is simply dummy\ntext of the printing and typesetting\ntext of the printing and typesettingtext of the printing \nand typesetting\ntext of the printing and typesetting\nindustry. Lorem Ipsum has\ntext of the printing and typesetting\nindustry. Lorem Ipsum has \n\n",style: TextStyle(color: Colors.white,fontSize: 15),),
                       ],
                    )
                  ),  
              
                    ],
                  )
                )
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
                // Container(
                //   height: MediaQuery.of(context).size.height/2,
                //   width: MediaQuery.of(context).size.width,
                //   decoration: BoxDecoration(
                //     color: Colors.black,
                //     image: DecorationImage(image: AssetImage('images/Logo N.png'),fit: BoxFit.contain)
                //   ),
                //   child: ListView(
                //     scrollDirection: Axis.vertical,
                //     children: [
                //        Container(
                //         height: 300,
                //     decoration: BoxDecoration(
                //       boxShadow: [
                //         BoxShadow(color: Colors.white,blurRadius: 15.0,spreadRadius: 15.2),
                //       ],
                //       image: DecorationImage(image: AssetImage('images/maisonNight.jpg'),fit: BoxFit.cover),
                //       borderRadius: BorderRadius.only(bottomRight: Radius.circular(30),bottomLeft: Radius.circular(30))
                //     ),
                //     child: Container(
                //            child: 
                //           Center(
                //             child: 
                //           Column(
                //             mainAxisAlignment: MainAxisAlignment.center,
                //             crossAxisAlignment: CrossAxisAlignment.center,
                //             children: [
                //             SizedBox(height: 10,),
                //             Row(
                //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //               children: [
                //             Align(
                //               alignment: Alignment.centerLeft,
                //               child: Text("ANNONCES",style: TextStyle(color:Colors.white,fontSize: 20,fontWeight: FontWeight.bold)),
                            
                //             ),
                //             Align(
                //             alignment: Alignment.centerRight,
                //               child: IconButton(onPressed: (){},icon: Icon(Icons.menu),color: Colors.white,),
                //               ),
                //               ],
                              
                //             ),
                //             Text("lorem ghdfshgvhsgsvss\nfhvsgvbfsfj\bnfbssbvfsvsvhn",style: TextStyle(color:Colors.white,fontSize: 13,fontWeight: FontWeight.normal),),
                //             SizedBox(height: 10,),
                //             ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.white),onPressed: (){}, child: Text("voir plus",style: TextStyle(color: Colors.black),))
                //           ],),
                //           ),
                        
                //         ),
                //       ),
                     
                //     ],
                //   ),
                // ),

                // // SizedBox(height: 10),
                  Container(
                  decoration: BoxDecoration(
                    color:Colors.grey.shade900,
                  ),
                  child:Column(
                    children: [
                       Center(
                   child: Container(
                          alignment: Alignment.center,
                          // margin: EdgeInsets.all(3),
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
                // Column(
                //   // crossAxisAlignment:CrossAxisAlignment.center
                //   children: [

                // ]),
                 Container(
                  
                    margin: EdgeInsets.only(left:30,top:10),
                    child:Column(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child:
                       Text("Descriptif",style:TextStyle(color:Colors.red,fontSize:15,fontWeight: FontWeight.bold)),
                        ),
                       SizedBox(height: 10,),
                        Text("Lorem Ipsum is simply dummy\ntext of the printing and typesetting\ntext of the printing and typesettingtext of the printing \nand typesetting\ntext of the printing and typesetting\nindustry. Lorem Ipsum has\ntext of the printing and typesetting\nindustry. Lorem Ipsum has \n\n",style: TextStyle(color: Colors.white,fontSize: 15),),
                       ],
                    )
                  ),  
              
                    ],
                  )
                )
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
                // Container(
                //   height: MediaQuery.of(context).size.height/2,
                //   width: MediaQuery.of(context).size.width,
                //   decoration: BoxDecoration(
                //     color: Colors.black,
                //     image: DecorationImage(image: AssetImage('images/Logo N.png'),fit: BoxFit.contain)
                //   ),
                //   child: ListView(
                //     scrollDirection: Axis.vertical,
                //     children: [
                //        Container(
                //         height: 300,
                //     decoration: BoxDecoration(
                //       boxShadow: [
                //         BoxShadow(color: Colors.white,blurRadius: 15.0,spreadRadius: 15.2),
                //       ],
                //       image: DecorationImage(image: AssetImage('images/maisonNight.jpg'),fit: BoxFit.cover),
                //       borderRadius: BorderRadius.only(bottomRight: Radius.circular(30),bottomLeft: Radius.circular(30))
                //     ),
                //     child: Container(
                //            child: 
                //           Center(
                //             child: 
                //           Column(
                //             mainAxisAlignment: MainAxisAlignment.center,
                //             crossAxisAlignment: CrossAxisAlignment.center,
                //             children: [
                //             SizedBox(height: 10,),
                //             Row(
                //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //               children: [
                //             Align(
                //               alignment: Alignment.centerLeft,
                //               child: Text("ANNONCES",style: TextStyle(color:Colors.white,fontSize: 20,fontWeight: FontWeight.bold)),
                            
                //             ),
                //             Align(
                //             alignment: Alignment.centerRight,
                //               child: IconButton(onPressed: (){},icon: Icon(Icons.menu),color: Colors.white,),
                //               ),
                //               ],
                              
                //             ),
                //             Text("lorem ghdfshgvhsgsvss\nfhvsgvbfsfj\bnfbssbvfsvsvhn",style: TextStyle(color:Colors.white,fontSize: 13,fontWeight: FontWeight.normal),),
                //             SizedBox(height: 10,),
                //             ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.white),onPressed: (){}, child: Text("voir plus",style: TextStyle(color: Colors.black),))
                //           ],),
                //           ),
                        
                //         ),
                //       ),
                     
                      
                //     ],
                //   ),
                // ),

                // SizedBox(height: 10),
                  Container(
                  decoration: BoxDecoration(
                    color:Colors.grey.shade900,
                  ),
                  child:Column(
                    children: [
                       Center(
                   child: Container(
                          alignment: Alignment.center,
                          // margin: EdgeInsets.all(3),
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
                // Column(
                //   // crossAxisAlignment:CrossAxisAlignment.center
                //   children: [

                // ]),
                 Container(
                  
                    margin: EdgeInsets.only(left:30,top:10),
                    child:Column(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child:
                       Text("Descriptif",style:TextStyle(color:Colors.red,fontSize:15,fontWeight: FontWeight.bold)),
                        ),
                       SizedBox(height: 10,),
                        Text("Lorem Ipsum is simply dummy\ntext of the printing and typesetting\ntext of the printing and typesettingtext of the printing \nand typesetting\ntext of the printing and typesetting\nindustry. Lorem Ipsum has\ntext of the printing and typesetting\nindustry. Lorem Ipsum has \n\n",style: TextStyle(color: Colors.white,fontSize: 15),),
                       ],
                    )
                  ),  
              
                    ],
                  )
                )
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
                // Container(
                //   height: MediaQuery.of(context).size.height/2,
                //   width: MediaQuery.of(context).size.width,
                //    decoration: BoxDecoration(
                //     color: Colors.black,
                //     image: DecorationImage(image: AssetImage('images/Logo N.png'),fit: BoxFit.contain)
                //   ),
                //   child: ListView(
                //     scrollDirection: Axis.vertical,
                //     children: [
                //        Container(
                //         height: 300,
                //     decoration: BoxDecoration(
                //       boxShadow: [
                //         BoxShadow(color: Colors.white,blurRadius: 3.5,spreadRadius: 5.2),
                //       ],
                //       image: DecorationImage(image: AssetImage('images/maisonNight.jpg'),fit: BoxFit.cover),
                //       borderRadius: BorderRadius.only(bottomRight: Radius.circular(30),bottomLeft: Radius.circular(30))
                //     ),
                //     child: Container(
                //            child: 
                //           Center(
                //             child: 
                //           Column(
                //             mainAxisAlignment: MainAxisAlignment.center,
                //             crossAxisAlignment: CrossAxisAlignment.center,
                //             children: [
                //             SizedBox(height: 10,),
                //             Row(
                //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //               children: [
                //             Align(
                //               alignment: Alignment.centerLeft,
                //               child: Text("ANNONCES",style: TextStyle(color:Colors.white,fontSize: 20,fontWeight: FontWeight.bold)),
                            
                //             ),
                //             Align(
                //             alignment: Alignment.centerRight,
                //               child: IconButton(onPressed: (){},icon: Icon(Icons.menu),color: Colors.white,),
                //               ),
                //               ],
                              
                //             ),
                //             Text("lorem ghdfshgvhsgsvss\nfhvsgvbfsfj\bnfbssbvfsvsvhn",style: TextStyle(color:Colors.white,fontSize: 13,fontWeight: FontWeight.normal),),
                //             SizedBox(height: 10,),
                //             ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.white),onPressed: (){}, child: Text("voir plus",style: TextStyle(color: Colors.black),))
                //           ],),
                //           ),
                        
                //         ),
                //       ),
                    
                      
                //     ],
                //   ),
                // ),
                
                   Container(
                  decoration: BoxDecoration(
                    color:Colors.grey.shade900,
                  ),
                  child:Column(
                    children: [
                       Center(
                   child: Container(
                          alignment: Alignment.center,
                          // margin: EdgeInsets.all(3),
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
                // Column(
                //   // crossAxisAlignment:CrossAxisAlignment.center
                //   children: [

                // ]),
                 Container(
                  
                    margin: EdgeInsets.only(left:30,top:10),
                    child:Column(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child:
                       Text("Descriptif",style:TextStyle(color:Colors.red,fontSize:15,fontWeight: FontWeight.bold)),
                        ),
                       SizedBox(height: 10,),
                        Text("Lorem Ipsum is simply dummy\ntext of the printing and typesetting\ntext of the printing and typesettingtext of the printing \nand typesetting\ntext of the printing and typesetting\nindustry. Lorem Ipsum has\ntext of the printing and typesetting\nindustry. Lorem Ipsum has \n\n",style: TextStyle(color: Colors.white,fontSize: 15),),
                       ],
                    )
                  ),  
              
                    ],
                  )
                )
              
      ],
      ),
          ],
        ),
      ][index]
      ),
    );
  }
}