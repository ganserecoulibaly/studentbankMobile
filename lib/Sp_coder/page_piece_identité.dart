import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PieceIdentite extends StatefulWidget {
  const PieceIdentite({Key? key}) : super(key: key);

  @override
  State<PieceIdentite> createState() => _PieceIdentiteState();
}

class _PieceIdentiteState extends State<PieceIdentite> {
  @override

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
          Column(
            children: [
              AppBar(
                backgroundColor: Colors.transparent,
                elevation: 0,
                leading: IconButton(
                  icon: Icon(
                    Icons.arrow_back_ios,
                    size: 20.0,),
                  onPressed: () {},
                ),
              ),
            ],
          ),


          Padding(
            padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 100.0),
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
                      Container(
                        height: 190.0,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(10.0),
                         border: Border.all(
                          color: Colors.white,
                          width: 2.0,
                           ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                                padding: EdgeInsets.only(left: 10.0, right: 10.0,top: 10.0),
                                child: Align(
                                    alignment: Alignment.topLeft,
                                    child:  Column(
                                      children: [
                                        Container(
                                          width: 80,
                                          height: 110,
                                          decoration: BoxDecoration(

                                              borderRadius: BorderRadius.circular(10.0),
                                              border: Border.all(
                                                  color: Colors.white,
                                                  width: 2.0
                                              )
                                          ),
                                          child: Center(
                                            child: Icon(CupertinoIcons.briefcase_fill,
                                              size: 20,
                                              color: Colors.white,),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10.0,
                                        ),
                                        Text("Recto",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 13.0,
                                              color: Colors.white
                                          ),),
                                      ],

                                    ),
                                )
                            ),


                            Padding(
                              padding: EdgeInsets.only(top: 10.0),
                            child:Column(
                            children: [
                            Text("Mes Documents",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25.0,
                                  color: Colors.white
                              ),),

                              SizedBox(
                                height: 10.0,
                              ),

                              Text("Rectoryrhr",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 13.0,
                                    color: Colors.white
                                ),),
                              SizedBox(
                                height: 5.0,
                              ),
                              Text("Rectoryrhr",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 13.0,
                                    color: Colors.white
                                ),),
                              SizedBox(
                                height: 5.0,
                              ),
                              Text("Rectoryrhr",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 13.0,
                                    color: Colors.white
                                ),),

                          ],
                        ),
                      ),


                            Padding(
                                padding: EdgeInsets.only(left: 10.0, right: 10.0,top: 10.0),
                                child: Align(
                                  alignment: Alignment.topRight,
                                  child:  Column(
                                    children: [
                                      Container(
                                        width: 80,
                                        height: 110,
                                        decoration: BoxDecoration(

                                            borderRadius: BorderRadius.circular(10.0),
                                            border: Border.all(
                                                color: Colors.white,
                                                width: 2.0
                                            )
                                        ),
                                        child: Center(
                                          child: Icon(CupertinoIcons.briefcase_fill,
                                            size: 20,
                                            color: Colors.white,),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10.0,
                                      ),
                                      Text("Verso",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 13.0,
                                            color: Colors.white
                                        ),),
                                    ],

                                  ),
                                )
                            ),

                          ],
                        )
                      ),
                      SizedBox(
                        height: 140.0,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10.0, right: 10.0, ),
                        child: Divider(color: Colors.white,
                          thickness: 2.0,
                        ),),
                      SizedBox(
                        height: 10.0,
                      ),

                      Text("Justificatif de domicile",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                            color: Colors.white
                        ),),
                      SizedBox(
                        height: 10.0,
                      ),

                      Container(
                          height: 170.0,
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(10.0),
                            border: Border.all(
                              color: Colors.white,
                              width: 2.0,
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(left: 25.0, right: 5.0,top: 25.0),
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child:  Column(
                                      children: [

                                        Text("Rectoryrhr",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 13.0,
                                              color: Colors.white
                                          ),),
                                        SizedBox(
                                          height: 5.0,
                                        ),
                                        Text("Rectoryrhr",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 13.0,
                                              color: Colors.white
                                          ),),
                                        SizedBox(
                                          height: 5.0,
                                        ),
                                        Text("Rectoryrhr",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 13.0,
                                              color: Colors.white
                                          ),),
                                      ],

                                    ),
                                  )
                              ),



                              Padding(
                                  padding: EdgeInsets.only(left: 10.0, right: 10.0,top: 10.0),
                                  child: Align(
                                    alignment: Alignment.topRight,
                                    child:  Column(
                                      children: [
                                        Container(
                                          width: 80,
                                          height: 110,
                                          decoration: BoxDecoration(

                                              borderRadius: BorderRadius.circular(10.0),
                                              border: Border.all(
                                                  color: Colors.white,
                                                  width: 2.0
                                              )
                                          ),
                                          child: Center(
                                            child: Icon(CupertinoIcons.briefcase_fill,
                                              size: 20,
                                              color: Colors.white,),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10.0,
                                        ),
                                      ],

                                    ),
                                  )
                              ),

                            ],
                          )
                      ),

                      SizedBox(
                        height: 20.0,
                      ),


                      InkWell(
                        onTap: () {},
                        child: Container(
                          width: 150.0,
                          height: 40.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [Colors.orange, Colors.pink],
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
                                "Envoyer",
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
      ),
    );
  }
}
