import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:studentbankmobile/Logement/Dark/DeclarerSinistre_dark.dart';
import 'package:studentbankmobile/Logement/Dark/Demande_location_dark.dart';
import 'package:studentbankmobile/Logement/Dark/Deposer_preavis_dark.dart';
import 'package:studentbankmobile/Logement/Dark/demander_caution_dark.dart';
import 'package:studentbankmobile/Logement/light/demander_caution.dart';


class GestionLog_dark extends StatefulWidget {
  const GestionLog_dark({super.key});

  @override
  State<GestionLog_dark> createState() => _GestionLog_darkState();
}

class _GestionLog_darkState extends State<GestionLog_dark> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(0),
        padding: EdgeInsets.all(0),
        decoration: BoxDecoration(
          color: Colors.grey.shade900,
          image: DecorationImage(image: AssetImage('images/Logo N.png'),fit: BoxFit.contain)
        ),
        // width: double.infinity,
        // height: double.infinity,
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Container(
              height: 300,
              decoration: BoxDecoration(
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
                      SizedBox(height: 10,),
                      Align(
                        alignment: Alignment.center,
                        child: Text("Gestion des Logements",style: TextStyle(color:Colors.white,fontSize: 20,fontWeight: FontWeight.bold)),
                      
                      ),
                      Text("lorem ghdfshgvhsgsvss\nfhvsgvbfsfj\bnfbssbvfsvsvhn",style: TextStyle(color:Colors.white,fontSize: 13,fontWeight: FontWeight.normal),),
                      SizedBox(height: 10,),
                      ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.white),onPressed: (){}, child: Text("voir plus",style: TextStyle(color: Colors.black),))
                    ],),
                    ),
                    ],

                    /// Called whenever the page in the center of the viewport changes.
                    onPageChanged: (value) {
                      print('Page changed: $value');
                    },
                    
                    /// Auto scroll interval.
                    /// Do not auto scroll with null or 0.
                    // autoPlayInterval: 3000,

                    /// Loops back to first slide.
                    isLoop: true,
                  ),
            ),
            Container(
              padding: EdgeInsets.all(30),
              // alignment: Alignment.center,
              decoration: BoxDecoration(
                // boxShadow: BoxShadow(blurRadius: ),
              ),
              child: Center(
                child: Column(
                  // alignment: Alignment.center,
              children: [
                    Container(
                      margin: EdgeInsets.all(5),
                      padding: EdgeInsets.all(10),
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
                         // style:ElevatedButton.styleFrom(primary: Colors.white),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>DeclarerSinistre_dark()));
                      }, child:const Text("Déclarer un sinistre                       ",style: TextStyle(fontSize: 14,color: Colors.black),)),
                     )
                        ],
                      )  
                      ),
                   Container(
                      margin: EdgeInsets.all(5),
                      padding: EdgeInsets.all(10),
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
                        
                        // style:ElevatedButton.styleFrom(primary: Colors.white),
                        onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Demandelocation_dark()));
                      }, child:const Text("Demander Location                      ",style: TextStyle(fontSize: 14,color: Colors.black),)),
                     )
                        ],
                      )  
                      ),
                // const SizedBox(height: 8,),
                Container(
                      margin: EdgeInsets.all(5),
                      padding: EdgeInsets.all(10),
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
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>DeposerPreavis_dark()));
                       }, child:const Text("Déposer un pré avis                       ",style: TextStyle(fontSize: 14,color: Colors.black),)),
                     )
                        ],
                      ),
                  ),
                
                // const SizedBox(height: 8,),
                Container(
                      margin: EdgeInsets.all(5),
                      padding: EdgeInsets.all(10),
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
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>DemanderCaution_dark()));
                      }, child:const Text("Demander une caution / Garantie",style: TextStyle(fontSize: 14,color: Colors.black),)),
                     )
                        ],
                      ),
                  ),
              ],
              ),
              ),
            ),
          
          ],
        ),
      ),  
    
    );
    
  }
}