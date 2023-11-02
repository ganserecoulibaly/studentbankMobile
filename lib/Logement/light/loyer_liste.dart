import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

import 'LoyerInfo.dart';

class Loyerlist extends StatelessWidget {
  const Loyerlist({super.key});
  @override
  Widget build(BuildContext context) {
  int index=0;
  var pNames=[
    "img (2)",
    "img (2)",
    "img (5)",
    "img (6)",
  ];
    return Scaffold(
      
      // backgroundColor: Colors.white,
      
      body: Container(
         margin: EdgeInsets.all(0),
        padding: EdgeInsets.all(0),
        decoration: BoxDecoration(
          color: Colors.white,
          image: DecorationImage(image: AssetImage('images/Logo N.png'),fit: BoxFit.contain)
        ),
        child: ListView(
          
        children:[ 
           Container(
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
                        child: Text("LOCATIONS",style: TextStyle(color:Colors.white,fontSize: 20,fontWeight: FontWeight.bold)),
                      
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
          Container(
            child: Container(
             
              width: MediaQuery.of(context).size.width,
              child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // SizedBox(height: 20),
                for(int i=0;i<4;i++)
                Container(
                    decoration: BoxDecoration(
                               boxShadow:[
                                BoxShadow(color: Colors.black,blurRadius: 5,blurStyle: BlurStyle.outer),
                                // BoxShadow(blurRadius: 0.1,color: Colors.black,spreadRadius: 0.3),
                                // BoxShadow(blurRadius: 0.1,color: Colors.black,spreadRadius: 0.3),
                                // BoxShadow(blurRadius: 0.1,color: Colors.black,spreadRadius: 0.3),
                                ],
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30),
                  ),
                  margin: EdgeInsets.only(left: 20,right: 20,top: 2),
                  // padding: EdgeInsets.only(right: 10),
                  height: 120,
                  width: MediaQuery.of(context).size.width,
                  // width: 200,
                  
                  child: Row(
                    children: [
                          Container(
                            height: 100,
                            width: MediaQuery.of(context).size.width/2,
                            margin: EdgeInsets.only(left: 5,bottom: 2),
                            padding: EdgeInsets.only(right:10),
                            decoration: BoxDecoration(
                              // border: Border.all(color:Colors.black54),
                               boxShadow:[
                                BoxShadow(blurRadius: 5,color: Colors.white),
                                BoxShadow(blurRadius: 5,color: Colors.white),],
                              // color: Color.fromARGB(255, 235, 236, 236),
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(image: AssetImage("images/${pNames[i]}.jpg",),fit: BoxFit.cover)
                            ),
                            child: GestureDetector(
                              onTap: (){
                                 Navigator.push(context, MaterialPageRoute(builder: (context)=>loyerinfo(index: i)));
                              },
                            ),

                            // child:GestureDetector(
                            //     // child: Image.asset(scale:10,
                            //     //   "images/${pNames[i]}.jpg",
                            //       // fit:BoxFit.cover,
                                  
                            //   ),
                            //   onTap: (){
                            //     Navigator.push(context, MaterialPageRoute(builder: (context)=>loyerinfo(index: i)));
                            //   },
                            // ) 
                          ),
                          Container(
                            decoration: BoxDecoration(
                             
                              color: Colors.white,borderRadius: BorderRadius.circular(8)),
                            // height: 60,
                            width: MediaQuery.of(context).size.width/2.6,
                            child: Padding(
                              padding: EdgeInsets.only(left: 35,bottom: 10,top: 5,),
                              child: Column(
                              
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Icon(Icons.money,size: 20,
                                      ),
                                    
                                      SizedBox(width: 5,),
                                      Text("450",style: TextStyle(
                                        color: Colors.black54,
                                        fontWeight: FontWeight.bold
                                      ),
                                      ),
                                      Icon(Icons.euro,size: 20,),
                                        Text("/mois",style: TextStyle(
                                        color: Colors.black54,
                                        fontWeight: FontWeight.bold
                                      ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Icon(CupertinoIcons.rectangle_fill_on_rectangle_fill,size: 20,
                                      ),
                                    
                                      SizedBox(width: 5),
                                      Text("2 place",style: TextStyle(
                                        color: Colors.black54,
                                        fontWeight: FontWeight.bold
                                      ),
                                      ),
                                      // Icon(Icons.euro)
                                      
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.screenshot_monitor_sharp,size:20
                                      ),
                                    
                                      SizedBox(width: 5),
                                      Text("45 m2",style: TextStyle(
                                        color: Colors.black54,
                                        fontWeight: FontWeight.bold
                                      ),
                                      ),
                                      // Icon(Icons.euro)
                                      
                                    ],
                                  ),
                                 Row(
                                    children: [
                                      Icon(CupertinoIcons.placemark,size: 20,
                                      ),
                                    
                                      SizedBox(width: 5),
                                      Text("Lile",style: TextStyle(
                                        color: Colors.black54,
                                        fontWeight: FontWeight.bold
                                      ),
          
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(left: 33,top: 20),
                                        child: 
                                      Icon(Icons.favorite_border,size:25)
                                      ),
          
                                    ],
                                  ),
                                ],
                              ),
                              ),
                          ),
                    ],
                  ),
                ),

               
              ]
              ),
            )
          ),
         
        ]   
     ),      ),
        
           bottomNavigationBar:  Container(
                  // color: Colors.orange,
                  height: 70,
                  // margin: EdgeInsets.only(top: 0),
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(45),topRight: Radius.circular(45))),
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
                        IconButton(onPressed: (){}, icon:Image.asset("images/Acceuil_icone.png"),iconSize: 50),
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