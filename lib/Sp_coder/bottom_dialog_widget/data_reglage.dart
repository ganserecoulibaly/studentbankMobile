import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ReglageDialog extends StatefulWidget {
  const ReglageDialog({Key? key}) : super(key: key);

  @override
  State<ReglageDialog> createState() => _ReglageDialogState();
}

class _ReglageDialogState extends State<ReglageDialog> {



  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
      Padding(
          padding:EdgeInsets.only(top:10.0),
      child:  Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(),
              Container(
                width: 70.0,
                height: 8.0,
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(30)
                ),
              ),
              Container(),
            ],
          )
        ],
      ),
      ),
        Padding(
          padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 70),
          child: Container(
              height: MediaQuery.of(context).size.height * 0.4,
              //color: Colors.green,
              child: ListView(
                physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const SizedBox(height: 8.0),
                      Container(
                          width:130.0 ,
                          height: 30.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color: Colors.pinkAccent,
                          ),
                          child:Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20.0),
                            child:  Row(
                              children: [
                                Icon(
                                  CupertinoIcons.globe,
                                  color: Colors.white,
                                  size: 20,
                                ),
                                const SizedBox(width: 15.0),
                                Text("Public",style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14.0,
                                ),),
                              ],
                            ),
                          )
                      ),
                      const SizedBox(height: 8.0),
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Center(
                            child: Text('Privé',
                              style: TextStyle(
                                fontSize: 15,
                               ),)),
                      ),
                      Text('Seuls vos amis peuvent voir votre poste',
                        style: TextStyle(
                            color: Colors.black,
                          fontSize: 15,
                        ),
                        textAlign: TextAlign.center,),
                      const SizedBox(height: 3.0),
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Center(
                            child: Text('Public',
                              style: TextStyle(
                                fontSize: 15,
                              ),)),
                      ),
                      Text('Tout le monde peut voir votre poste',
                        style: TextStyle(
                            color: Colors.black,
                          fontSize: 15,
                        ),
                        textAlign: TextAlign.center,),
                      const SizedBox(height: 3.0),
                      TextButton(
                        onPressed: () async {
                          Navigator.pop(context);
                        },
                        child: const Center(
                            child: Text('Annuler',
                              style: TextStyle(
                                fontSize: 15,
                              ),
                            )),
                      ),
                    ],
                  ),
                ],
              )
          ),
        )
      ],
    );
  }
}
