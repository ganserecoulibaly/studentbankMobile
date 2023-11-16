import 'package:flutter/material.dart';

class ChatInputField extends StatefulWidget {
  const ChatInputField({Key? key}) : super(key: key);

  @override
  _ChatInputFieldState createState() => _ChatInputFieldState();
}

class _ChatInputFieldState extends State<ChatInputField> {
  TextEditingController messageController = TextEditingController();
  bool isTyping = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: Container()),
        Container(
          color: Colors.black,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Expanded(
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  color: Colors.white38,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      InkWell(
                        borderRadius: BorderRadius.circular(30),
                        onTap: () {},
                        child: Ink(
                          width: 45.0,
                          height: 45.0,
                          child: Icon(
                              Icons.emoji_emotions_outlined,
                              color: Colors.green[300]),
                        ),
                      ),
                      Expanded(
                        child: TextFormField(
                          controller: messageController,
                          maxLines: 5,
                          minLines: 1,
                          cursorColor: Colors.black,
                          style: const TextStyle(color: Colors.white, fontSize: 15.0),
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: "Ecrit...",
                            hintStyle: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          onChanged: (text) {
                            setState(() {
                              isTyping = text.isNotEmpty;
                            });
                          },
                        ),
                      ),
                      InkWell(
                        borderRadius: BorderRadius.circular(30),
                        onTap: () {},
                        child: Ink(
                          width: 45.0,
                          height: 45.0,
                          child: Icon(
                              Icons.link,
                              color: Colors.green[300]),
                        ),
                      ),
                      InkWell(
                        borderRadius: BorderRadius.circular(30),
                        onTap: () {},
                        child: Ink(
                          width: 45.0,
                          height: 45.0,
                          child: Icon(
                              Icons.camera_alt_outlined,
                              color: Colors.green[300]),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                color: isTyping ? Colors.white : Colors.green[300],
                child: InkWell(
                  onTap: () {
                    if (isTyping) {
                      // Envoyer le message
                    } else {
                      // Démarre l'enregistrement vocal
                    }
                  },
                  borderRadius: BorderRadius.circular(30),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Icon(isTyping ? Icons.send : Icons.mic,
                        color: isTyping ? Colors.green[300] : Colors.white),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
