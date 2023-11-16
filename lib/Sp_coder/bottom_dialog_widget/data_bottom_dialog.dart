import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TypePublicationDialog extends StatefulWidget {
  const TypePublicationDialog({Key? key}) : super(key: key);

  @override
  State<TypePublicationDialog> createState() => _TypePublicationDialogState();
}

enum PublicationTypes{
  AnnocesPartenaires,
  Associations,
  Universites,
  Etudiants,
  Alternance,
  Stage,
  JobsEtudiants,
  Informations
}

class _TypePublicationDialogState extends State<TypePublicationDialog> {

  var myPublicationDefaults = PublicationTypes.AnnocesPartenaires;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 45),
          child: Container(
              height: MediaQuery.of(context).size.height * 0.8,
              //color: Colors.green,
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

                          Card(
                            color: Colors.pink[200],
                            elevation: 5, // élévation pour ajouter une ombre
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0), // coins arrondis
                            ),
                            child:RadioListTile(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              value: PublicationTypes.AnnocesPartenaires,
                              groupValue: myPublicationDefaults,
                              onChanged: (PublicationTypes? value) {
                                setState(() {
                                  myPublicationDefaults = value!;
                                });
                              },
                              title: Text(
                                "Annonces partenaires",
                                style: TextStyle(
                                  fontSize: 14, // ajustez la taille du texte selon vos besoins
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 10.0,),

                          Card(
                            color: Colors.green[200],
                            elevation: 5, // élévation pour ajouter une ombre
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0), // coins arrondis
                            ),
                            child:RadioListTile(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              value: PublicationTypes.Associations,
                              groupValue: myPublicationDefaults,
                              onChanged: (PublicationTypes? value) {
                                setState(() {
                                  myPublicationDefaults = value!;
                                });
                              },
                              title: Text(
                                "Associations",
                                style: TextStyle(
                                  fontSize: 14, // ajustez la taille du texte selon vos besoins
                                ),
                              ),
                            ),
                          ),

                          SizedBox(height: 10.0,),

                          Card(
                            color: Colors.orange[200],
                            elevation: 5, // élévation pour ajouter une ombre
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0), // coins arrondis
                            ),
                            child:RadioListTile(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              value: PublicationTypes.Universites,
                              groupValue: myPublicationDefaults,
                              onChanged: (PublicationTypes? value) {
                                setState(() {
                                  myPublicationDefaults = value!;
                                });
                              },
                              title: Text(
                                "Universités",
                                style: TextStyle(
                                  fontSize: 14, // ajustez la taille du texte selon vos besoins
                                ),
                              ),
                            ),
                          ),

                          SizedBox(height: 10.0,),

                          Card(
                            color: Colors.blue[200],
                            elevation: 5, // élévation pour ajouter une ombre
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0), // coins arrondis
                            ),
                            child:RadioListTile(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              value: PublicationTypes.Etudiants,
                              groupValue: myPublicationDefaults,
                              onChanged: (PublicationTypes? value) {
                                setState(() {
                                  myPublicationDefaults = value!;
                                });
                              },
                              title: Text(
                                "Etudiants",
                                style: TextStyle(
                                  fontSize: 14, // ajustez la taille du texte selon vos besoins
                                ),
                              ),
                            ),
                          ),

                          SizedBox(height: 10.0,),

                          Card(
                            color: Colors.purple[200],
                            elevation: 5, // élévation pour ajouter une ombre
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0), // coins arrondis
                            ),
                            child:RadioListTile(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              value: PublicationTypes.Alternance,
                              groupValue: myPublicationDefaults,
                              onChanged: (PublicationTypes? value) {
                                setState(() {
                                  myPublicationDefaults = value!;
                                });
                              },
                              title: Text(
                                "Alternance",
                                style: TextStyle(
                                  fontSize: 14, // ajustez la taille du texte selon vos besoins
                                ),
                              ),
                            ),
                          ),

                          SizedBox(height: 10.0,),

                          Card(
                            color: Colors.brown[200],
                            elevation: 5, // élévation pour ajouter une ombre
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0), // coins arrondis
                            ),
                            child:RadioListTile(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              value: PublicationTypes.Stage,
                              groupValue: myPublicationDefaults,
                              onChanged: (PublicationTypes? value) {
                                setState(() {
                                  myPublicationDefaults = value!;
                                });
                              },
                              title: Text(
                                "Stage",
                                style: TextStyle(
                                  fontSize: 14, // ajustez la taille du texte selon vos besoins
                                ),
                              ),
                            ),
                          ),

                          SizedBox(height: 10.0,),

                          Card(
                            color: Colors.teal[200],
                            elevation: 5, // élévation pour ajouter une ombre
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0), // coins arrondis
                            ),
                            child:RadioListTile(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              value: PublicationTypes.JobsEtudiants,
                              groupValue: myPublicationDefaults,
                              onChanged: (PublicationTypes? value) {
                                setState(() {
                                  myPublicationDefaults = value!;
                                });
                              },
                              title: Text(
                                "Jobs Etudiants",
                                style: TextStyle(
                                  fontSize: 14, // ajustez la taille du texte selon vos besoins
                                ),
                              ),
                            ),
                          ),

                          SizedBox(height: 10.0,),

                          Card(
                            color: Colors.deepOrangeAccent[200],
                            elevation: 5, // élévation pour ajouter une ombre
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0), // coins arrondis
                            ),
                            child:RadioListTile(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              value: PublicationTypes.Informations,
                              groupValue: myPublicationDefaults,
                              onChanged: (PublicationTypes? value) {
                                setState(() {
                                  myPublicationDefaults = value!;
                                });
                              },
                              title: Text(
                                "Informations",
                                style: TextStyle(
                                  fontSize: 14, // ajustez la taille du texte selon vos besoins
                                ),
                              ),
                            ),
                          ),

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

