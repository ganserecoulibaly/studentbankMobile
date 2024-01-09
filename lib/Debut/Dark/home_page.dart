import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/pub_model.dart';
import '../widgets/list_pub_widget.dart';
import '../widgets/silver_appbar_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
            physics: const BouncingScrollPhysics(),
            slivers: [
              const SliverAppbarpub(),

              ListPub(publications: publications,),
            ],
          ),


        ],
      ),

        bottomNavigationBar:  Container(
          // color: Colors.orange,
          height: 40.0,
          // margin: EdgeInsets.only(top: 0),
          decoration: const BoxDecoration(
              color: Color(0xFFFAC7C3),
              // borderRadius: BorderRadius.only(
              //     topLeft: Radius.circular(30.0),
              //     topRight: Radius.circular(30.0)
              // ),
          ),
          child: Center(
            child: Container(

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [

                  InkWell(
                    onTap: (){},
                    child:const Icon(CupertinoIcons.home),
                  ),

                  InkWell(
                    onTap: (){},
                    child:const Icon(CupertinoIcons.search),
                  ),

                  InkWell(
                    onTap: (){},
                    child:const Icon(CupertinoIcons.plus_square ),
                  ),

                  InkWell(
                    onTap: (){},
                    child:const Icon(CupertinoIcons.play_rectangle),
                  ),

                  const CircleAvatar(
                    backgroundImage: AssetImage('images/person-removebg-preview.png'),
                    radius: 20,
                  )

                ],
              ),
            ),
          ),
        )// Position du bouton flottant
    );
  }
}
