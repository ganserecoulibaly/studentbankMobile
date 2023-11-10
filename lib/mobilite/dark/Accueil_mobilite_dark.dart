import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:studentbankmobile/Logement/light/filtre.dart';
import 'package:studentbankmobile/Logement/light/location.dart';
import 'package:studentbankmobile/widgets/change_Mode.dart';

class Accueil_mobilite_dark extends StatefulWidget {
  const Accueil_mobilite_dark({super.key});

  @override
  State<Accueil_mobilite_dark> createState() => _Accueil_mobilite_darkState();
}

class _Accueil_mobilite_darkState extends State<Accueil_mobilite_dark> {
   String _drop1value="  Etudiant Europeens erasmus";
  String _drop2value="  Etudiant etrangers et internationaux";
  var list=["  Etudiant Europeens erasmus","  Visa","  Assurance et voyage","  Accueil et  imigration"];
   var list2=["  Etudiant etrangers et internationaux","  Universite",'  Visa',"  Assurance et voyage","  Accueil et  imigration"];
  @override
  Widget build(BuildContext context) {
    bool press=false;
    return Scaffold(
      // extendBody: true,
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
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(color: Colors.blue.shade200,blurRadius: 3.0,spreadRadius: 4.2),
                ],
                image: DecorationImage(image: AssetImage('images/mobilite.jpeg'),fit: BoxFit.cover),
                borderRadius: BorderRadius.only(bottomRight: Radius.circular(30),bottomLeft: Radius.circular(30))
              ),
              child: ImageSlideshow(
                    /// Width of the [ImageSlideshow].
                    width: double.infinity,

                    /// Height of the [ImageSlideshow].
                    height: 450,

                    /// The page to show when first creating the [ImageSlideshow].
                    initialPage: 0,

                    /// The color to paint the indicator.
                    indicatorColor: Colors.blue.shade200,
                  
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
                        child: Text("Actualite",style: TextStyle(color:Colors.white,fontSize: 20,fontWeight: FontWeight.bold)),
                      
                      ),
                      Text("lorem ghdfshgvhsgsvss\nfhvsgvbfsfj\bnfbssbvfsvsvhn",style: TextStyle(color:Colors.white,fontSize: 13,fontWeight: FontWeight.normal),),
                      SizedBox(height: 10,),
                    ],),),
                    Center(
                      child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                      SizedBox(height: 10,),
                       Align(
                        alignment: Alignment.center,
                        child: Text("Actualite",style: TextStyle(color:Colors.white,fontSize: 20,fontWeight: FontWeight.bold)),
                      
                      ),
                      Text("lorem ghdfshgvhsgsvss\nfhvsgvbfsfj\bnfbssbvfsvsvhn",style: TextStyle(color:Colors.white,fontSize: 13,fontWeight: FontWeight.normal),),
                      SizedBox(height: 10,),
                    ],),),
                    Center(child: 
                    Column(
                     mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                      SizedBox(height: 10,),
                       Align(
                        alignment: Alignment.center,
                        child: Text("Actualite",style: TextStyle(color:Colors.white,fontSize: 20,fontWeight: FontWeight.bold)),
                      
                      ),
                      Text("lorem ghdfshgvhsgsvss\nfhvsgvbfsfj\bnfbssbvfsvsvhn",style: TextStyle(color:Colors.white,fontSize: 13,fontWeight: FontWeight.normal),),
                      SizedBox(height: 10,),
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
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  // alignment: Alignment.center,
              children: [
                      Center(
                   child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.blue.shade200
                      ),
                      width: 300,
                     child: DropdownButton(
                            items:list.map((String items){
                              return DropdownMenuItem(child: Text(items),value: items,);
                            }).toList(),
                           value: _drop1value,
                           onChanged: (String? value) {
                                  setState(() {
                                    _drop1value= value!;
                                  });
                           },
                           icon:Icon(Icons.arrow_drop_down),
                           iconSize: 30,
                           iconEnabledColor: Colors.red,
                           isExpanded: true,
                           style: TextStyle(color: Colors.red,),
                           ),
                   ),
                 ),
                 SizedBox(height: 8,),
                  Center(
                   child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.blue.shade200
                      ),
                      width: 300,
                     child: DropdownButton(
                            items:list2.map((String items){
                              return DropdownMenuItem(child: Text(items),value: items,);
                            }).toList(),
                           value: _drop2value,
                           onChanged: (String? value) {
                                  setState(() {
                                    _drop2value= value!;
                                  });
                           },
                           icon:Icon(Icons.arrow_drop_down),
                           iconSize: 30,
                           iconEnabledColor: Colors.red,
                           isExpanded: true,
                           style: TextStyle(color: Colors.red,),
                           ),
                   ),
                 ),
                const SizedBox(height: 8,),
                 Center(
                   child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.blue.shade200
                      ),
                      width: 300,
                     child:Row(
                      children: [
                        TextButton(onPressed: (){}, child: Text("My Buddy",style: TextStyle(color: Colors.red),) ),
                        SizedBox(width: 180,),
                        Expanded(child:Icon(Icons.arrow_drop_down,color: Colors.red,size: 30,) )
                        
                      ],
                     )
                   ),
                 ),
                const SizedBox(height: 8,),
               Center(
                   child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.blue.shade200
                      ),
                      width: 300,
                     child: Row(
                      children: [
                        TextButton(onPressed: (){}, child: Text("Nos Services",style: TextStyle(color: Colors.red),) ),
                         SizedBox(width: 160,),
                        Expanded(child:Icon(Icons.arrow_drop_down,color: Colors.red,size: 30,), )
                        
                      ],
                     )
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
                    color: Colors.grey.shade900,
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