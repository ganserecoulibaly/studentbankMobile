import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:studentbankmobile/Sp_coder/widgets/menu_widget.dart';

import 'home_page.dart';
import 'models/menu_model.dart';


class HomeService extends StatefulWidget {
  const HomeService({Key? key}) : super(key: key);

  @override
  State<HomeService> createState() => _HomeServiceState();
}

class _HomeServiceState extends State<HomeService> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFAC7C3),
      body: Stack(
        children: [

          Image.asset(
            'images/background-removebg-preview.png',
            width:double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,),
          Image.asset(
            'images/LogoN.png',
            width:double.infinity,
            height: double.infinity,
           ),

          //Normalement la place de notre Appbar prenant un Column


          Padding(
            padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 50.0),
            child:Container(
                //color: Colors.green,
                child:Column(
                  children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:[
                          Icon(CupertinoIcons.gear_alt_fill, color: Colors.white,),
                          Icon(CupertinoIcons.bell_circle,color: Colors.white,)
                        ]
                    ),
                  ],
                )
            ),
          ),
          Padding(
            padding:EdgeInsets.only(left: 10.0, right: 10.0, top: 60.0),
              child: Container(
                width: double.infinity,
                child: Image.asset('images/StudentBank - Logotype - Version quadrichrome dégradé-01 2.png',
                  width: 98,
                  height: 98,),
              )
          ),

          Padding(
            padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 150.0),
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
                      InkWell(
                        onTap: (){
                          Navigator.pushReplacement(context,
                              MaterialPageRoute(builder: (context) {
                                return HomePage();
                              }));
                        },
                        child: MenuWidget(menuModel: banque,),
                      ),

                      SizedBox(height: 30.0,),

                      InkWell(
                        onTap: (){
                          Navigator.pushReplacement(context,
                              MaterialPageRoute(builder: (context) {
                                return HomePage();
                              }));
                        },
                        child: MenuWidget(menuModel: logement,),
                      ),

                      SizedBox(height: 30.0,),

                      InkWell(
                        onTap: (){
                          Navigator.pushReplacement(context,
                              MaterialPageRoute(builder: (context) {
                                return HomePage();
                              }));
                        },
                        child: MenuWidget(menuModel: mobilite,),
                      ),

                      SizedBox(height: 30.0,),

                      InkWell(
                        onTap: (){
                          Navigator.pushReplacement(context,
                              MaterialPageRoute(builder: (context) {
                                return HomePage();
                              }));
                        },
                        child: MenuWidget(menuModel: studentChat,),
                      ),

                      SizedBox(height: 30.0,),

                      InkWell(
                        onTap: (){
                          Navigator.pushReplacement(context,
                              MaterialPageRoute(builder: (context) {
                                return HomePage();
                              }));
                        },
                        child: MenuWidget(menuModel: etreAcconpagne,),
                      ),

                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
