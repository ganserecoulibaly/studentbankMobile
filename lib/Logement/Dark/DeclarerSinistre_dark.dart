import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';


class DeclarerSinistre_dark extends StatefulWidget {
  const DeclarerSinistre_dark({super.key});

  @override
  State<DeclarerSinistre_dark> createState() => _DeclarerSinistre_darkState();
}

class _DeclarerSinistre_darkState extends State<DeclarerSinistre_dark> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(300), 
        child:  Container(
              height: 200,
              decoration: BoxDecoration(
                boxShadow: [
                       BoxShadow(color: Colors.white,blurRadius: 3.0,spreadRadius: 4.2),
              ],
                image: DecorationImage(image: AssetImage('images/maisonNight.jpg'),fit: BoxFit.cover),
                borderRadius: BorderRadius.only(bottomRight: Radius.circular(30),bottomLeft: Radius.circular(30))
              ),
              child:  Align(
                        alignment: Alignment.centerLeft,
                        child: Text("Déclarer un sinistre",style: TextStyle(color:Colors.white,fontSize: 20,fontWeight: FontWeight.bold)),
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
                    margin: EdgeInsets.only(left:30,top:20),
                    child:Column(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child:
                       Text("Déclarer un sinistre",style:TextStyle(color:Colors.red,fontSize:15,fontWeight: FontWeight.bold)),
                        ),SizedBox(height: 10,),
                        Text("Lorem Ipsum is simply dummy\ntext of the printing and typesetting\ntext of the printing and typesettingtext of the printing \nand typesetting\ntext of the printing and typesetting\nindustry. Lorem Ipsum has\ntext of the printing and typesetting\nindustry. Lorem Ipsum has \n\n",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 15),),
                       ],
                    )
                  ),  
             Container(
                    margin: EdgeInsets.only(left:30,top:10),
                    child:Column(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child:
                       Text("Emplacement",style:TextStyle(color:Colors.red,fontSize:15,fontWeight: FontWeight.bold)),
                        ),SizedBox(height: 10,),
                        Text("Lorem Ipsum is simply dummy\ntext of the printing and typesetting\ntext of the printing and typesettingtext of the printing \nand typesetting\ntext of the printing and typesetting\nindustry. Lorem Ipsum has\ntext of the printing and typesetting\nindustry. Lorem Ipsum has \n\n",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 15),),
                       ],
                    )
                  ),  
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(onPressed: (){}, icon: Icon(Icons.upload_file,color: Colors.white,),tooltip: "partie 1",),
                  SizedBox(width: 10,),
                  IconButton(onPressed: (){}, icon: Icon(Icons.upload_file,color: Colors.white,),tooltip: "partie 2",),
                  SizedBox(width: 10,),
                  IconButton(onPressed: (){}, icon: Icon(Icons.upload_file,color: Colors.white,),tooltip: "partie 3",)           
                ],
              ),
            ),
            Center(
              child:
               ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.red),onPressed: (){}, child: Text("Contacter le proprietaire",style: TextStyle(color: Colors.black),)),
            ),
            SizedBox(height: 10,)
          ],
        ),
      ),  
      
    );
    
  }
}