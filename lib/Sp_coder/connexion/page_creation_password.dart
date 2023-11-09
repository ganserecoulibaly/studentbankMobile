import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:studentbankmobile/Sp_coder/connexion/home_intro.dart';
import 'package:studentbankmobile/Sp_coder/connexion/page_etablissement.dart';
import 'package:studentbankmobile/Sp_coder/connexion/splash_page.dart';

import '../widgets/hyperlinktext_widget.dart';
import 'home_services.dart';

class CreationPassword extends StatefulWidget {
  const CreationPassword({Key? key}) : super(key: key);

  @override
  State<CreationPassword> createState() => _CreationPasswordState();
}

class _CreationPasswordState extends State<CreationPassword> {

  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmepasswordController = TextEditingController();

  bool _obscureText1 = false;
  bool _obscureText2 = false;

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
                            return Etablissement();
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
                        Text("Définir un mot de passe",
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

                        SizedBox(height: 10.0),

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
                                    color: Colors.green,
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  child:const Icon(
                                    Icons.lock_rounded,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(width: 8.0),
                                Expanded(
                                  child: TextFormField(
                                    style: TextStyle(fontSize: 12.0),
                                    obscureText: _obscureText1,
                                    maxLines: 1,
                                    controller: _passwordController,
                                    decoration: InputDecoration(
                                      hintText: 'Mot de passe', // Le texte "Mot de passe" est affiché en tant qu'indice
                                      suffixIcon: IconButton(
                                        onPressed: () {
                                          setState(() {
                                            _obscureText1 = !_obscureText1;
                                          });
                                        },
                                        icon: Icon(
                                          _obscureText1 ? Icons.visibility : Icons.visibility_off,
                                          color: Colors.grey,
                                          size: 15.0,
                                        ),
                                      ),
                                      border: InputBorder.none,

                                    ),
                                  )
                                  ,
                                ),
                              ],
                            ),
                          ),
                        ),

                        SizedBox(height: 5.0),

                        HyperlinkText(
                          firstText: "Si vous souhaitez annuler toute l'opération alors merci de ",
                          linkText: "Cliquer ici",
                          onLinkTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(
                                    builder: (
                                        context) => HomeIntro()));
                          },
                          secondText: "",
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
                                    color: Colors.green,
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  child:const Icon(
                                    Icons.lock_rounded,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(width: 8.0),
                                Expanded(
                                  child: TextFormField(
                                    style: TextStyle(fontSize: 12.0),
                                    obscureText: _obscureText2,
                                    maxLines: 1,
                                    controller: _confirmepasswordController ,
                                    decoration: InputDecoration(
                                      hintText: 'Confirmer Mot de passe', // Le texte "Mot de passe" est affiché en tant qu'indice
                                      suffixIcon: IconButton(
                                        onPressed: () {
                                          setState(() {
                                            _obscureText2 = !_obscureText2;
                                          });
                                        },
                                        icon: Icon(
                                          _obscureText2 ? Icons.visibility : Icons.visibility_off,
                                          color: Colors.grey,
                                          size: 15.0,
                                        ),
                                      ),
                                      border: InputBorder.none,

                                    ),
                                  )
                                  ,
                                ),
                              ],
                            ),
                          ),
                        ),

                        SizedBox(height:15.0,),

                        InkWell(
                          onTap: () {
                            Navigator.pushReplacement(context,
                                MaterialPageRoute(builder: (context) {
                                  return SplashPage();
                                }));

                          },
                          child: Container(
                            width: 150.0,
                            height: 30.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
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
                                  "Finaliser",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14.0,
                                  ),
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


