import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class ProfilUser extends StatefulWidget {
  const ProfilUser({Key? key}) : super(key: key);

  @override
  State<ProfilUser> createState() => _ProfilUserState();
}

class _ProfilUserState extends State<ProfilUser> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
        body: Stack(
          children: [
            Image.asset(
              'images/background-removebg-preview.png',
              width:double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [

                //Normalement la place de notre Appbar prenant un Column

                Padding(
                    padding: EdgeInsets.only(left: 10),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child:  Text("Mon Compte",style: TextStyle(
                      color: Colors.white,
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold
                  ),),
                ),)

              ],
            ),

            Padding(
              padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 50.0),
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
                        Stack(
                          children: [
                            Container(
                              height: 40.0,
                              margin: EdgeInsets.only(left: 80.0, top: 12.0),
                              decoration: BoxDecoration(
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                 Container(
                                   width: MediaQuery.of(context).size.width /5,
                                   child:  Column(
                                     children: [
                                       Text("144",
                                         style: TextStyle(
                                             fontWeight: FontWeight.bold,
                                             color: Colors.white,
                                             fontSize: 11.0),),
                                       Text("Publications",
                                         style: TextStyle(
                                           color: Colors.white,
                                           fontSize: 11.0,
                                         ),
                                         maxLines: 1,
                                         overflow: TextOverflow.ellipsis,),
                                     ],
                                   ),
                                 ),

                                  Container(
                                    width: MediaQuery.of(context).size.width /5,
                                    child: Column(
                                      children: [
                                        Text("129",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 11.0),),
                                        Text("Followers",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 11.0),
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ],
                                    ),
                                  ),

                                  Container(
                                    width: MediaQuery.of(context).size.width /5,
                                    child: Column(
                                      children: [
                                        Text("231",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                              fontSize: 11.0),),
                                        Text("Suivi(e)s",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 11.0),
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,),
                                      ],
                                    ),
                                  )

                                ],
                              ),
                            ),

                            Align(
                              alignment: Alignment.centerLeft,
                              child: CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 29,
                                child: CircleAvatar(
                                  radius: 29,
                                  backgroundColor: Colors.white,
                                  child: ClipOval(
                                    child: Image.asset(
                                      'images/person-removebg-preview.png',
                                      fit: BoxFit.cover,
                                      width: 60,
                                      height: 60,
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),

                        Container(
                          height: 20.0,
                          margin: EdgeInsets.only(left: 2.0, ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Ousman Franck",style: TextStyle(
                                color: Colors.white,
                                fontSize: 12.0,
                                fontWeight: FontWeight.bold,
                              ),),

                              InkWell(
                                onTap: (){},
                                child:Container(
                                  child:  Text("Modifier",style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12.0,
                                  ),),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 10.0),

                        Container(
                          height: 18.0,
                          margin: EdgeInsets.only(left: 2.0, ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Université: Marseille",style: TextStyle(
                                color: Colors.white,
                                fontSize: 12.0,
                              ),),

                              InkWell(
                                onTap: (){},
                                child:Container(
                                  child:  Text("Modifier",style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12.0,
                                  ),),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 10.0),

                        Container(
                          height: 18.0,
                          margin: EdgeInsets.only(left: 2.0, ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Adresse: Ouakam 46em",style: TextStyle(
                                color: Colors.white,
                                fontSize: 12.0,
                              ),),

                              InkWell(
                                onTap: (){},
                                child:Container(
                                  child:  Text("Modifier",style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12.0,
                                  ),),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 10.0),

                        Container(
                          height: 18.0,
                          margin: EdgeInsets.only(left: 2.0, ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Profession: Etudiant",style: TextStyle(
                                color: Colors.white,
                                fontSize: 12.0,
                              ),),

                              InkWell(
                                onTap: (){},
                                child:Container(
                                  child:  Text("Modifier",style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12.0,
                                  ),),
                                ),
                              )
                            ],
                          ),
                        ),


                        SizedBox(height: 10.0),

                        Container(
                          height: 18.0,
                          margin: EdgeInsets.only(left: 2.0, ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Documents",style: TextStyle(
                                color: Colors.white,
                                fontSize: 14.0,
                              ),),
                              InkWell(
                                onTap: (){},
                                child:Container(
                                  child:Icon(CupertinoIcons.pencil_ellipsis_rectangle, color: Colors.white,),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 10.0),

                        Container(
                          width: double.infinity,
                          height: 140.0,
                          decoration: BoxDecoration(
                            color: Colors.transparent
                          ),
                          child: SingleChildScrollView(
                            physics: BouncingScrollPhysics(),
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                Container(
                                    width: 170.0,
                                    height: 130.0,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(15.0),
                                          bottomRight: Radius.circular(15.0)),
                                      color: Colors.white,
                                      border: Border.all(
                                        color: Colors.orangeAccent,
                                        width: 4.0,
                                      ),
                                    ),
                                    child: Stack(
                                      children: [
                                        Image.asset(
                                          'images/group-five-african-college-students-spending-time-together-campus-university-yard-black-afro-friends-studying-education-theme_627829-6007 1.png',
                                          width:double.infinity,
                                          height: double.infinity,
                                          fit: BoxFit.cover,),

                                        Column(
                                          mainAxisAlignment: MainAxisAlignment.end,
                                          children: [
                                            Container(
                                              width: 170.0,
                                              height: 45.0,
                                              decoration: BoxDecoration(
                                                  color: Colors.orangeAccent,
                                                  borderRadius: BorderRadius.only(
                                                      topLeft: Radius.circular(15),
                                                      topRight: Radius.circular(15)),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsets.symmetric(horizontal: 10),
                                                child: Text("Ici je vous presente mon Cv pour en savoir un peu plus sur mon parcours scolaire et professionel ",style: TextStyle(fontSize: 10),),
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    )
                                ),

                                SizedBox(width: 8.0),
                                Container(
                                    width: 170.0,
                                    height: 130.0,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(15.0),
                                          bottomRight: Radius.circular(15.0)),
                                      border: Border.all(
                                        color: Colors.orangeAccent,
                                        width: 4.0,
                                      ),
                                    ),
                                    child: Stack(
                                      children: [
                                        Image.asset(
                                          'images/group-five-african-college-students-spending-time-together-campus-university-yard-black-afro-friends-studying-education-theme_627829-6007 1.png',
                                          width:double.infinity,
                                          height: double.infinity,
                                          fit: BoxFit.cover,),

                                        Column(
                                          mainAxisAlignment: MainAxisAlignment.end,
                                          children: [
                                            Container(
                                              width: 170.0,
                                              height: 45.0,
                                              decoration: BoxDecoration(
                                                  color: Colors.orangeAccent,
                                                  borderRadius: BorderRadius.only(topLeft: Radius.circular(15),topRight: Radius.circular(15))
                                              ),
                                              child: Padding(
                                                padding: EdgeInsets.symmetric(horizontal: 10),
                                                child: Text("je vous presente mon certificat de remise lors de mon stage Rstel Hight-T ",style: TextStyle(fontSize: 10),),
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    )
                                ),

                                SizedBox(width: 8.0),
                                Container(
                                  width: 170.0,
                                  height: 130.0,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                    borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(15.0),
                                        bottomRight: Radius.circular(15.0)),
                                    border: Border.all(
                                      color: Colors.orangeAccent,
                                      width: 4.0,
                                    ),
                                  ),
                                  child: Stack(
                                    children: [
                                      Image.asset(
                                        'images/group-five-african-college-students-spending-time-together-campus-university-yard-black-afro-friends-studying-education-theme_627829-6007 1.png',
                                        width:double.infinity,
                                        height: double.infinity,
                                        fit: BoxFit.cover,),

                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                          Container(
                                            width: 170.0,
                                            height: 45.0,
                                            decoration: BoxDecoration(
                                                color: Colors.orangeAccent,
                                                borderRadius: BorderRadius.only(topLeft: Radius.circular(15),topRight: Radius.circular(15))
                                            ),
                                            child: Padding(
                                              padding: EdgeInsets.symmetric(horizontal: 10),
                                              child: Text("je vous presente mon certificat de remise lors de mon stage Rstel Hight-T ",style: TextStyle(fontSize: 10),),
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  )
                                ),
                              ],
                            ) ,
                          )
                        ),

                        SizedBox(height: 10.0),

                        InkWell(
                          onTap: (){},
                          child: Container(
                              width: double.infinity,
                              height: 50.0,
                              decoration: BoxDecoration(
                                color: Colors.blueGrey,
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(10.0),
                                  topLeft: Radius.circular(10.0),
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsets.only(left: 10, right: 10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          width: 30.0,
                                          height: 32.0,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(5.0),
                                            color: Colors.pinkAccent,
                                          ),
                                          child: Center(
                                            child: Icon(
                                              Icons.school,
                                              color: Colors.white,
                                              size: 20,
                                            ),
                                          ),
                                        ),
                                        SizedBox(width: 5.0),
                                        Text(
                                          "Parcours académique ",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12.0,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Icon(CupertinoIcons.forward),
                                  ],
                                ),
                              )
                          ),
                        ),

                        InkWell(
                          onTap: (){},
                          child: Container(
                              width: double.infinity,
                              height: 50.0,
                              decoration: BoxDecoration(
                                color: Colors.blueGrey,
                                borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(10.0),
                                  bottomLeft: Radius.circular(10.0),
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsets.only(left: 10, right: 10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                Container(
                                width: 30.0,
                                  height: 32.0,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5.0),
                                      color: Colors.orangeAccent
                                  ),
                                  child: Center(
                                    child:Icon(CupertinoIcons.briefcase_fill,
                                      size: 20,
                                      color: Colors.white,),
                                  ),
                                ),
                                        SizedBox(width: 5.0),
                                        Text(
                                          "Expriences",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12.0,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Icon(CupertinoIcons.forward),
                                  ],
                                ),
                              )
                          ),
                        ),

                        SizedBox(height: 10.0),

                        // Card(
                        //   color: Colors.green,
                        //   elevation: 4, // élévation pour ajouter une ombre
                        //   shape: RoundedRectangleBorder(
                        //     borderRadius: BorderRadius.circular(12.0), // coins arrondis
                        //   ),
                        //   child: ListTile(
                        //     title: Text('Titre'),
                        //     subtitle: Text('Sous-titre'),
                        //     leading: Icon(Icons.info), // icône à gauche
                        //     trailing: Icon(Icons.arrow_forward), // icône à droite
                        //     onTap: () {
                        //       // Action à effectuer lorsqu'on appuie sur le Card
                        //     },
                        //   ),
                        // )

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
