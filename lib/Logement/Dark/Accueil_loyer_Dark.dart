import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:studentbankmobile/Logement/Dark/Gestion_logement_Dark.dart';
import 'package:studentbankmobile/Logement/Dark/annonce_Dark.dart';
import 'package:studentbankmobile/Logement/Dark/filtre_dark.dart';
import 'package:studentbankmobile/Logement/Dark/location_Dark.dart';
import 'package:studentbankmobile/Logement/Dark/loyer_liste_Dark.dart';

// import 'Gestion_logement.dart';
// import 'annonce.dart';
// import 'loyer_liste.dart';

class AccueilLoyer_Dark extends StatefulWidget {
  const AccueilLoyer_Dark({super.key});

  @override
  State<AccueilLoyer_Dark> createState() => _AccueilLoyer_DarkState();
}

class _AccueilLoyer_DarkState extends State<AccueilLoyer_Dark> {
  @override
  Widget build(BuildContext context) {
    // bool press=false;
    return Scaffold(
      // extendBody: true,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(250),
       child:    Container(
              decoration: const BoxDecoration(
              border: Border(bottom: BorderSide(width: 1,color: Colors.white,)),
                image: DecorationImage(image: AssetImage('images/maisonNight.jpg'),fit: BoxFit.fill),
                borderRadius: BorderRadius.only(bottomRight: Radius.circular(50),bottomLeft: Radius.circular(50))
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
      body: Container(
        margin: const EdgeInsets.all(0),
        padding: const EdgeInsets.all(0),
        decoration: BoxDecoration(
          color: Colors.grey.shade900,
          image: const DecorationImage(image: AssetImage('images/Logo N.png'),fit: BoxFit.contain)
        ),
        // width: double.infinity,
        // height: double.infinity,
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            // Container(
            //   decoration: BoxDecoration(
            //     boxShadow: [
            //       BoxShadow(color: Colors.white,blurRadius: 3.0,spreadRadius: 4.2),
            //     ],
            //     image: DecorationImage(image: AssetImage('images/maisonNight.jpg'),fit: BoxFit.cover),
            //     borderRadius: BorderRadius.only(bottomRight: Radius.circular(30),bottomLeft: Radius.circular(30))
            //   ),
            //   child: ImageSlideshow(
            //         /// Width of the [ImageSlideshow].
            //         width: double.infinity,

            //         /// Height of the [ImageSlideshow].
            //         height: 250,

            //         /// The page to show when first creating the [ImageSlideshow].
            //         initialPage: 0,

            //         /// The color to paint the indicator.
            //         indicatorColor: Colors.red,
                  
            //         /// The color to paint behind th indicator.
            //         indicatorBackgroundColor: Colors.white,

            //         /// The widgets to display in the [ImageSlideshow].
            //         /// Add the sample image file into the images folder
            //         // autoPlayInterval: 1, 
            //         children: [
                    
            //         Center(
            //           child: 
            //         Column(
            //           mainAxisAlignment: MainAxisAlignment.center,
            //           crossAxisAlignment: CrossAxisAlignment.center,
            //           children: [
            //           SizedBox(height: 10,),
            //             Row(
            //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //             children: [
            //           Align(
            //             alignment: Alignment.centerLeft,
            //             child: Text("ANNONCES",style: TextStyle(color:Colors.white,fontSize: 20,fontWeight: FontWeight.bold)),
                      
            //           ),
            //           Align(
            //           alignment: Alignment.centerRight,
            //             child: IconButton(onPressed: (){},icon: Icon(Icons.menu),color: Colors.white,),
            //             ),
            //             ],
                        
            //           ),
            //            Align(
            //           alignment: Alignment.centerRight,
            //             child: IconButton(onPressed: (){},icon: Icon(Icons.favorite_border),color: Colors.white,),
            //             ),
            //           Text("lorem ghdfshgvhsgsvss\nfhvsgvbfsfj\bnfbssbvfsvsvhn",style: TextStyle(color:Colors.white,fontSize: 13,fontWeight: FontWeight.normal),),
            //           SizedBox(height: 10,),
            //           ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.white),onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Annonces_dark()));}, child: Text("voir plus",style: TextStyle(color: Colors.black),))
            //         ],),
            //         ),
            //         Center(
            //           child: Column(
            //           mainAxisAlignment: MainAxisAlignment.center,
            //           crossAxisAlignment: CrossAxisAlignment.center,
            //           children: [
            //           SizedBox(height: 10,),
            //             Row(
            //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //             children: [
            //           Align(
            //             alignment: Alignment.centerLeft,
            //             child: Text("ANNONCES",style: TextStyle(color:Colors.white,fontSize: 20,fontWeight: FontWeight.bold)),
                      
            //           ),
            //           Align(
            //           alignment: Alignment.centerRight,
            //             child: IconButton(onPressed: (){},icon: Icon(Icons.menu),color: Colors.white,),
            //             ),
            //             ],
                        
            //           ),
            //           Align(
            //           alignment: Alignment.centerRight,
            //             child: IconButton(onPressed: (){},icon: Icon(Icons.favorite_border),color: Colors.white,),
            //             ), 
            //           Text("lorem ghdfshgvhsgsvss\nfhvsgvbfsfj\bnfbssbvfsvsvhn",style: TextStyle(color:Colors.white,fontSize: 13,fontWeight: FontWeight.normal),),
            //           SizedBox(height: 10,),
            //           ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.white),onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Annonces_dark()));}, child: Text("voir plus",style: TextStyle(color: Colors.black),))
            //         ],),),
            //         Center(child: 
            //         Column(
            //          mainAxisAlignment: MainAxisAlignment.center,
            //           crossAxisAlignment: CrossAxisAlignment.center,
            //           children: [
            //           SizedBox(height: 10,),
            //             Row(
            //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //             children: [
            //           Align(
            //             alignment: Alignment.centerLeft,
            //             child: Text("ANNONCES",style: TextStyle(color:Colors.white,fontSize: 20,fontWeight: FontWeight.bold)),
                      
            //           ),
            //           Align(
            //           alignment: Alignment.centerRight,
            //             child: IconButton(onPressed: (){},icon: Icon(Icons.menu),color: Colors.white,),
            //             ),
            //             ],
                        
            //           ),
            //            Align(
            //           alignment: Alignment.centerRight,
            //             child: IconButton(onPressed: (){},icon: Icon(Icons.favorite_border),color: Colors.white,),
            //             ), 
            //           Text("lorem ghdfshgvhsgsvss\nfhvsgvbfsfj\bnfbssbvfsvsvhn",style: TextStyle(color:Colors.white,fontSize: 13,fontWeight: FontWeight.normal),),
            //           SizedBox(height: 10,),
            //           ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.white),onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Annonces_dark()));}, child: Text("voir plus",style: TextStyle(color: Colors.black),))
            //         ],),)
            //         ],

            //         /// Called whenever the page in the center of the viewport changes.
            //         onPageChanged: (value) {
            //           print('Page changed: $value');
            //         },
                    
            //         /// Auto scroll interval.
            //         /// Do not auto scroll with null or 0.
            //         // autoPlayInterval: 3000,

            //         /// Loops back to first slide.
            //         isLoop: true,
            //       ),
            // ),
            // // Container(
            //   padding: EdgeInsets.only(top: 20,bottom: 20),
            //   alignment: Alignment.center,
            //   decoration: BoxDecoration(
            //     // boxShadow: BoxShadow(blurRadius: ),
            //   ),
            //   child: 
            // ),
           Center(
                child: Column(
                  // alignment: Alignment.center,
              children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: IconButton(icon: const Icon(Icons.search,color: Colors.white,),onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>const Filtre_dark()));
                        },),
                      ),
                     Container(
                      margin: const EdgeInsets.all(5),
                      padding: const EdgeInsets.all(10),
                      alignment: Alignment.center,
                      width:350,
                      decoration:  BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular((30))),
                      child:Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                           Container(
                      decoration: BoxDecoration(color: Colors.red,borderRadius: BorderRadius.circular(7)),
                      height:35,width: 50,
                      
                      child: 
                    Image.asset('images/🦆 icon _building one_.png',color: Colors.white,),
                    ),
                     Container(
                      child:TextButton(
                      // style: ElevatedButton.styleFrom(backgroundColor: Colors.white,shadowColor: Colors.black),
                      
                        // style:ElevatedButton.styleFrom(primary: Colors.white),
                        onPressed: ()=>
                          Navigator.push(context,MaterialPageRoute(builder: (context)=>const Loyerlist_dark()))
                       , child:const Text("Rechercher un appartement       ",style: TextStyle(fontSize: 16,color: Colors.black),)),
                     )
                        ],
                      )  
                      ),
                // const SizedBox(height: 8,),
                Container(
                      margin: const EdgeInsets.all(5),
                      padding: const EdgeInsets.all(10),
                      alignment: Alignment.center,
                      width:350,
                      decoration:  BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular((30))),
                      child:Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                           Container(
                      decoration: BoxDecoration(color: Colors.red,borderRadius: BorderRadius.circular(7)),
                      height:35,width: 50,
                      
                      child: 
                    Image.asset('images/🦆 icon _building one_.png',color: Colors.white,),
                    ),
                     Container(
                      child:TextButton(
                        onPressed: (){
                        showDialog(context: context, builder: (context)=>const Dialog(child: Text("service indisponible pour le moment"),));
                      }, child:const Text("Assurance                                      ",style: TextStyle(fontSize: 16,color: Colors.black),)),
                     ),
                        ],
                      ),
                  ),
                
                // const SizedBox(height: 8,),
                 Container(
                      margin: const EdgeInsets.all(5),
                      padding: const EdgeInsets.all(10),
                      alignment: Alignment.center,
                      width:350,
                      decoration:  BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular((30))),
                      child:Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                           Container(
                      decoration: BoxDecoration(color: Colors.red,borderRadius: BorderRadius.circular(7)),
                      height:35,width: 50,
                      
                      child: 
                    Image.asset('images/🦆 icon _building one_.png',color: Colors.white,),
                    ),
                     Container(
                      child:TextButton(
                        onPressed: (){}, child:const Text("calcul immobilier                          ",style: TextStyle(fontSize: 16,color: Colors.black),)),
                     )
                        ],
                      ),
                  ),
                
               
                // const SizedBox(height: 8,),
                Container(
                      margin: const EdgeInsets.all(5),
                      padding: const EdgeInsets.all(10),
                      alignment: Alignment.center,
                      width:350,
                      decoration:  BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular((30))),
                      child:Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                           Container(
                      decoration: BoxDecoration(color: Colors.red,borderRadius: BorderRadius.circular(7)),
                      height:35,width: 50,
                      
                      child: 
                    Image.asset('images/🦆 icon _building one_.png',color: Colors.white,),
                    ),
                     Container(
                      child:TextButton(
                        onPressed: ()=>
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>const GestionLog_dark())),
                     child:const Text("Gérer mes logements                   ",style: TextStyle(fontSize: 16,color: Colors.black),)),
                     )
                      ],
                    ),
                ),
               
                // const SizedBox(height: 8,),
                 Container(
                      margin: const EdgeInsets.all(5),
                      padding: const EdgeInsets.all(10),
                      alignment: Alignment.center,
                      width:350,
                      decoration:  BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular((30))),
                      child:Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                           Container(
                      decoration: BoxDecoration(color: Colors.red,borderRadius: BorderRadius.circular(7)),
                      height:35,width: 50,
                      
                      child: 
                    Image.asset('images/🦆 icon _building one_.png',color: Colors.white,),
                    ),
                     Container(
                      child:TextButton( onPressed: ()=>
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>const location_dark()))
                      , child:const Text("Mes Documents                             ",style: TextStyle(fontSize: 16,color: Colors.black),)),
                     )
                      ],
                    ),
                ),

              ],
              ),
              ),
          ],
        ),
      ),
     
    );
  }
}