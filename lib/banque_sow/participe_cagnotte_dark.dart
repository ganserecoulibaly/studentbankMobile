import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:studentbankmobile/banque_sow/cagnotte_1.dart';
import 'package:studentbankmobile/banque_sow/cagnotte_2.dart';

class participe_cagnotte_dark extends StatefulWidget {
  const participe_cagnotte_dark({super.key});

  @override
  State<participe_cagnotte_dark> createState() => _participe_cagnotte_darkState();
}

class _participe_cagnotte_darkState extends State<participe_cagnotte_dark> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: const DecorationImage(image:AssetImage("images/filter_banque_black.png"),fit: BoxFit.cover) ,
        ),
        child: ListView(
          children:[
            Container(
              margin: const EdgeInsets.only(top: 20,left: 5,bottom: 5),
              alignment: Alignment.topLeft,
              child: IconButton(icon: Icon(Icons.arrow_back,color: Colors.pink,),onPressed: ()=>Navigator.pop(context),),
            ),
            Container(
              margin:const EdgeInsets.only(bottom: 5),
              alignment: Alignment.center,
              child:const Column(
                children: [
                  Text("Listes des Participants",style: TextStyle(color: Colors.pink,fontSize: 20,fontWeight: FontWeight.bold),),
                  Text("de la cagnotte",style: TextStyle(color: Colors.pink,fontSize: 20,fontWeight: FontWeight.bold),),
                ],
              ),
            ),
            Center(
              child: Container(
                alignment: Alignment.center,
                width: 346,
                height: 37,
                decoration: ShapeDecoration(
                color: Colors.white.withOpacity(0.6000000238418579),
                shape: RoundedRectangleBorder(
                side: BorderSide(width: 1, color: Color(0xFFED174C)),
                borderRadius: BorderRadius.circular(20),
                ),
                ),
                child: CupertinoSearchTextField(
                ),
              ),
            ),
          Container(
            margin: EdgeInsets.only(top:500),
            alignment: Alignment.bottomCenter,
            child: Center(
              child: Row(
                children: [
                   Container(
                    margin: EdgeInsets.all(10),
                      width: 174,
                      height: 45,
                      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      clipBehavior: Clip.antiAlias,
                      decoration: ShapeDecoration(
                          color: Color(0xFFED174C),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                          ),
                          shadows: [
                              BoxShadow(
                                  color: Color(0x3F000000),
                                  blurRadius: 4,
                                  offset: Offset(0, 4),
                                  spreadRadius: 0,
                              )
                          ],
                      ),
                      child:TextButton(onPressed: (){}, child: Text( 'retour',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w300,
                                      height: 0,
                                  )),)
                          
                          ),
                           Container(
                    margin: EdgeInsets.all(10),
                      width: 174,
                      height: 45,
                      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      decoration: ShapeDecoration(
                          color: Color(0xFFED174C),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                          ),
                         
                      ),
                      child:TextButton(onPressed: ()=>
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>cagnotte_1()))
                     , child: Text( 'mes cagnotes',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w300,
                                      height: 0,
                                  )),)
                          
                          ),
                ],
              ),
            ),
          )
          ]
        ),
      ),
      floatingActionButton: Container
      (
        decoration: BoxDecoration(
          border: Border.all(color: Colors.pink),
          borderRadius: BorderRadius.circular(30)
        ),
        child:IconButton (
          icon:Icon(Icons.add,color:Colors.pink.shade100,size: 40,),
           onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>cagnotte_2()))
           ),
      ),
    );
  }
}