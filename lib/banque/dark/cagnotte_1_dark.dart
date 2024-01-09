import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:studentbankmobile/banque/dark/cagnotte_2_dark.dart';

class cagnotte_1_dark extends StatefulWidget {
  const cagnotte_1_dark({super.key});

  @override
  State<cagnotte_1_dark> createState() => _cagnotte_1_darkState();
}

class _cagnotte_1_darkState extends State<cagnotte_1_dark> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(image:AssetImage("images/filter_banque_black.png"),fit: BoxFit.cover) ,
        ),
        child: ListView(
          children:[
            Container(
              margin: const EdgeInsets.only(top: 20,left: 5,bottom: 5),
              alignment: Alignment.topLeft,
              child: IconButton(icon: const Icon(Icons.arrow_back,color: Colors.white,),onPressed: ()=>Navigator.pop(context),),
            ),
            Container(
              margin:const EdgeInsets.only(bottom: 5),
              alignment: Alignment.center,
              child:const Column(
                children: [
                  Text("Mes différentes",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                  Text(" cagnottes",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
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
                side: const BorderSide(width: 1, color: Color(0xFFED174C)),
                borderRadius: BorderRadius.circular(20),
                ),
                ),
                child: const CupertinoSearchTextField(
                ),
              ),
            ),
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
           onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>const cagnotte_2_dark()))
           ),
      ),
    );
  }
}