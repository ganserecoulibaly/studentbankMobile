import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:studentbankmobile/Logement/light/filtre.dart';
import 'package:studentbankmobile/Logement/light/location.dart';
import 'package:studentbankmobile/widgets/change_Mode.dart';
import '../Dark/Accueil_loyer_Dark.dart';
import 'Gestion_logement.dart';
import 'annonce.dart';
import 'loyer_liste.dart';

class AccueilLoyer extends StatefulWidget {
  const AccueilLoyer({super.key});

  @override
  State<AccueilLoyer> createState() => _AccueilLoyerState();
}

class _AccueilLoyerState extends State<AccueilLoyer> {
  @override
  Widget build(BuildContext context) {
    bool press=false;
    return Scaffold(
      // extendBody: true,
      body: Container(
        margin: EdgeInsets.all(0),
        padding: EdgeInsets.all(0),
        decoration: BoxDecoration(
          color: Colors.white,
          image: DecorationImage(image: AssetImage('images/Logo N.png'),fit: BoxFit.contain)
        ),
        // width: double.infinity,
        // height: double.infinity,
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(color: Colors.orange.shade200,blurRadius: 3.0,spreadRadius: 4.2),
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
                    indicatorColor: Colors.orange,
                  
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
                      ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.white),onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Annonces()));}, child: Text("voir plus",style: TextStyle(color: Colors.black),))
                    ],),
                    ),
                    Center(
                      child: Column(
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
                      ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.white),onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Annonces()));}, child: Text("voir plus",style: TextStyle(color: Colors.black),))
                    ],),),
                    Center(child: 
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
                      ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.white),onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Annonces()));}, child: Text("voir plus",style: TextStyle(color: Colors.black),))
                    ],),)
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
              padding: EdgeInsets.only(top: 20,bottom: 20),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                // boxShadow: BoxShadow(blurRadius: ),
              ),
              child: Center(
                child: Column(
                  // alignment: Alignment.center,
              children: [
                     Align(
                        alignment: Alignment.topLeft,
                        child: IconButton(icon: Icon(Icons.search),onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Filtre()));
                        },),
                      ),
                    Container(
                      padding: EdgeInsets.all(20),
                      alignment: Alignment.center,
                      width:300,
                      decoration:  BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular((8))),
                      child:Row(
                        children: [
                           Container(
                      decoration: BoxDecoration(color: Colors.orange,borderRadius: BorderRadius.circular(7)),
                      height:35,width: 50,
                      
                      child: 
                    Image.asset('images/🦆 icon _building one_.png',color: Colors.white,),
                    ),
                     ElevatedButton(
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.white,elevation: 10,shadowColor: Colors.black),
                      
                        // style:ElevatedButton.styleFrom(primary: Colors.white),
                        onPressed: (){
                        setState(() {
                          Navigator.push(context,MaterialPageRoute(builder: (context)=>Loyerlist()));
                        });
                      }, child:const Text("Rechercher un          \nappartement           ",style: TextStyle(fontSize: 16,color: Colors.black),)),
                    
                        ],
                      )  
                      ),
                // const SizedBox(height: 8,),
                Container(
                      padding: EdgeInsets.all(20),
                      alignment: Alignment.center,
                      width:300,
                      decoration:  BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular((8))),
                      child:Row(
                        children: [
                           Container(
                      decoration: BoxDecoration(color: Colors.orange,borderRadius: BorderRadius.circular(7)),
                      height:35,width: 50,
                      
                      child: 
                    Image.asset('images/🦆 icon _building one_.png',color: Colors.white,),
                    ),
                      ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.white,elevation: 10,shadowColor: Colors.black),
                      onPressed: (){
                        showDialog(context: context, builder: (context)=>Dialog(child: Text("service indisponible pour le moment"),));
                      }, child:const Text("Assurance                ",style: TextStyle(fontSize: 16,color: Colors.black),)),
                      
                        ],
                      ),
                  ),
                
                // const SizedBox(height: 8,),
                 Container(
                      padding: EdgeInsets.all(20),
                      alignment: Alignment.center,
                      width:300,
                      decoration:  BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular((8))),
                      child:Row(
                        children: [
                           Container(
                      decoration: BoxDecoration(color: Colors.orange,borderRadius: BorderRadius.circular(7)),
                      height:35,width: 50,
                      
                      child: 
                    Image.asset('images/🦆 icon _building one_.png',color: Colors.white,),
                    ),
                      ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.white,elevation: 10,shadowColor: Colors.black),
                      onPressed: (){}, child:const Text("Calcule immobiliaire",style: TextStyle(fontSize: 16,color: Colors.black),)),
                     
                        ],
                      ),
                  ),
                
               
                // const SizedBox(height: 8,),
                Container(
                    padding: EdgeInsets.all(20),
                    alignment: Alignment.center,
                    width:300,
                    decoration:  BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular((8))),
                    child:Row(
                      children: [
                          Container(
                    decoration: BoxDecoration(color: Colors.orange,borderRadius: BorderRadius.circular(7)),
                    height:35,width: 50,
                    
                    child: 
                  Image.asset('images/🦆 icon _building one_.png',color: Colors.white,),
                  ),ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.white,elevation: 10,shadowColor: Colors.black),
                    onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>GestionLog()));}, child:const Text("Gerer mes logements",style: TextStyle(fontSize: 16,color: Colors.black),)),
                  
                      ],
                    ),
                ),
               
                // const SizedBox(height: 8,),
                Container(
                    padding: EdgeInsets.all(20),
                    alignment: Alignment.center,
                    width:300,
                    decoration:  BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular((8))),
                    child:Row(
                      children: [
                          Container(
                    decoration: BoxDecoration(color: Colors.orange,borderRadius: BorderRadius.circular(7)),
                    height:35,width: 50,
                    
                    child: 
                  Image.asset('images/🦆 icon _building one_.png',color: Colors.white,),
                  ),ElevatedButton(
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.white,elevation: 10,shadowColor: Colors.black),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>location()));
                      }, child:const Text("Mes Documents          ",style: TextStyle(fontSize: 16,color: Colors.black),)),
                    
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
                        IconButton(onPressed: (){}, icon:Image.asset("images/Acceuil_icone.png",),iconSize: 50,),
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