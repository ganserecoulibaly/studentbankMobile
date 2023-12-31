import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:studentbankmobile/Sp_coder/connexion/page_creation_password.dart';
import 'package:studentbankmobile/Sp_coder/connexion/page_info_perso.dart';

class Etablissement extends StatefulWidget {
  const Etablissement({Key? key}) : super(key: key);

  @override
  State<Etablissement> createState() => _EtablissementState();
}

class _EtablissementState extends State<Etablissement> {
  final TextEditingController _etablissementController = TextEditingController();
  final TextEditingController _etudeDomaineController = TextEditingController();
  final TextEditingController _niveauEtudeController = TextEditingController();

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
                    icon: Icon(
                      Icons.arrow_back_ios,
                      size: 20.0,),
                    onPressed: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) {
                            return InfoPerson();
                          }));
                    },
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 10.0, right: 10, top: 80.0),
              child: Container(
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.transparent
                ),
                child: ListView(
                  physics: BouncingScrollPhysics(),
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Etablissement d'études",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                          ),),

                        SizedBox(height: 5.0),

                        Text("Inscription jdhvbofuhbvohvour vbuherfvozheo uhzeiufgvzehouvregzer",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12.0,
                          ),
                          textAlign: TextAlign.center,),

                        SizedBox(height: 5.0),

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
                                  padding: EdgeInsets.only(right:10.0),
                                  decoration: BoxDecoration(
                                    color: Color(0xFFA61035),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  child: Icon(
                                    Icons.school,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(width: 8.0),
                                Expanded(
                                  child: TextFormField(
                                    style: TextStyle(fontSize: 12.0),
                                    maxLines: 1,
                                    controller: _etablissementController,
                                    decoration: InputDecoration(
                                      hintText: "Nom de l'établissement",
                                      border: InputBorder.none,
                                      suffixIcon: IconButton(
                                          onPressed: (){
                                            Navigator.pop(context);
                                          },
                                          icon: Icon(
                                            CupertinoIcons.chevron_down
                                          ))
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        SizedBox(height: 5.0),

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
                                  padding: EdgeInsets.only(right:10.0),
                                  decoration: BoxDecoration(
                                    color: Color(0xFFA61035),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  child: Icon(
                                    CupertinoIcons.settings,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(width: 8.0),
                                Expanded(
                                  child: TextFormField(
                                    style: TextStyle(fontSize: 12.0),
                                    maxLines: 1,
                                    controller: _etudeDomaineController,
                                    decoration: InputDecoration(
                                      hintText: "Domaine d'Etude",
                                      border: InputBorder.none,
                                        suffixIcon: IconButton(
                                            onPressed: (){
                                              Navigator.pop(context);
                                            },
                                            icon: Icon(
                                                CupertinoIcons.chevron_down
                                            ))
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

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
                                  padding: EdgeInsets.only(right:10.0),
                                  decoration: BoxDecoration(
                                    color: Color(0xFFA61035),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  child:const Icon(
                                    CupertinoIcons.book_solid,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(width: 8.0),
                                Expanded(
                                  child: TextFormField(
                                    style: TextStyle(fontSize: 12.0),
                                    maxLines: 1,
                                    controller: _niveauEtudeController,
                                    decoration: InputDecoration(
                                      hintText: "Niveau d'étude",
                                      border: InputBorder.none,
                                        suffixIcon: IconButton(
                                            onPressed: (){
                                              Navigator.pop(context);
                                            },
                                            icon: Icon(
                                                CupertinoIcons.chevron_down
                                            ))
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        SizedBox(height: 15.0),

                        InkWell(
                          onTap: () {
                            Navigator.pushReplacement(context,
                                MaterialPageRoute(builder: (context) {
                                  return CreationPassword();
                                }));
                          },
                          child: Container(
                            width: 150.0,
                            height: 30.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.0),
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [Colors.orange, Colors.black],
                              ),
                              border: Border.all(
                                color: Colors.white,
                                width: 1.0,
                              ),
                            ),
                            child: Row(
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

