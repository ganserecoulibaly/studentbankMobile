import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:studentbankmobile/Sp_coder/models/list_user_chat_model.dart';

import '../widgets/listUserChat_widget.dart';
import '../widgets/shimmer_arrow_widget.dart';
import 'chatRoom_page.dart';

class DiscussionPage extends StatefulWidget {
  const DiscussionPage({Key? key}) : super(key: key);

  @override
  State<DiscussionPage> createState() => _DiscussionPageState();
}

class _DiscussionPageState extends State<DiscussionPage> {

  TextEditingController searchController = TextEditingController();


  bool isSelected = false;

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
                          Text("Discussions",
                              style:TextStyle(
                            color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18.0

                          )),
                          Row(
                            children:[
                              InkWell(
                                  onTap:(){},
                                child: Icon(Icons.more_horiz,
                                  color: Colors.white,),
                              ),

                              SizedBox(width: 10.0,),

                              InkWell(
                                onTap: (){},
                                child: Icon(Icons.fullscreen_exit,
                                  color: Colors.white,),
                              ),

                              SizedBox(width: 10.0,),

                              InkWell(
                                onTap:(){},
                                child:Icon(CupertinoIcons.pencil_ellipsis_rectangle,
                                  color: Colors.white,)
                              )
                            ]
                          )
                        ]
                    ),
                  ],
                )
            ),
          ),
          Padding(
              padding:EdgeInsets.only(left: 10.0, right: 10.0, top: 85.0),
              child: Container(
                width: double.infinity,
                height: 30,
                decoration: BoxDecoration(
                  color: Colors.white70,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: TextField(
                  controller: searchController,
                  onChanged: (value) {},
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 3.0),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                        borderSide: const BorderSide(width: 0.8)
                    ),
                    hintText: 'Recherche',
                    prefixIcon: const Icon(
                      Icons.search_rounded,
                      size: 30,
                    ),
                  ),
                ),
              ),
          ),

          Padding(
            padding: EdgeInsets.only( top: 115.0),
            child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.transparent
              ),
              child: ListView(
                physics: BouncingScrollPhysics(),
                children: [
                  Padding(
                      padding:EdgeInsets.only(left: 30.0,),
                  child:SchimmerArrowos(),
                  ),
                  SizedBox(height: 10.0,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                     Padding(
                         padding: EdgeInsets.only(left: 45.0, right: 45.0,),
                     child:  Container(
                       height: 40.0,
                       decoration: BoxDecoration(
                         //color: Color(0xFFFAC7C3),
                         borderRadius: BorderRadius.circular(10)
                       ),
                       child: ListView(
                         scrollDirection: Axis.horizontal,
                         physics: BouncingScrollPhysics(),
                         children: [
                           Row(
                             mainAxisAlignment: MainAxisAlignment.center,
                             children: [
                               InkWell(
                                 onTap: (){},
                                 child: Column(
                                   children: [
                                     Icon(Icons.share_outlined,
                                       size: 20,
                                       color: Colors.white,),
                                     Text("Partager",
                                         style: TextStyle(
                                           fontSize: 11,
                                           color: Colors.white,
                                         ))
                                   ],
                                 ),
                               ),

                               SizedBox(width: 10.0,),

                               InkWell(onTap: (){},
                               child: Column(
                                 children: [
                                   Icon(Icons.volume_off,
                                     size: 20,
                                     color: Colors.white,),
                                   Text("Sourdine",
                                     style: TextStyle(
                                       fontSize: 11,
                                       color: Colors.white,
                                     ),)
                                 ],
                               )
                                 ,),

                               SizedBox(width: 10.0,),

                               InkWell(
                                 onTap: (){},
                                 child: Column(
                                   children: [
                                     Icon(Icons.archive_outlined,
                                       size: 20,
                                       color: Colors.white,),
                                     Text("Archiver",
                                         style: TextStyle(
                                           fontSize: 11,
                                           color: Colors.white,
                                         ))
                                   ],
                                 ),
                               ),

                               SizedBox(width: 10.0,),

                               InkWell(
                                 onTap: (){},
                                 child: Column(
                                   children: [
                                     Icon(Icons.not_interested_outlined,
                                       size: 20,
                                       color: Colors.white,),
                                     Text("Bloquer",
                                         style: TextStyle(
                                           fontSize: 11,
                                           color: Colors.white,
                                         ))
                                   ],
                                 ),
                               ),

                               SizedBox(width: 10.0,),

                               InkWell(
                                 onTap: (){},
                                 child: Column(
                                   children: [
                                     Icon(Icons.add,
                                       size: 20,
                                       color: Colors.white,),
                                     Text("Ajouter",
                                         style: TextStyle(
                                           fontSize: 11,
                                           color: Colors.white,
                                         ))
                                   ],
                                 ),
                               ),

                               SizedBox(width: 10.0,),

                               InkWell(
                                 onTap: (){},
                                 child: Column(
                                   children: [
                                     Icon(Icons.delete_outline,
                                       size: 20,
                                       color: Colors.white,),
                                     Text("Supprimer",
                                         style: TextStyle(
                                           fontSize: 11,
                                           color: Colors.white,
                                         ))
                                   ],
                                 ),
                               )
                             ],
                           )

                         ],
                       ),
                     ),
                       ),
                      Padding(
                        padding: EdgeInsets.only(left: 10.0, right: 10.0),
                      child: Divider(color: Colors.white,
                        thickness: 1.0,
                      ),),
                      ListUserChat(listUserModel: user1,),
                      ListUserChat(listUserModel: user2,),
                      ListUserChat(listUserModel: user3,),
                      ListUserChat(listUserModel: user4,),
                      ListUserChat(listUserModel: user5,),
                      ListUserChat(listUserModel: user6,),
                      ListUserChat(listUserModel: user7,),
                      ListUserChat(listUserModel: user8,),
                      ListUserChat(listUserModel: user9,),
                      ListUserChat(listUserModel: user10,),



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

