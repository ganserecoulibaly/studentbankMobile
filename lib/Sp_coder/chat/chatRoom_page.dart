import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../navigation_bar/customBottomNavigationBar_Discussion.dart';
import 'discussions_page.dart';
import 'input_field.dart';

class ChatRoomPage extends StatefulWidget {
  const ChatRoomPage({Key? key}) : super(key: key);

  @override
  State<ChatRoomPage> createState() => _ChatRoomPageState();
}

class _ChatRoomPageState extends State<ChatRoomPage> {



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
                        // SizedBox(height: 5.0),
                        //
                        // SizedBox(height: 10.0),
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
          ChatInputField(),
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