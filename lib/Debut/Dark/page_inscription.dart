import 'package:flutter/material.dart';

import 'page_connexion.dart';
import 'page_pays_menu.dart';

class InscriptionPage extends  StatefulWidget {
  const InscriptionPage({Key? key}) : super(key: key);

  @override
  State<InscriptionPage> createState() => _InscriptionPageState();
}

class _InscriptionPageState extends State<InscriptionPage> {
  final TextEditingController _nomController = TextEditingController();
  final TextEditingController _prenomController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
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
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      size: 20.0,),
                    onPressed: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) {
                            return const ConnexionPage();
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
                        const Text("Inscription",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                          ),),

                        const SizedBox(height: 20.0),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [

                            GestureDetector(
                              onTap:(){},
                              child: Image.asset(
                                'images/facebook-logo.png',
                                width: 30.0,
                                height: 30.0,),
                            ),

                            const SizedBox(width:18.0,),

                            GestureDetector(
                              onTap: (){},
                              child: Image.asset(
                                'images/google-g-icon-9.jpg',
                                width: 30.0,
                                height: 30.0,),
                            ),

                            const SizedBox(width:10.0,),

                            GestureDetector(
                              onTap:(){},
                              child: Image.asset(
                                'images/🦆 icon _apple_.png',
                                width: 41.0,
                                height: 41.0,),
                            )
                          ],
                        ),

                        const SizedBox(height: 10.0),

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
                                    Icons.lock_rounded,
                                    color: Colors.white,
                                  ),
                                ),
                                const SizedBox(width: 8.0),
                                Expanded(
                                  child: TextFormField(
                                    style: const TextStyle(fontSize: 12.0),
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
                                    Icons.lock_rounded,
                                    color: Colors.white,
                                  ),
                                ),
                                const SizedBox(width: 8.0),
                                Expanded(
                                  child: TextFormField(
                                    style: const TextStyle(fontSize: 12.0),
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


                        const SizedBox(height:5.0,),

                        InkWell(
                          onTap: () {
                            Navigator.pushReplacement(context,
                                MaterialPageRoute(builder: (context) {
                                  return const PaysMenuPage();
                                }));
                          },
                          child: Container(
                            width: 150.0,
                            height: 30.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
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
                                  "Créer un compte",
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

                        const SizedBox(height:5.0,),

                        InkWell(
                          onTap: () {
                            Navigator.pushReplacement(context,
                                MaterialPageRoute(builder: (context) {
                                  return const ConnexionPage();
                                }));
                          },
                          child: Container(
                            width: 150.0,
                            height: 30.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
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
                                  "Se connecter",
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

