import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:studentbankmobile/Sp_coder/connexion/page_inscription.dart';

import 'home_intro.dart';

class ConnexionPage extends StatefulWidget {
  const ConnexionPage({Key? key}) : super(key: key);

  @override
  State<ConnexionPage> createState() => _ConnexionPageState();
}

class _ConnexionPageState extends State<ConnexionPage> {

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  bool _obscureText = false;
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
                          return HomeIntro();
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
                     Text("Connexion",
                     style: TextStyle(
                       color: Colors.white,
                       fontWeight: FontWeight.bold,
                       fontSize: 20.0,
                     ),),

                     SizedBox(height: 20.0),

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

                         SizedBox(width:18.0,),

                         GestureDetector(
                           onTap: (){},
                           child: Image.asset(
                             'images/google-g-icon-9.jpg',
                             width: 30.0,
                             height: 30.0,),
                         ),

                         SizedBox(width:10.0,),

                         GestureDetector(
                           onTap:(){},
                           child: Image.asset(
                             'images/🦆 icon _apple_.png',
                             width: 41.0,
                             height: 41.0,),
                         )
                       ],
                     ),

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
                                 color: Color(0xFFA61035),
                                 borderRadius: BorderRadius.circular(8.0),
                               ),
                               child:const Icon(
                                 Icons.mark_email_read,
                                 color: Colors.white,
                               ),
                             ),
                             SizedBox(width: 8.0),
                             Expanded(
                               child: TextFormField(
                                 style: TextStyle(fontSize: 12.0),
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
                               child:const Icon(
                                 Icons.lock_rounded,
                                 color: Colors.white,
                               ),
                             ),
                             SizedBox(width: 8.0),
                             Expanded(
                               child: TextFormField(
                                 style: TextStyle(fontSize: 12.0),
                                 obscureText: _obscureText,
                                 maxLines: 1,
                                 controller: _passwordController,
                                 decoration: InputDecoration(
                                   hintText: 'Mot de passe', // Le texte "Mot de passe" est affiché en tant qu'indice
                                   suffixIcon: IconButton(
                                     onPressed: () {
                                       setState(() {
                                         _obscureText = !_obscureText;
                                       });
                                     },
                                     icon: Icon(
                                       _obscureText ? Icons.visibility : Icons.visibility_off,
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

                     InkWell(
                       onTap: () {

                       },
                       child: SizedBox(
                         height: 35.0,
                         child: Card(
                           elevation: 5.0,
                           shape: RoundedRectangleBorder(
                             borderRadius: BorderRadius.circular(8.0),
                           ),
                           child: Row(
                             children: [
                               Container(
                                 height: 30.0,
                                 padding: EdgeInsets.only(right: 10.0),
                                 decoration: BoxDecoration(
                                   color: Color(0xFFA61035),
                                   borderRadius: BorderRadius.circular(8.0),
                                 ),
                                 child: Icon(
                                   Icons.login,
                                   color: Colors.white,
                                 ),
                               ),

                               SizedBox(width: 8.0),

                               Expanded(
                                 child: Container(
                                   padding: EdgeInsets.only(right: 10.0),
                                   decoration: BoxDecoration(
                                     color: Colors.white,
                                     borderRadius: BorderRadius.circular(8.0),
                                   ),
                                   child: Center(
                                     child: Row(
                                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                       children: [
                                         SizedBox(width: 9.0),
                                         Text(
                                           "Se connecter",
                                           style: TextStyle(
                                             color: Colors.black,
                                             fontSize: 12.0,
                                           ),
                                         ),
                                         Icon(
                                           Icons.arrow_forward,
                                           color: Colors.grey,
                                           size: 20.0,
                                         ),
                                       ],
                                     )
                                   ),
                                 ),
                               ),
                             ],
                           ),
                         ),
                       ),
                     ),

                     SizedBox(height: 5.0,),

                     TextButton(
                         onPressed: (){},
                         child: Text("Mot de passe oublié ?",
                         style: TextStyle(
                           color: Colors.white,
                           decoration: TextDecoration.underline,
                         ),)
                     ),

                     Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         SizedBox(
                           width: 100.0,
                           child: Divider(
                             color: Colors.white,
                             thickness: 1,
                           ),
                         ),
                         SizedBox(width:5,),
                         Text("ou",
                             style: TextStyle(
                           color: Colors.white,
                           decoration: TextDecoration.underline,
                         )),
                         SizedBox(width:5,),
                         SizedBox(
                           width: 100.0,
                           child: Divider(
                             color: Colors.white,
                             thickness: 1,
                           ),
                         ),
                       ],
                     ),

                     SizedBox(height:5.0,),

                     InkWell(
                       onTap: () {
                         Navigator.pushReplacement(context,
                             MaterialPageRoute(builder: (context) {
                               return InscriptionPage();
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


                     SizedBox(height: 15,),

                     Container(
                         width: 150.0,
                         height: 30.0,
                         decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(10.0),
                             color: Colors.white
                         ),
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                             Text("Student",
                               style: TextStyle(
                                 fontWeight: FontWeight.bold,
                               ),
                             ),
                             Container(
                               width: 35.0,
                               decoration: BoxDecoration(
                                   borderRadius: BorderRadius.circular(5.0),
                                   color: Colors.pinkAccent,
                                 boxShadow: [
                                   BoxShadow(
                                     color: Colors.grey,
                                     blurRadius: 4.0,
                                     offset: Offset(0, 5),
                                   ),
                                 ],
                               ),
                               child: Text(
                                 "Chat",
                                 style: TextStyle(
                                   fontWeight: FontWeight.bold,
                                   color: Colors.white
                                 ),
                               ),
                             )
                           ],
                         )
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







// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
//
// import '../models/user_model.dart';
// import '../provider/user_provider.dart';
//
// class ProfilePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final userProvider = Provider.of<UserProvider>(context);
//
//     if (userProvider.user != null) {
//       UserModel user = userProvider.user!;
//       return Scaffold(
//         appBar: AppBar(
//           title: Text(user.username),
//         ),
//         body: Column(
//           children: [
//             Text("Numéro de téléphone: ${user.number}"),
//             Text("Email: ${user.email}"),
//
//           ],
//         ),
//       );
//     } else {
//       return Center(
//         child: CircularProgressIndicator(),
//       );
//     }
//   }
// }
