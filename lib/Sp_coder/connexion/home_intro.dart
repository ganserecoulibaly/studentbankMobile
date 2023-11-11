import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:studentbankmobile/Sp_coder/connexion/page_connexion.dart';
import '../models/pub_model.dart';
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
          Image.asset(
            'images/background-removebg-preview.png',
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
          CustomScrollView(
            physics: BouncingScrollPhysics(),
            slivers: [
              SliverAppbarpub(),
              ListPub(publications: publications,),
            ],
          ),

          Container(
            alignment: Alignment(0, 0.50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) {
                          return ConnexionPage();
                        }));
                  },
                  child: Transform.translate(
                    offset: Offset(0, -10),
                    child: Container(
                      width: 150.0,
                      height: 30.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25.0),
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Colors.orangeAccent, Colors.pinkAccent],
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "continuer",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          )

        ],
      ),
      floatingActionButton: Container(
        margin: EdgeInsets.only(bottom: 40.0),
        child: FloatingActionButton(
          onPressed: () {

          },
          child: Icon( CupertinoIcons.add,
          size: 30,
          color: Colors.black,),
          backgroundColor: Colors.white,
          mini: true,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat, // Position du bouton flottant


    );
  }
}
