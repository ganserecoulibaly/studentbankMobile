import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../navigation_bar/customBottomNavigationBar_Discussion.dart';
import 'discussions_page.dart';

class ChatRoomPage extends StatefulWidget {
  const ChatRoomPage({Key? key}) : super(key: key);

  @override
  State<ChatRoomPage> createState() => _ChatRoomPageState();
}

class _ChatRoomPageState extends State<ChatRoomPage> {

  TextEditingController messageController = TextEditingController();

  List<Message> messages = List.generate(
    20,
        (index) => Message(
      content: 'Message $index',
      sender: index % 2 == 0 ? 'User1' : 'User2',
    ),
  );

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
                          return CustomBottomNavigationBarDiscussion();
                        }));
                  },
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 30.0),
            child: Container(
              child: Center(
                child: Column(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 27,
                      child: CircleAvatar(
                        radius: 25,
                        backgroundColor: const Color(0xffc0baba),
                        child: ClipOval(
                          child: Image.asset(
                            'images/img (8).jpg',
                            fit: BoxFit.cover,
                            width: 60,
                            height: 60,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width / 3,
                          child: Text(
                            "Davic Rostel ",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        SizedBox(height: 5.0),
                        Text(
                          "En ligne",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 10.0),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white70,
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Text("Voir profile"),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 115.0, left: 10.0, right: 10.0),
            child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                color: Colors.transparent,
              ),
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start, // Alignez les messages à gauche
                  children: [
                    ...messages.asMap().entries.map((entry) {
                      final index = entry.key;
                      final message = entry.value;

                      if (index % 5 == 0 && index != 0) {
                        return Center(
                          child: Text(
                            '11 jan', // Remplacez par la logique de la date
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.white,),
                          ),
                        );
                      }

                      return Container(
                        padding: EdgeInsets.all(8.0),
                        margin: EdgeInsets.symmetric(vertical: 4.0),
                        child: Row(
                          mainAxisAlignment: message.sender == 'User1'
                              ? MainAxisAlignment.start
                              : MainAxisAlignment.end,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: message.sender == 'User1'
                                    ? Colors.blue
                                    : Colors.green,
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  message.content,
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    }).toList(),
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
             child:
             Container(
               padding: EdgeInsets.only(left: 5.0, right:5.0, ),
              color: Colors.black,
              height: 40,
              child: Row(
                children: [
                  InkWell(
                    onTap:(){},
                    child: Icon(
                      Icons.emoji_emotions,
                      color: Colors.white70,
                      size: 20,
                    ),
                  ),

                  SizedBox(width: 5.0),

                  InkWell(
                    onTap:(){},
                    child: Icon(
                      Icons.camera_alt_outlined,
                      color: Colors.white70,
                      size: 20,
                    ),
                  ),

                  SizedBox(width: 10.0),

                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Container(
                            //height: 40,
                            padding: EdgeInsets.only(left: 3.0, right:3.0, top:3.0  ),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5.0)
                            ),
                            child: TextField(
                              onTap: () {
                              },
                              textInputAction: TextInputAction.newline,
                              controller: messageController,
                              minLines: 1, // Nombre minimum de lignes visibles
                              maxLines: 5, // Nombre maximum de lignes visibles
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 11
                              ),
                              cursorColor: Colors.blue
                              , // Couleur du texte du curseur
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.symmetric(vertical: 1.0),
                                border: InputBorder.none,
                                hintText: "Message",
                                hintStyle: const TextStyle(color: Colors.blue), // Couleur du texte d'indication
                              ),
                            ),
                          )

                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 10.0),

                 InkWell(
                   onTap:(){},
                   child: Icon(
                     Icons.send,
                     color: Colors.white70,
                     size: 20,
                   ),
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


class Message {
  final String content;
  final String sender;

  Message({
    required this.content,
    required this.sender,
  });
}