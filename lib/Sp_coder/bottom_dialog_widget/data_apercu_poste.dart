import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ApercuPoste extends StatefulWidget {
  const ApercuPoste({Key? key}) : super(key: key);

  @override
  State<ApercuPoste> createState() => _ApercuPosteState();
}

class _ApercuPosteState extends State<ApercuPoste> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 5.0, right: 5.0, top: 45),
          child: Container(
              height: MediaQuery.of(context).size.height * 0.8,
              color: Colors.green,
              child:Scrollbar(
                  thickness: 3.0,
                  radius: Radius.circular(20.0),
                  thumbVisibility: true,
                  child: ListView(
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    children: [
                      Column(
                        children: [




                        ],
                      )
                    ],
                  )
              )
          ),
        )
      ],
    );
  }
}
