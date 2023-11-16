import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DataImportImageDialog extends StatefulWidget {
  const DataImportImageDialog({Key? key}) : super(key: key);

  @override
  State<DataImportImageDialog> createState() => _DataImportImageDialogState();
}



class _DataImportImageDialogState extends State<DataImportImageDialog> {





  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
            padding: EdgeInsets.only(top: 10),
            child: Column(
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
            )
        ),
        Padding(
          padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 70.0),
          child: Container(
              height: MediaQuery.of(context).size.height * 0.8,
              //color: Colors.green,
              child: ListView(
                physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const SizedBox(height: 8.0),
                      TextButton(
                        onPressed: () async {
                          Navigator.pop(context);
                        },
                        child: const Center(child: Text('Supprimer la photo',
                          style: TextStyle(
                              color: Colors.red,
                            fontSize: 15,),)),
                      ),
                      const SizedBox(height: 8.0),
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);

                        },
                        child: const Center(
                            child: Text('Prendre une photo',
                              style: TextStyle(
                                fontSize: 15,
                              ),)),
                      ),
                      const SizedBox(height: 8.0),
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Center(
                            child: Text('Choisir une photo',
                              style: TextStyle(
                                fontSize: 15,
                              ),)),
                      ),
                      const SizedBox(height: 8.0),
                      TextButton(
                        onPressed: () async {
                          Navigator.pop(context);
                        },
                        child: const Center(
                            child: Text('Annuler',
                              style: TextStyle(
                                fontSize: 15,
                               ),)),
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

