import 'package:flutter/material.dart';

import 'page_etablissement.dart';
import 'page_pays_menu.dart';

class InfoPerson extends StatefulWidget {
  const InfoPerson({Key? key}) : super(key: key);

  @override
  State<InfoPerson> createState() => _InfoPersonState();
}

class _InfoPersonState extends State<InfoPerson> {

  final TextEditingController _nomController = TextEditingController();
  final TextEditingController _prenomController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Stack(
          children: [
            Image.asset(
              'images/DEBUT.png',
              width:double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,),
            Column(
              children: [
                AppBar(
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                  leading: IconButton(
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      size: 20.0,),
                    onPressed: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) {
                            return const PaysMenuPage();
                          }));
                    },
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10, top: 80.0),
              child: Container(
                width: double.infinity,
                height: double.infinity,
                decoration: const BoxDecoration(
                    color: Colors.transparent
                ),
                child: ListView(
                  physics: const BouncingScrollPhysics(),
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Informations personnelles",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                          ),),

                        const SizedBox(height: 5.0),

                        const Text("Inscription jdhvbofuhbvohvour vbuherfvozheo uhzeiufgvzehouvregzer",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12.0,
                          ),
                          textAlign: TextAlign.center,),

                        const SizedBox(height: 5.0),

                        SizedBox(
                          height: 44.0,
                          child: Card(
                            elevation: 5.0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child:Row(
                              children: [
                                Container(
                                  height: 36.0,
                                  padding: const EdgeInsets.only(right:10.0),
                                  decoration: BoxDecoration(
                                    color: const Color(0xFFA61035),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  child:const Icon(
                                    Icons.person,
                                    color: Colors.white,
                                  ),
                                ),
                                const SizedBox(width: 8.0),
                                Expanded(
                                  child: TextFormField(
                                    style: const TextStyle(fontSize: 12.0),
                                    maxLines: 1,
                                    controller: _nomController,
                                    decoration: const InputDecoration(
                                      hintText: 'Vôtre nom',
                                      border: InputBorder.none,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        const SizedBox(height: 5.0),

                        SizedBox(
                          height: 44.0,
                          child: Card(
                            elevation: 5.0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child:Row(
                              children: [
                                Container(
                                  height: 36.0,
                                  padding: const EdgeInsets.only(right:10.0),
                                  decoration: BoxDecoration(
                                    color: const Color(0xFFA61035),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  child:const Icon(
                                    Icons.person,
                                    color: Colors.white,
                                  ),
                                ),
                                const SizedBox(width: 8.0),
                                Expanded(
                                  child: TextFormField(
                                    style: const TextStyle(fontSize: 12.0),
                                    maxLines: 1,
                                    controller: _prenomController,
                                    decoration: const InputDecoration(
                                      hintText: 'Vôtre prenom',
                                      border: InputBorder.none,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        const SizedBox(height: 5.0),

                        SizedBox(
                          height: 44.0,
                          child: Card(
                            elevation: 5.0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child:Row(
                              children: [
                                Container(
                                  height: 36.0,
                                  padding: const EdgeInsets.only(right:10.0),
                                  decoration: BoxDecoration(
                                    color: const Color(0xFFA61035),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  child:const Icon(
                                    Icons.mark_email_read,
                                    color: Colors.white,
                                  ),
                                ),
                                const SizedBox(width: 8.0),
                                Expanded(
                                  child: TextFormField(
                                    style: const TextStyle(fontSize: 12.0),
                                    maxLines: 1,
                                    controller: _emailController,
                                    decoration: const InputDecoration(
                                      hintText: 'Téléphone ou adresse mail',
                                      border: InputBorder.none,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        const SizedBox(height: 5.0),

                        SizedBox(
                          height: 44.0,
                          child: Card(
                            elevation: 5.0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child:Row(
                              children: [
                                Container(
                                  height: 36.0,
                                  padding: const EdgeInsets.only(right:10.0),
                                  decoration: BoxDecoration(
                                    color: const Color(0xFFA61035),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  child:const Icon(
                                    Icons.phone,
                                    color: Colors.white,
                                  ),
                                ),
                                const SizedBox(width: 8.0),
                                Expanded(
                                  child: TextFormField(
                                    style: const TextStyle(fontSize: 12.0),
                                    maxLines: 1,
                                    controller: _phoneController,
                                    decoration: const InputDecoration(
                                      hintText: 'Numéro de téléphone',
                                      border: InputBorder.none,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        const SizedBox(height: 20.0),

                        InkWell(
                          onTap: () {
                            // Navigator.pushReplacement(context,
                            //     MaterialPageRoute(builder: (context) {
                            //       return ConnexionPage();
                            //     }));
                          },
                          child: Container(
                            width: 150.0,
                            height: 30.0,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5.0),
                              border: Border.all(
                                color: Colors.white,
                                width: 1.0,
                              ),
                            ),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(
                                  Icons.tag_faces_outlined,
                                  color: Colors.black,
                                  size: 20.0,
                                ),
                                Text(
                                  "Utiliser le Face ID",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14.0,
                                  ),
                                ),

                              ],
                            ),
                          ),
                        ),

                        const SizedBox(height: 15.0),

                        InkWell(
                          onTap: () {
                            Navigator.pushReplacement(context,
                                MaterialPageRoute(builder: (context) {
                                  return const Etablissement();
                                }));
                          },
                          child: Container(
                            width: 150.0,
                            height: 30.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.0),
                              gradient: const LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [Colors.orange, Colors.black],
                              ),
                              border: Border.all(
                                color: Colors.white,
                                width: 1.0,
                              ),
                            ),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Continuer",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14.0,
                                  ),
                                ),
                                Icon(
                                  Icons.arrow_forward,
                                  color: Colors.white,
                                  size: 20.0,
                                ),
                              ],
                            ),
                          ),
                        ),

                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        )
    );
  }
}

