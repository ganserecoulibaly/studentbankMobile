import 'package:csc_picker/csc_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:studentbankmobile/Sp_coder/connexion/page_info_perso.dart';
import 'package:studentbankmobile/Sp_coder/connexion/page_inscription.dart';
import '../widgets/checkpoints_widget.dart';


class PaysMenuPage extends StatefulWidget {
  const PaysMenuPage({Key? key}) : super(key: key);

  @override
  State<PaysMenuPage> createState() => _PaysMenuPageState();
}

class _PaysMenuPageState extends State<PaysMenuPage> {

  String countryValue = "value";
  String stateValue = "";
  String cityValue = "";
  String address = "";

  List<String> checkPoints = ["1", "2", "3","4",];

  int checkedTill = 0;

  Color checkPointFilledColor = Colors.green;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Stack(
          children: [
            Image.asset(
              'images/DEBUT.png',
              width:double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,),
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
                            return InscriptionPage();
                          }));
                    },
                  ),
                ),
              ],
            ),

            Container(
              margin: EdgeInsets.only(top: 65.0),
              child:  CheckPoints(
                checkedTill: checkedTill,
                checkPoints: checkPoints,
                checkPointFilledColor: checkPointFilledColor,
              ),
            ),

            Padding(
              padding: EdgeInsets.only(left: 10.0, right: 10, top: 80.0),
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
                        Text("Pays de résidence",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                          ),),

                        SizedBox(height: 5.0),

                        Text("Inscription jdhvbofuhbvohvour vbuherfvozheo uhzeiufgvzehouvregzer",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12.0,
                          ),
                        textAlign: TextAlign.center,),

                        SizedBox(height: 20.0),

                        CSCPicker(
                          onCountryChanged: (country) {
                            // setState(() {
                            //   countryValue = country;
                            // });
                          },
                          onStateChanged: (State) {
                            // setState(() {
                            //
                            //   stateValue = State;
                            // });
                          },
                          onCityChanged: (city) {
                            // setState(() {
                            //
                            //   cityValue = city;
                            // });
                          },

                            countryDropdownLabel: "Pays",
                            stateDropdownLabel: "Etat",
                            cityDropdownLabel: "Ville",

                          countrySearchPlaceholder: "Rechercher pays",
                          stateSearchPlaceholder: "Rechercher etat",
                          citySearchPlaceholder: "Rechercher ville",

                          dropdownHeadingStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 17,
                              fontWeight: FontWeight.bold),



                        ),

                        SizedBox(height: 50.0),

                        InkWell(
                          onTap: () {
                            Navigator.pushReplacement(context,
                                MaterialPageRoute(builder: (context) {
                                  return  InfoPerson();
                                }));
                          },
                          child: Container(
                            width: 150.0,
                            height: 30.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [Colors.orange, Colors.black],
                              ),
                              border: Border.all(
                                color: Colors.white,
                                width: 1.0,
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Continuer",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14.0,
                                  ),
                                ),
                                Icon(
                                  Icons.arrow_forward,
                                  color: Colors.white,
                                  size: 20.0,
                                ),
                              ],
                            ),
                          ),
                        ),

                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        )
    );
  }
}

