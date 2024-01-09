import 'package:flutter/material.dart';

class compte_virement_2 extends StatefulWidget {
  const compte_virement_2({super.key});

  @override
  State<compte_virement_2> createState() => _compte_virement_2State();
}

class _compte_virement_2State extends State<compte_virement_2> {
  String premon="MR NOM PRENOM";
  String N="00000000001";
  String nom="Nom de compte";
  String numero="1123,85";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        decoration: const BoxDecoration(image:DecorationImage(image:AssetImage("images/fiiter_light_banque.png"),fit: BoxFit.fill)),
        child: ListView(
          children: [
            Container(
              width: 434,
              height: 310,
              decoration: ShapeDecoration(
                  // color: Colors.white,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(50),
                          bottomRight: Radius.circular(50),
                      ),
                  ),
                  gradient: LinearGradient(colors: [Colors.pink.shade100,Colors.pink.shade100,Colors.white]),
                  shadows: const [
                      BoxShadow(
                          color: Color(0x7F000000),
                          blurRadius: 15,
                          offset: Offset(0, 4),
                          spreadRadius: 0,
                            )
                          ]
              ),
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 20,right: 20,bottom: 5,top: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(onPressed: (){Navigator.pop(context);}, icon: const Icon(Icons.arrow_back,color:Color(0xFFED174C) ,)),
                            const Text(
                                'Virement',
                                style: TextStyle(
                                    color: Color(0xFFED174C),
                                    fontSize: 20,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w700,
                                    height: 0,
                                ),
                            )
                          ],
                        ),
                         Container(
                          margin: const EdgeInsets.only(left: 20),
                          child: const Text(
                              'Compte éméteur',
                              style: TextStyle(
                                  color: Color(0xFFED174C),
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
                    margin:const EdgeInsets.only(left: 20,right: 20),
                    decoration: ShapeDecoration(
                        // color: Colors.black,
                        image: const DecorationImage(image: AssetImage("images/carteBanque.png"),fit: BoxFit.cover),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          ),
                      ),
                      child: Container(
                        margin: const EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(top: 5),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                    child: Text(premon,
                                    style: const TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),
                                    )
                                  ),
                                  Container(
                                    child: Text(nom,style: const TextStyle(color: Colors.white),),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 5,bottom: 5,left: 20),
                              child: Text(N,
                              style: const TextStyle(fontSize: 15,color: Colors.white),
                              )
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 5,bottom: 5,left: 20),
                              child: Text("$numero £",
                              style: const TextStyle(fontSize: 35,color: Colors.white),
                              )
                            ),
                            Row(
                              children: [
                                IconButton(onPressed: (){}, icon: Image.asset("images/graph-up 1.png"),iconSize: 20),
                                SizedBox(
                                  width: 30,
                                  child: IconButton(onPressed: (){}, icon: Image.asset("images/transfert.png",fit: BoxFit.cover,),iconSize: 5)),
                               SizedBox(
                                width: 250,
                                child: IconButton(onPressed: (){}, icon: Image.asset("images/currency-exchange 1.png"),iconSize: 20,)),
                              ],
                            ),
                          ]
                          ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Container(
                        margin: const EdgeInsets.only(right: 20),
                        child: const Text(
                            'Gerer mes plafonds',
                            style: TextStyle(
                                color: Color(0xFFED174C),
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
            const SizedBox(height: 10,),
            Container(
              width: 432,
              height: 56,
              margin: const EdgeInsets.only(top:10,bottom: 10),
              decoration: const ShapeDecoration(
                  color: Color(0xFFED174C),
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
              child: const Center(
                child: Text(
                        'Compte bénéficiaire',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w700,
                            height: 0,
                        ),
                    ),
              ),
          ),
          Container(
            margin: const EdgeInsets.only(top:10,bottom: 10,left: 40),
            width: 300,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                    'NOM  ',
                    style: TextStyle(
                        color: Color(0xFFED174C),
                        fontSize: 16,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                        height: 0,
                    ),
                ),
                Container(
                  
                  width: 300,
                  decoration: BoxDecoration(
                    color: Colors.pink,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child:const Center(
                    child: TextField(
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        hintText: "Nom du bénéfice",
                        hintStyle: TextStyle(color:Colors.white,fontWeight: FontWeight.normal)
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
           Container(
            margin: const EdgeInsets.only(top:10,bottom: 10,left: 40),
            width: 300,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                    'PRENOM  ',
                    style: TextStyle(
                        color: Color(0xFFED174C),
                        fontSize: 16,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                        height: 0,
                    ),
                ),
                Container(
                  width: 300,
                  decoration: BoxDecoration(
                    color: Colors.pink,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child:const Center(
                    child: TextField(
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        hintText: "Prénom du bénéfice",
                        hintStyle: TextStyle(color:Colors.white,fontWeight: FontWeight.normal),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
           Container(
            margin: const EdgeInsets.only(top:10,bottom: 10,left: 40),
            width: 300,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                    'RIB  ',
                    style: TextStyle(
                        color: Color(0xFFED174C),
                        fontSize: 16,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                        height: 0,
                    ),
                ),
                Container(
                  width: 300,
                  decoration: BoxDecoration(
                    color: Colors.pink,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child:const Center(
                    child: TextField(
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        hintText: "FR00 0001 0002 0003 0004 0005 123",
                        hintStyle: TextStyle(color:Colors.white,fontWeight: FontWeight.normal)
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
           Container(
            margin: const EdgeInsets.only(top:10,bottom: 10,left: 40),
            width: 300,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                    'BIC  ',
                    style: TextStyle(
                        color: Color(0xFFED174C),
                        fontSize: 16,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                        height: 0,
                    ),
                ),
                Container(
                  width:300,
                   decoration: BoxDecoration(
                    color: Colors.pink,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child:const Center(
                    child: TextField(
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        hintText: "SBJPFRPP",
                        hintStyle: TextStyle(color:Colors.white,fontWeight: FontWeight.normal)
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
           Center(
              child: Container(
                  margin: const EdgeInsets.only(bottom: 10),
                  width: 200,
                  height: 55,
                  padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 11),
                  clipBehavior: Clip.antiAlias,
                  decoration: ShapeDecoration(
                      gradient: const LinearGradient(
                          begin: Alignment(0.00, -1.00),
                          end: Alignment(0, 1),
                          colors: [Color(0xFFAFDFE4), Color(0xFFED174C)],
                      ),
                      shape: RoundedRectangleBorder(
                          side: const BorderSide(
                              width: 1,
                              strokeAlign: BorderSide.strokeAlignOutside,
                              color: Colors.white,
                          ),
                          borderRadius: BorderRadius.circular(20),
                      ),
                      shadows: const [
                          BoxShadow(
                              color: Color(0x3F000000),
                              blurRadius: 4,
                              offset: Offset(0, 4),
                              spreadRadius: 0,
                          )
                      ],
                  ),
                  child: TextButton(onPressed: (){}, child:  const Text(
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
