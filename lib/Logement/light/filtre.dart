import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Filtre extends StatefulWidget {
  const Filtre({super.key});

  @override
  State<Filtre> createState() => _FiltreState();
}

class _FiltreState extends State<Filtre> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Container(
        color: Colors.orange,
        child: Column(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Image.asset('images/StudentBank - Logotype - Version quadrichrome dégradé-01 2.png'),
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.all(10),
                  child: Align(
                    
                    alignment: Alignment.topLeft,
                    child: Text("Filtres",style: TextStyle(color: Colors.white,fontSize:30,fontWeight: FontWeight.bold),),
                  ),
                ),
                SizedBox(width: 200,),
                Container(
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Icon(Icons.notifications,color: Colors.white,size: 50,),
                    ),
                )
              ],
            ),
            Column(
              children: [
                 Padding(padding: EdgeInsets.only(left:10,top: 20),
                      child: Row(
                        children: [
                          Icon(CupertinoIcons.money_dollar_circle_fill,size: 25,color:Colors.white)
                          ,SizedBox(width: 5,),
                          Text("prix du loyer",style:TextStyle(color:Colors.white))],) 
                      ),
                      Padding(padding: EdgeInsets.only(left:10,top: 20),
                      child:Row(
                        children: [
                          Icon(CupertinoIcons.rectangle_fill_on_rectangle_fill,size:25,color:Colors.white)
                          ,SizedBox(width: 10,),
                          Text("Place            ",style:TextStyle(color:Colors.white))],) 
                      ),
               Padding(padding: EdgeInsets.only(left:10,top: 20),
                      child: Row(
                        children: [
                          Icon(Icons.place,size:25,color:Colors.white),
                          SizedBox(width: 10,),
                          Text("Localisation",style:TextStyle(color:Colors.white))],) 
                      ),
                      Padding(padding: EdgeInsets.only(left:10,top: 20),
                      child: Row(
                        children: [
                          Icon(Icons.screenshot_monitor,size:25,color:Colors.white),
                          SizedBox(width: 10,),
                          Text("Surface        ",style:TextStyle(color:Colors.orange))],) 
                      ),
                 Padding(padding: EdgeInsets.only(left:10,top: 20),
                      child: Row(children: [
                        Icon(CupertinoIcons.cube_box_fill,size:25,color:Colors.white),
                        SizedBox(width: 10,),
                        Text("Meuble   ",style:TextStyle(color:Colors.orange))],) 
                      ),
                      Padding(padding: EdgeInsets.only(left:10,top: 20),
                      child: Row(
                        children: [
                          Icon(CupertinoIcons.person_2,size:25,color:Colors.white),
                          SizedBox(width: 10,),
                          Text("Colocation",style:TextStyle(color:Colors.orange))],) 
                      ),
             
              ],
            )
          ],
        ),
      ),
    );
  }
}