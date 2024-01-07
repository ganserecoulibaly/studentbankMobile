import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Filtre_dark extends StatefulWidget {
  const Filtre_dark({super.key});

  @override
  State<Filtre_dark> createState() => _Filtre_darkState();
}

class _Filtre_darkState extends State<Filtre_dark> {
   late  TextEditingController _Location;
    late TextEditingController _meuble;
    late TextEditingController _Surface;
    late TextEditingController _place; 
    late TextEditingController _prixmin;
    late TextEditingController _prixmax;
   @override
  void initState() {
    super.initState();
    _Location = TextEditingController();
    _meuble = TextEditingController();
    _prixmin = TextEditingController();
    _prixmax = TextEditingController();
    _Surface = TextEditingController();
    _place = TextEditingController();
  }

  @override
  void dispose() {
    _Location.dispose();
    _meuble.dispose();
    _Surface.dispose();
    _place.dispose();
    _prixmax.dispose();
    _prixmin.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: 
         Colors.grey.shade900,
        
        image: const DecorationImage(image: AssetImage("images/darkFilter.jpg",),fit: BoxFit.fill,),
        ),
        child: ListView(
          // scrollDirection: Axis.vertical,
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Image.asset('images/StudentBank - Logotype - Version quadrichrome dégradé-01 2.png'),
            ),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.all(10),
                  child: const Align(
                    
                    alignment: Alignment.topLeft,
                    child: Text("Filtres",style: TextStyle(color: Colors.white,fontSize:30,fontWeight: FontWeight.bold),),
                  ),
                ),
                const SizedBox(width: 200,),
                Container(
                  child: const Align(
                    alignment: Alignment.topRight,
                    child: Icon(Icons.notifications,color: Colors.white,size: 50,),
                    ),
                )
              ],
            ),
          Container(
              margin: const EdgeInsets.only(left: 10),
              child: Column(
                children: [
                   Padding(padding: const EdgeInsets.only(left:10,top: 20),
                        child: Row(
                          children: [
                            const Icon(CupertinoIcons.money_dollar_circle_fill,size: 25,color:Colors.white)
                            ,const SizedBox(width: 5,),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.white
                              ),
                              child: SizedBox(
                            width: 50,
                            height: 50,
                            child: TextField(
                              textAlign: TextAlign.center,
                              controller: _prixmin,
                              decoration: const InputDecoration(
                                // border: OutlineInputBorder(),
                                labelText: '  min',
                                labelStyle: TextStyle(color: Colors.black)
                              ),
                            ),)
                            ),
                            const SizedBox(width: 50),
                            const SizedBox(child:Text("et")),
                            const SizedBox(width: 50),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.white
                              ),
                              child: SizedBox( 
                            width: 50,
                            height: 50,
                            child: TextField(
                              textAlign: TextAlign.center,
                              controller: _prixmax,
                              decoration: const InputDecoration(
                                // border: OutlineInputBorder(),
                                labelText: '  max',
                                labelStyle: TextStyle(color: Colors.black)
                              ),
                            ),)
                            ),
                            ],) 
                        ),
                        Padding(padding: const EdgeInsets.only(left:10,top: 20),
                        child:Row(
                          children: [
                            const Icon(CupertinoIcons.rectangle_fill_on_rectangle_fill,size:25,color:Colors.white)
                            ,const SizedBox(width: 10,),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.white
                              ),
                              child:  SizedBox(
                                width: 100,
                                child: TextField(
                                  textAlign: TextAlign.center,
                                  controller: _place,
                                  decoration: const InputDecoration(
                                    labelText: '  Place',
                                    labelStyle: TextStyle(color: Colors.black)
                                  ),
                            ),)
                             ),
                           
                            ],) 
                        ),
                 Padding(padding: const EdgeInsets.only(left:10,top: 20),
                        child: Row(
                          children: [
                            const Icon(Icons.place,size:25,color:Colors.white),
                            const SizedBox(width: 10,),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.white
                              ),
                              child: SizedBox(
                                width: 100,
                                child: TextField(
                                  textAlign: TextAlign.center,
                                  controller: _Location,
                                  decoration: const InputDecoration(
                                // border: OutlineInputBorder(),
                                labelText: ' Location', 
                                labelStyle: TextStyle(color: Colors.black)
                              ),
                            ),)
                            ),
                           ],) 
                        ),
                        Padding(padding: const EdgeInsets.only(left:10,top: 20),
                        child: Row(
                          children: [
                            const Icon(Icons.screenshot_monitor,size:25,color:Colors.white),
                            const SizedBox(width: 10,),
                             Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.white
                              ),
                              child: SizedBox(
                                width: 100,
                                child: TextField(
                                  textAlign: TextAlign.center,
                                  controller: _Surface,
                                  decoration: const InputDecoration(
                                // border: OutlineInputBorder(),
                                labelText: ' Surface', 
                                labelStyle: TextStyle(color: Colors.black)
                              ),
                            ),)
                            ), 
                            ],
                            ) 
                        ),
                   Padding(padding: const EdgeInsets.only(left:10,top: 20),
                        child: Row(children: [
                          const Icon(CupertinoIcons.cube_box_fill,size:25,color:Colors.white),
                          const SizedBox(width: 10,),
                          Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.white
                              ),
                              child:  SizedBox(
                                width: 100,
                                child: TextField(
                                  textAlign: TextAlign.center,
                                  controller: _meuble,
                                  decoration: const InputDecoration(
                                    labelText: ' meuble', 
                                    labelStyle: TextStyle(color: Colors.black)
                                  ),
                            ),)
                            ),
                            ],) 
                        ),
                      Container(
                        decoration: const BoxDecoration(color: Colors.white),
                        child: Center(
                           child: TextButton(child: const Text("Continuer",style: TextStyle(color: Colors.black),),
                           onPressed: (){
                            Navigator.pop(context);
                           },
                          ),
                        )
                      )  
                ],
              ),
            )
        
          ],
        ),
      ),
    );
  }
}