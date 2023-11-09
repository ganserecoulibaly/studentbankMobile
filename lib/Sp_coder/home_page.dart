import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:studentbankmobile/Sp_coder/widgets/list_pub_widget.dart';
import 'package:studentbankmobile/Sp_coder/widgets/silver_appbar_widget.dart';
import 'models/pub_model.dart';

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
            physics: BouncingScrollPhysics(),
            slivers: [
              SliverAppbarpub(),

              ListPub(publications: publications,),
            ],
          ),


        ],
      ),

        bottomNavigationBar:  Container(
          // color: Colors.orange,
          height: 40.0,
          // margin: EdgeInsets.only(top: 0),
          decoration: BoxDecoration(
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
                    child:Icon(CupertinoIcons.home),
                  ),

                  InkWell(
                    onTap: (){},
                    child:Icon(CupertinoIcons.search),
                  ),

                  InkWell(
                    onTap: (){},
                    child:Icon(CupertinoIcons.plus_square ),
                  ),

                  InkWell(
                    onTap: (){},
                    child:Icon(CupertinoIcons.play_rectangle),
                  ),

                  CircleAvatar(
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
