import 'package:flutter/material.dart';

class compte_virement_1_dark extends StatefulWidget {
  const compte_virement_1_dark({super.key});

  @override
  State<compte_virement_1_dark> createState() => _compte_virement_1_darkState();
}

class _compte_virement_1_darkState extends State<compte_virement_1_dark> {
  String premon="MR NOM PRENOM";
  String N="00000000001";
  String nom="Nom de compte";
  String numero="1123,85";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        decoration: const BoxDecoration(image:DecorationImage(image:AssetImage("images/filter_banque_black.png"),fit: BoxFit.fill)),
        child: ListView(
          children: [
            Container(
              width: double.infinity,
              height: 310,
              decoration: const BoxDecoration(
                border: Border(bottom: BorderSide(color: Colors.white,width: 2)),
                  // color: Colors.white,
                  // border: Border.all(width: 2,color: Colors.white),
                  // boxShadow:[ BoxShadow(blurRadius: 1,spreadRadius: 1,color: Colors.white)],
                  borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50),
                
                  ),
                  color: Colors.transparent
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
                          margin: const EdgeInsets.only(left: 20),
                          child: const Text(
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
                              child: Text(numero,
                              style: const TextStyle(fontSize: 35,color: Colors.white),
                              )
                            ),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  IconButton(onPressed: (){}, icon: Image.asset("images/graph-up 1.png"),iconSize: 20),
                                  SizedBox(
                                    width: 30,
                                    child: IconButton(onPressed: (){}, icon: Image.asset("images/transfert.png",fit: BoxFit.cover,),iconSize: 5)),
                                 SizedBox(
                                  width: 450,
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
                        margin: const EdgeInsets.only(right: 20),
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
                      Center(
                        child: Container(
                          width: 313,
                          height: 37,
                          margin: const EdgeInsets.only(top: 20),
                          decoration: ShapeDecoration(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
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
                          child: Row(
                            children: [
                              Container(
                                  width: 55,
                                  height: 37,
                                  decoration: ShapeDecoration(
                                      color: Colors.red.shade900,
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(10),
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
                                  child: const Icon(Icons.person_add_alt,color: Colors.white,),
                              ),
                              Container(
                                margin: const EdgeInsets.all(10),
                                child: const Center(
                                  child: SizedBox(
                                        width: 185,
                                        height: 25,
                                        child: Text(
                                            'Ajouter un bénéficiaire',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 12,
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w600,
                                                height: 0,
                                            ),
                                        ),
                                    )
                                ),
                              )
                          ]
                               ),
                             ),
               ),
            Center(
              child: Container(
                margin: const EdgeInsets.only(top:20,bottom: 20),
                child: const Text(
                      'Compte bénéficiaire',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w700,
                          height: 0,
                      ),
                  ),
              ),
            ),
            Center(
              child: Container(
                  width: 312,
                  height: 99,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        width: 2,color: Colors.white
                      ),
                      borderRadius: BorderRadius.circular(10),
                  ),
                   child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(top: 2),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(left: 5),
                                    child: Text(premon,
                                    style: const TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black),
                                    )
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(left: 5),
                                    child: Text(nom,style: const TextStyle(fontSize: 15,color: Colors.black),),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 2,bottom: 1,left: 2),
                              child: Text(N,
                              style: const TextStyle(fontSize: 15,color: Colors.black),
                              )
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 2,bottom: 1,left: 2),
                              child: Text(numero,
                              style: const TextStyle(fontSize: 28,color: Colors.black),
                              )
                            ),
                          ]
                          ),
                     
              ),
            ),
          Center(
            child: Container(
              margin: const EdgeInsets.only(top: 20,bottom: 20),
                  width: 317,
                  height: 37,
                  decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                      ),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(Icons.search,color: Colors.grey,),
                      SizedBox(
                        width: 200,
                        height: 50,
                        child: TextField(
                          decoration: InputDecoration(
                           hintText: "Recherche ....",
                           hintStyle: TextStyle(color: Colors.grey),
                          ),
                          
                        ),
                      )
                    ],
                  ),
              ),
            ),
            Center(
              child: SizedBox(
                width: 317,
                height: 130,
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                      width: 38.87,
                                      height: 38.87,
                                      decoration: const ShapeDecoration(
                                          color: Colors.white,
                                          shape: OvalBorder(),
                                          shadows: [
                                              BoxShadow(
                                                  color: Color(0x3F000000),
                                                  blurRadius: 4,
                                                  offset: Offset(0, 4),
                                                  spreadRadius: 0,
                                              )
                                          ],
                                      ),
                                      child: const Icon(Icons.person_outline,color: Colors.black,),
                                  ),
                                  const SizedBox(width: 20,),
                                  Container(
                                    child: const Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                            'Nom du contact',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12,
                                                fontFamily: 'Roboto',
                                                fontWeight: FontWeight.w700,
                                                height: 0,
                                            ),
                                        ),
                                        SizedBox(height: 5,),
                                        Text(
                                            'Ecole / Université',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12,
                                                fontFamily: 'Roboto',
                                                fontWeight: FontWeight.w600,
                                                height: 0,
                                            ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(width: 5,),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                      width: 38.87,
                                      height: 38.87,
                                      decoration: const ShapeDecoration(
                                          color: Colors.white,
                                          shape: OvalBorder(),
                                          shadows: [
                                              BoxShadow(
                                                  color: Color(0x3F000000),
                                                  blurRadius: 4,
                                                  offset: Offset(0, 4),
                                                  spreadRadius: 0,
                                              )
                                          ],
                                      ),
                                      child: const Icon(Icons.person_outline,color: Colors.black,),
                                  ),
                                  const SizedBox(width: 20,),
                                  Container(
                                    child: const Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                            'Nom du contact',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12,
                                                fontFamily: 'Roboto',
                                                fontWeight: FontWeight.w700,
                                                height: 0,
                                            ),
                                        ),
                                        SizedBox(height: 5,),
                                        Text(
                                            'Ecole / Université',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12,
                                                fontFamily: 'Roboto',
                                                fontWeight: FontWeight.w600,
                                                height: 0,
                                            ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                                         ],
                      ),
                    ),
                    const SizedBox(height: 20,),
                     SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                      width: 38.87,
                                      height: 38.87,
                                      decoration: const ShapeDecoration(
                                          color: Colors.white,
                                          shape: OvalBorder(),
                                          shadows: [
                                              BoxShadow(
                                                  color: Color(0x3F000000),
                                                  blurRadius: 4,
                                                  offset: Offset(0, 4),
                                                  spreadRadius: 0,
                                              )
                                          ],
                                      ),
                                      child: const Icon(Icons.person_outline,color: Colors.black,),
                                  ),
                                  const SizedBox(width: 20,),
                                  Container(
                                    child: const Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                            'Nom du contact',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12,
                                                fontFamily: 'Roboto',
                                                fontWeight: FontWeight.w700,
                                                height: 0,
                                            ),
                                        ),
                                        SizedBox(height: 5,),
                                        Text(
                                            'Ecole / Université',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12,
                                                fontFamily: 'Roboto',
                                                fontWeight: FontWeight.w600,
                                                height: 0,
                                            ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(width: 5,),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                      width: 38.87,
                                      height: 38.87,
                                      decoration: const ShapeDecoration(
                                          color: Colors.white,
                                          shape: OvalBorder(),
                                          shadows: [
                                              BoxShadow(
                                                  color: Color(0x3F000000),
                                                  blurRadius: 4,
                                                  offset: Offset(0, 4),
                                                  spreadRadius: 0,
                                              )
                                          ],
                                      ),
                                      child: const Icon(Icons.person_outline,color: Colors.black,),
                                  ),
                                  const SizedBox(width: 20,),
                                  Container(
                                    child: const Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                            'Nom du contact',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12,
                                                fontFamily: 'Roboto',
                                                fontWeight: FontWeight.w700,
                                                height: 0,
                                            ),
                                        ),
                                        SizedBox(height: 5,),
                                        Text(
                                            'Ecole / Université',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12,
                                                fontFamily: 'Roboto',
                                                fontWeight: FontWeight.w600,
                                                height: 0,
                                            ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Center(
              child: Container(
                  margin: const EdgeInsets.only(bottom: 10),
                  width: 100,
                  height: 40,
                  // padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  clipBehavior: Clip.antiAlias,
                  decoration: ShapeDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [Colors.red.shade800, Colors.orange.shade800],
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
      ),
    );
  }
}
