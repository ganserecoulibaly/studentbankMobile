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
      backgroundColor: Color(0xFFFAC7C3),
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

      //bottomNavigationBar: CustomBottomNavigationBar(),

    );
  }

}
