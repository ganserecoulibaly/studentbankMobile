import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:studentbankmobile/Logement/Dark/LoyerInfo_dark.dart';

class Annonces_dark extends StatefulWidget {
  const Annonces_dark({super.key});

  @override
  State<Annonces_dark> createState() => _Annonces_darkState();
}

class _Annonces_darkState extends State<Annonces_dark> {
  int index=0;
    var pNames=[
    "img (2)",
    "img (2)",
    "img (5)",
    "img (6)",
  ];
  int i=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(300),
       child:  Container(
              decoration: const BoxDecoration(
                boxShadow: [
                   BoxShadow(color: Colors.white,blurRadius: 3.0,spreadRadius: 4.2),
              ],
                image: DecorationImage(image: AssetImage('images/maisonNight.jpg'),fit: BoxFit.cover),
                borderRadius: BorderRadius.only(bottomRight: Radius.circular(30),bottomLeft: Radius.circular(30))
              ),
              child: ImageSlideshow(
                    /// Width of the [ImageSlideshow].
                    width: double.infinity,

                    /// Height of the [ImageSlideshow].
                    height: 250,

                    /// The page to show when first creating the [ImageSlideshow].
                    initialPage: 0,

                    /// The color to paint the indicator.
                    indicatorColor: Colors.red,
                  
                    /// The color to paint behind th indicator.
                    indicatorBackgroundColor: Colors.white,

                    /// Called whenever the page in the center of the viewport changes.
                    onPageChanged: (value) {
                      print('Page changed: $value');
                    },
                    
                    /// Auto scroll interval.
                    /// Do not auto scroll with null or 0.
                    // autoPlayInterval: 3000,

                    /// Loops back to first slide.
                    isLoop: true,

                    /// The widgets to display in the [ImageSlideshow].
                    /// Add the sample image file into the images folder
                    // autoPlayInterval: 1, 
                    children: [
                    
                    Center(
                      child: 
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                      const SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text("ANNONCES",style: TextStyle(color:Colors.white,fontSize: 20,fontWeight: FontWeight.bold)),
                      
                      ),
                      Align(
                      alignment: Alignment.centerRight,
                        child: IconButton(onPressed: (){},icon: const Icon(Icons.menu),color: Colors.white,),
                        ),
                        ],
                        
                      ),
                       Align(
                      alignment: Alignment.centerRight,
                        child: IconButton(onPressed: (){},icon: const Icon(Icons.favorite_border),color: Colors.white,),
                        ),
                      const Text("lorem ghdfshgvhsgsvss\nfhvsgvbfsfj\bnfbssbvfsvsvhn",style: TextStyle(color:Colors.white,fontSize: 13,fontWeight: FontWeight.normal),),
                      const SizedBox(height: 10,),
                      ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.white),onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>const Annonces_dark()));}, child: const Text("voir plus",style: TextStyle(color: Colors.black),))
                    ],),
                    ),
                    Center(
                      child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                      const SizedBox(height: 10,),
                       Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text("ANNONCES",style: TextStyle(color:Colors.white,fontSize: 20,fontWeight: FontWeight.bold)),
                      
                      ),
                      Align(
                      alignment: Alignment.centerRight,
                        child: IconButton(onPressed: (){},icon: const Icon(Icons.menu),color: Colors.white,),
                        ),
                        ],
                        
                      ),
                       Align(
                      alignment: Alignment.centerRight,
                        child: IconButton(onPressed: (){},icon: const Icon(Icons.favorite_border),color: Colors.white,),
                        ),
                      const Text("lorem ghdfshgvhsgsvss\nfhvsgvbfsfj\bnfbssbvfsvsvhn",style: TextStyle(color:Colors.white,fontSize: 13,fontWeight: FontWeight.normal),),
                      const SizedBox(height: 10,),
                      ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.white),onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>const Annonces_dark()));}, child: const Text("voir plus",style: TextStyle(color: Colors.black),))
                    ],),),
                    Center(child: 
                    Column(
                     mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                      const SizedBox(height: 10,),
                       Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text("ANNONCES",style: TextStyle(color:Colors.white,fontSize: 20,fontWeight: FontWeight.bold)),
                      
                      ),
                      Align(
                      alignment: Alignment.centerRight,
                        child: IconButton(onPressed: (){},icon: const Icon(Icons.menu),color: Colors.white,),
                        ),
                        ],
                        
                      ),
                       Align(
                      alignment: Alignment.centerRight,
                        child: IconButton(onPressed: (){},icon: const Icon(Icons.favorite_border),color: Colors.white,),
                        ),
                      const Text("lorem ghdfshgvhsgsvss\nfhvsgvbfsfj\bnfbssbvfsvsvhn",style: TextStyle(color:Colors.white,fontSize: 13,fontWeight: FontWeight.normal),),
                      const SizedBox(height: 10,),
                      ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.white),onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>const Annonces_dark()));}, child: const Text("voir plus",style: TextStyle(color: Colors.black),))
                    ],),)
                    ],
                  ),
            ),
            
      ),
      body: 
        Container(
        margin: const EdgeInsets.all(0),
        padding: const EdgeInsets.all(0),
        decoration: const BoxDecoration(
          color: Colors.black,
          image: DecorationImage(image: AssetImage('images/Logo N.png'),fit: BoxFit.contain)
        ),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
           Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  margin: const EdgeInsets.only(left:20,right: 20,top: 10,bottom: 10),
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      TextButton(onPressed: (){}, child: const Text("Retour",style: TextStyle(color: Colors.white,fontSize: 15),)),
                      ElevatedButton(onPressed: (){},style:ElevatedButton.styleFrom(backgroundColor: Colors.white), child: const Text("Plus d'informations",style: TextStyle(color: Colors.black,fontSize: 15),)),
                      TextButton(onPressed: (){}, child: const Text("Suivant",style: TextStyle(color: Colors.white,fontSize: 15),))     
                    ],
                  )
                ),
             Center(
               child: Container(
                    decoration: const BoxDecoration(  
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomLeft: Radius.circular(20))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                         IconButton(
                                    onPressed: (){
                                      setState(() {
                                      if(i==0){
                                        i=3;
                                      }
                                      i=i-1;
                                      });
                                    }, icon: 
                                    const Icon(Icons.arrow_circle_left,color: Colors.white,)
                                  ),
                         Container(
                              // padding: EdgeInsets.all(20),
                              width: 250,
                              height: 200,
                              decoration: BoxDecoration(
                                // border: Border.all(color:Colors.black54),
                                 boxShadow:const [
                                  BoxShadow(blurRadius: 5,color: Colors.white),
                                  ],
                                // color: Color.fromARGB(255, 235, 236, 236),
                                borderRadius: BorderRadius.circular(10),
                               ),
                              child: GestureDetector(
                                      onTap: (){
                                         Navigator.push(context, MaterialPageRoute(builder: (context)=>loyerinfo_dark(index: i)));
                                      },
                                      child: Image(image: AssetImage("images/${pNames[i]}.jpg"),fit: BoxFit.fill,repeat: ImageRepeat.noRepeat,),
                                    ),
                                 
                              ),
                              IconButton(
                                    onPressed: (){
                                      setState(() {
                                        i=i+1;
                                        if(i==4){
                                          i=1;
                                        }
                                      });
                                    }, 
                                    icon: const Icon(Icons.arrow_circle_right,color: Colors.white,)
                            ),
                      ],
                    ),
                  ),
             ),
                const Column(
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
        ]
        ),
      ),
    );
  }
}