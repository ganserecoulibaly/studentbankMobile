import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:studentbankmobile/Logement/light/filtre.dart';
import 'package:studentbankmobile/Logement/light/location.dart';
import 'package:studentbankmobile/mobilite/dark/Demande_accueil_dark.dart';
import 'package:studentbankmobile/mobilite/dark/admission_dark.dart';
import 'package:studentbankmobile/mobilite/dark/demande_admission_insc_dark.dart';
import 'package:studentbankmobile/mobilite/dark/demande_visa_dark.dart';
import 'package:studentbankmobile/mobilite/dark/etudiant_Etranger_internationnaux_dark.dart';
import 'package:studentbankmobile/mobilite/light/Demande_accueil.dart';
import 'package:studentbankmobile/mobilite/light/admission.dart';
import 'package:studentbankmobile/mobilite/light/demande_admission.dart';
import 'package:studentbankmobile/mobilite/light/demande_admission_insc.dart';
import 'package:studentbankmobile/mobilite/light/Etudiant_etranger_internationaux.dart';
import 'package:studentbankmobile/mobilite/light/visa.dart';
import 'package:studentbankmobile/widgets/change_Mode.dart';

class Accueil_mobilite_dark extends StatefulWidget {
  const Accueil_mobilite_dark({super.key});

  @override
  State<Accueil_mobilite_dark> createState() => _Accueil_mobilite_darkState();
}

class _Accueil_mobilite_darkState extends State<Accueil_mobilite_dark> {
  String _drop1value="Etudiant Europeens erasmus";
  String _drop2value="Etudiant etrangers et internationaux";
  var list=["Etudiant Europeens erasmus","Visa","Assurance et voyage","Accueil et  imigration"];
  var list2=["Etudiant etrangers et internationaux","Université",'Visa',"Assurance et voyage","Accueil et  imigration"];
  @override
  Widget build(BuildContext context) {
    bool press=false;
    
    return Scaffold(
      extendBody: true,
      appBar: PreferredSize(preferredSize: Size.fromHeight(300), child:   Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(color: Colors.pink.shade200,blurRadius: 3.0,spreadRadius: 4.2),
                ],
                image: DecorationImage(image: AssetImage('images/mobilite_3.jpg'),fit: BoxFit.fill),
                borderRadius: BorderRadius.only(bottomRight: Radius.circular(30),bottomLeft: Radius.circular(30))
              ),
              child: ImageSlideshow(
                    /// Width of the [ImageSlideshow].
                    width: double.infinity,

                    /// Height of the [ImageSlideshow].
                    height: 350,

                    /// The page to show when first creating the [ImageSlideshow].
                    initialPage: 0,

                    /// The color to paint the indicator.
                    indicatorColor: Colors.pink.shade200,
                  
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
                        child: Text("Actualité",style: TextStyle(color:Colors.white,fontSize: 20,fontWeight: FontWeight.bold)),
                      
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
                        child: Text("Actualité",style: TextStyle(color:Colors.white,fontSize: 20,fontWeight: FontWeight.bold)),
                      
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
           ),
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
                        border: Border.all(color: Colors.white,width: 2),
                        color: Colors.pink.shade100
                      ),
                      width: 330,
                     child: DropdownButton(
                            items:list.map((String items){
                              return DropdownMenuItem(child: Text(items,style: TextStyle(fontSize: 18)),value: items,);
                            }).toList(),
                           value: _drop1value,
                           onChanged: (String? value) {
                                  setState(() {
                                    _drop1value= value!;
                                  });
                            if(_drop1value=="Etudiant Europeens erasmus"){
                               Navigator.push(context, MaterialPageRoute(builder: (context)=>etudiant_etranger_internationnaux_dark()));
                            }
                            if(_drop1value=="Visa"){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>demande_visa_dark()));
                            }
                            if(_drop1value=="Accueil et  imigration"){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>demande_accueil_dark()));
                            }
                            if(_drop1value=="Assurance et voyage"){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>admision_dark()));
                            }
                            
                           },
                          //   onTap: (){
                          
                          //  },
                           icon:Icon(Icons.arrow_circle_down),
                           iconSize: 30,
                           iconEnabledColor: Colors.white,
                           isExpanded: true,
                           style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold,),
                          ),
                   ),
                 ),
                 SizedBox(height: 8,),
                  Center(
                   child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white,width: 2),
                        color: Colors.pink.shade100
                      ),
                      width: 330,
                     child: DropdownButton(
                            items:list2.map((String items){
                              return DropdownMenuItem(child: Text(items,style: TextStyle(fontSize: 18),),value: items,);
                            }).toList(),
                           value: _drop2value,
                           onChanged: (String? value) {
                                  setState(() {
                                    _drop2value= value!;
                                  });
                                      if(_drop2value=="Etudiant etrangers et internationaux"){
                               Navigator.push(context, MaterialPageRoute(builder: (context)=>etudiant_etranger_internationnaux_dark()));
                            }
                                   if(_drop2value=="Visa"){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>demande_visa_dark()));
                            } 
                            if(_drop2value=="Accueil et  imigration"){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>demande_accueil_dark()));
                            }
                            if(_drop2value=="Université"){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>demandeAdmission_ins_dark()));
                            }
                            if(_drop2value=="Assurance et voyage"){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>admision_dark()));
                            }
                           },
                           icon:Icon(Icons.arrow_circle_down),
                           iconSize: 30,
                           iconEnabledColor: Colors.white,
                           isExpanded: true,
                           style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold,),
                           ),
                   ),
                 ),
                const SizedBox(height: 8,),
                 Center(
                   child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.pink.shade100
                      ),
                      width: 330,
                     child:Column(
                      children: [
                        Center(child: TextButton(onPressed: (){}, child: Text("My Buddy",style: TextStyle(color: Colors.red,fontSize: 16),) )),
                        // SizedBox(width: 120,),
                        // Expanded(child:Icon(Icons.arrow_drop_down,color: Colors.red,size: 30,) )
                        
                      ],
                     )
                   ),
                 ),
                const SizedBox(height: 8,),
               Center(
                   child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.pink.shade100
                      ),
                      width: 330,
                     child: Column(
                      children: [
                        Center(child: TextButton(onPressed: (){}, child: Text("Nos Services",style: TextStyle(color: Colors.red,fontSize: 16),) )),
                        //  SizedBox(width: 100,),
                        // Expanded(child:Icon(Icons.arrow_drop_down,color: Colors.red,size: 30,), )
                        
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
   
    );
  }
}