import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/pub_model.dart';
import 'page_connexion.dart';
import '../widgets/list_pub_widget.dart';
import '../widgets/silver_appbar_widget.dart';

class HomeIntro extends StatelessWidget {
  const HomeIntro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          // Image.asset(
          //   'images/background-removebg-preview.png',
          //   width: double.infinity,
          //   height: double.infinity,
          //   fit: BoxFit.cover,
          // ),
          CustomScrollView(
            physics: const BouncingScrollPhysics(),
            slivers: [
              const SliverAppbarpub(),
              ListPub(publications: publications,),
            ],
          ),

          Positioned(
            bottom: -450.0,
            left: 0,
            right: 0,
            top:0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
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
                      borderRadius: BorderRadius.circular(25.0),
                      gradient: const LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Colors.orangeAccent, Colors.pinkAccent],
                      ),
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("continuer",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                        // Icon(
                        //   Icons.arrow_forward,
                        //   color: Colors.white,
                        // ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: Container(
        margin: const EdgeInsets.only(bottom: 40.0),
        child: FloatingActionButton(
          onPressed: () {

          },
          backgroundColor: Colors.white,
          mini: true,
          child: const Icon( CupertinoIcons.add,
          size: 30,
          color: Colors.black,),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat, // Position du bouton flottant


    );
  }
}
