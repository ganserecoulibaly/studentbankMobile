import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../chat/chatRoom_page.dart';
import '../models/list_user_chat_model.dart';

class ListUserChat extends StatelessWidget {

  ListUserModel listUserModel;
  ListUserChat({required this.listUserModel});

  @override
  Widget build(BuildContext context) {
    return ListTile(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) {
              return ChatRoomPage();
            }),
          );
        },
        leading: Stack(
          children: [
            CircleAvatar(
              backgroundColor: const Color(0xffc0baba),
              radius: 19,
              child: CircleAvatar(
                radius: 17,
                backgroundColor: const Color(0xffc0baba),
                child: ClipOval(
                  child: Image.asset(listUserModel.photoDeProfil,
                    fit: BoxFit.cover,
                    width: 40,
                    height: 40,
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Container(
                width: 12,
                height: 12,
                decoration: BoxDecoration(
                  color: Colors.green,
                  shape: BoxShape.circle,
                  border: Border.all(
                      width: 2, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
        title: Text(listUserModel.name,
          style: TextStyle(color: Colors.white,
          fontSize: 14.0,
          fontWeight: FontWeight.bold)
          ,),
        subtitle: Text(listUserModel.lastmessage,
          style: TextStyle(color: Colors.white,
            fontSize: 12.0,),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        trailing: Text(listUserModel.time,
          style: TextStyle(color: Colors.white,
            fontSize: 11,)
          ,)
    );
  }
}
