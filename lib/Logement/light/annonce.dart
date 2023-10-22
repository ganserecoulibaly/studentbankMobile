import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class Annonces extends StatefulWidget {
  const Annonces({super.key});

  @override
  State<Annonces> createState() => _AnnoncesState();
}

class _AnnoncesState extends State<Annonces> {
  int index=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
        Container(
        margin: EdgeInsets.all(0),
        padding: EdgeInsets.all(0),
        decoration: BoxDecoration(
          color: Colors.white,
          image: DecorationImage(image: AssetImage('images/Logo N.png'),fit: BoxFit.contain)
        ),
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
              margin: EdgeInsets.only(top:30,left: 30,right: 20),
              // padding: EdgeInsets.all(10),
              decoration: BoxDecoration(  
              borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomLeft: Radius.circular(20))),
              child: ImageSlideshow(

            /// Width of the [ImageSlideshow].
            width: double.infinity,

            /// Height of the [ImageSlideshow].
            height: 200,

            /// The page to show when first creating the [ImageSlideshow].
            initialPage: 0,

            /// The color to paint the indicator.
            indicatorColor: Colors.black,
          
            /// The color to paint behind th indicator.
            indicatorBackgroundColor: Colors.grey,

            /// The widgets to display in the [ImageSlideshow].
            /// Add the sample image file into the images folder
            children: [
              Image.asset('images/maison1.jpg',width: double.infinity,),
              Image.asset('images/maison2.jpg',width: double.infinity,),
              Image.asset('images/maison3.jpg',width: double.infinity,),
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
          )
            ),
            Container(
              margin: EdgeInsets.only(left:0),
              child:Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Lorem Ipsum is simply dummy\ntext of the printing and typesetting\nindustry. Lorem Ipsum has \n\n",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),),
                  Text("Lorem Ipsum is simply dummy\ntext of the printing and typesetting\nindustry. Lorem Ipsum has\n\n",style: TextStyle(color: Colors.black,fontSize: 15),),
                  Text("Lorem Ipsum is simply dummy\ntext of the printing and typesetting\nindustry. Lorem Ipsum has",style: TextStyle(color: Colors.black,fontSize: 15),),       
                ],
              )
            ),
             Container(
              margin: EdgeInsets.only(left: 30),
              child:Column(
                children: [
                  Row(
                    children: [
                      Image.asset("images/maison1.jpg",width: 90,height: 90,),
                      SizedBox(width: 3,),
                      Text("Lorem Ipsum is simply dummy\n text of the printing and typesetting\n industry. Lorem Ipsum has \nbeen the industry's standard \ndummy text ever since the 1500s,",style: TextStyle(color: Colors.black,fontSize: 10),),       
                    ],
                  ),
                   Row(
                    children: [
                      Image.asset("images/maison2.jpg",width: 90,height: 90,),
                      SizedBox(width: 3,),
                      Text("Lorem Ipsum is simply dummy\n text of the printing and typesetting\n industry. Lorem Ipsum has \nbeen the industry's standard \ndummy text ever since the 1500s,",style: TextStyle(color: Colors.black,fontSize: 10),),       
                    ],
                  ),
                   Row(
                    children: [
                      Image.asset("images/maison3.jpg",width: 90,height: 90,),
                      SizedBox(width: 3,),
                      Text("Lorem Ipsum is simply dummy\n text of the printing and typesetting\n industry. Lorem Ipsum has \nbeen the industry's standard \ndummy text ever since the 1500s,",style: TextStyle(color: Colors.black,fontSize: 10),),       
                    ],
                  )
                 ],
              )
            ),
            
        ]
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
                        IconButton(onPressed: (){}, icon:Image.asset("images/Acceuil_icone.png"),iconSize: 50,),
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