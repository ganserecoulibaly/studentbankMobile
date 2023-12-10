import 'package:flutter/material.dart';

class compte_virement_2_dark extends StatefulWidget {
  const compte_virement_2_dark({super.key});

  @override
  State<compte_virement_2_dark> createState() => _compte_virement_2_darkState();
}

class _compte_virement_2_darkState extends State<compte_virement_2_dark> {
  String premon="MR NOM PRENOM";
  String N="00000000001";
  String nom="Nom de compte";
  String numero="1123,85";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        decoration: BoxDecoration(image:DecorationImage(image:AssetImage("images/filter_banque_black.png"),fit: BoxFit.fill)),
        child: ListView(
          children: [
             Container(
              width: double.infinity,
              height: 310,
              decoration: BoxDecoration(
                  // color: Colors.white,
                  border: Border(bottom: BorderSide(color: Colors.white,width: 2)),
                 // boxShadow:[ BoxShadow(blurRadius: 1,spreadRadius: 1,color: Colors.white)],
                  borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50),
                  
                  ),
                  color: Colors.black
                  // gradient: LinearGradient(colors: [Colors.pink.shade100,Colors.pink.shade100,Colors.white]),
                  // shadows: [
                  //     BoxShadow(
                  //         color: Colors,
                  //         blurRadius: 15,
                  //         offset: Offset(0, 4),
                  //         spreadRadius: 0,
                  //           )
                  //         ]
                  
              ),
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 20,right: 20,bottom: 5,top: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(onPressed: (){Navigator.pop(context);}, icon: Icon(Icons.arrow_back,color:Color(0xFFED174C) ,)),
                            Text(
                                'Virement',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w700,
                                    height: 0,
                                ),
                            )
                          ],
                        ),
                         Container(
                          margin: EdgeInsets.only(left: 20),
                          child: Text(
                              'Compte éméteur',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w700,
                                  height: 0,
                              ),
                          ),
                         ),
                      ],
                    ),
                  ),
                  Container(
                    width: 362,
                    height: 192,
                    margin:EdgeInsets.only(left: 20,right: 20),
                    decoration: ShapeDecoration(
                        // color: Colors.black,
                        image: DecorationImage(image: AssetImage("images/carteBanque.png"),fit: BoxFit.cover),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          ),
                      ),
                      child: Container(
                        margin: EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 5),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                    child: Text("${premon}",
                                    style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),
                                    )
                                  ),
                                  Container(
                                    child: Text("${nom}",style: TextStyle(color: Colors.white),),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 5,bottom: 5,left: 20),
                              child: Text("${N}",
                              style: TextStyle(fontSize: 15,color: Colors.white),
                              )
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 5,bottom: 5,left: 20),
                              child: Text("${numero}",
                              style: TextStyle(fontSize: 35,color: Colors.white),
                              )
                            ),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  IconButton(onPressed: (){}, icon: Image.asset("images/graph-up 1.png"),iconSize: 20),
                                  Container(
                                    width: 30,
                                    child: IconButton(onPressed: (){}, icon: Image.asset("images/transfert.png",fit: BoxFit.cover,),iconSize: 5)),
                                 SizedBox(
                                  width: 460,
                                  child: IconButton(onPressed: (){}, icon: Image.asset("images/currency-exchange 1.png"),iconSize: 20,)),
                                ],
                              ),
                            ),
                          ]
                          ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Container(
                        margin: EdgeInsets.only(right: 20),
                        child: const Text(
                            'Gerer mes plafonds',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w500,
                                height: 0,
                            ),
                        ),
                      ),
                  )
                ],
              ),
            ),
            SizedBox(height: 10,),
            Container(
              width: 432,
              height: 56,
              margin: EdgeInsets.only(top:10,bottom: 10),
              decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                      ),
                  ),
                  shadows: [
                      BoxShadow(
                          color: Color(0x63000000),
                          blurRadius: 4,
                          offset: Offset(0, 0),
                          spreadRadius: 0,
                      )
                  ],
              ),
              child: Center(
                child: Text(
                        'Compte bénéficiaire',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w700,
                            height: 0,
                        ),
                    ),
              ),
          ),
          Center(
            child: Container(
              margin: EdgeInsets.only(top:10,bottom: 10),
              width: 300,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                      'NOM  ',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold,
                          height: 0,
                      ),
                  ),
                  Container(
                    
                    width: 300,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child:const Center(
                      child: TextField(
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          hintText: "Nom du bénéfice",
                          hintStyle: TextStyle(color:Colors.black,fontWeight: FontWeight.normal)
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
           Center(
             child: Container(
              margin: EdgeInsets.only(top:10,bottom: 10),
              width: 300,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                      'PRENOM  ',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold,
                          height: 0,
                      ),
                  ),
                  Container(
                    width: 300,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child:const Center(
                      child: TextField(
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          hintText: "Prénom du bénéfice",
                          hintStyle: TextStyle(color:Colors.black,fontWeight: FontWeight.normal),
                        ),
                      ),
                    ),
                  )
                ],
              ),
                       ),
           ),
           Center(
             child: Container(
              margin: EdgeInsets.only(top:10,bottom: 10),
              width: 300,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                      'RIB  ',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold,
                          height: 0,
                      ),
                  ),
                  Container(
                    width: 300,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child:const Center(
                      child: TextField(
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          hintText: "FR00 0001 0002 0003 0004 0005 123",
                          hintStyle: TextStyle(color:Colors.black,fontWeight: FontWeight.normal)
                        ),
                      ),
                    ),
                  )
                ],
              ),
                       ),
           ),
           Center(
             child: Container(
              margin: EdgeInsets.only(top:10,bottom: 10,),
              width: 300,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                      'BIC  ',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold,
                          height: 0,
                      ),
                  ),
                  Container(
                    width:300,
                     decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child:const Center(
                      child: TextField(
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          hintText: "SBJPFRPP",
                          hintStyle: TextStyle(color:Colors.black,fontWeight: FontWeight.normal)
                        ),
                      ),
                    ),
                  )
                ],
              ),
                       ),
           ),
           Center(
              child: Container(
                  margin: EdgeInsets.only(bottom: 10),
                  width: 200,
                  height: 55,
                  padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 11),
                  clipBehavior: Clip.antiAlias,
                  decoration: ShapeDecoration(
                      gradient: LinearGradient(
                          begin: Alignment(0.00, -1.00),
                          end: Alignment(0, 1),
                          colors: [Colors.red.shade900, Colors.orange.shade800],
                      ),
                      shape: RoundedRectangleBorder(
                          side: BorderSide(
                              width: 1,
                              strokeAlign: BorderSide.strokeAlignOutside,
                              color: Colors.white,
                          ),
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
                  child: TextButton(onPressed: (){}, child:  Text(
                        'Continuer',
                        textAlign: TextAlign.center,
                        style: TextStyle( 
                            color: Colors.white,
                            fontSize: 15,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            height: 0,
                        ),
                    ),
                  ),
              )
            )
          
          ],
        ),
      )
    );
  }
}
