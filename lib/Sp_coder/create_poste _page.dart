import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'bottom_dialog_widget/data_apercu_poste.dart';
import 'bottom_dialog_widget/data_bottom_dialog.dart';
import 'bottom_dialog_widget/data_date_time.dart';
import 'bottom_dialog_widget/data_import_image.dart';
import 'bottom_dialog_widget/data_reglage.dart';


class CreatePoste extends StatefulWidget {
  const CreatePoste({Key? key}) : super(key: key);

  @override
  State<CreatePoste> createState() => _CreatePosteState();
}

class _CreatePosteState extends State<CreatePoste> {
  final TextEditingController _titrePosteController = TextEditingController();
  final TextEditingController _DescriPosteController = TextEditingController();


  /////////////////////////////////////BottomDialog d'importation d'image////////////
  void showBottomImportImage(BuildContext context) {
    showModalBottomSheet(
        context: context,
        isScrollControlled: false,
        backgroundColor: Colors.white,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
        ),
        builder: (BuildContext context) {
          return DataImportImageDialog();
        }
    );
  }


/////////////////////////////////////BottomDialog de Type de publication////////////
  void showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
      ),
      builder: (context) => DraggableScrollableSheet(
        initialChildSize: 0.4,
        maxChildSize: 0.9,
        minChildSize: 0.32,
        expand: false,
        builder: (context, scrollCtrl) {
          return Padding(
              padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
          child: Stack(
            children: [
          Column(
          children: [
          Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(),
              Column(
                children:[
                  Container(
                    width: 70.0,
                    height: 8.0,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(30)
                    ),
                  ),
                  SizedBox(
                    height: 5.0
                  ),
                  Text(
                    "Types de publication",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                ]
              ),
              Container(),
            ],
          ),
            Divider(
              color: Colors.pink,
              thickness: 1.0,
            ),
            ],
          ),
              SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                controller: scrollCtrl,
                child: TypePublicationDialog(),
              ),

            ],
          )
          );
        },
      ),
    );
  }

  /////////////////////////////////////BottomDialog Reglage////////////
  void showBottomReglage(BuildContext context) {
    showModalBottomSheet(
        context: context,
        isScrollControlled: false,
        backgroundColor: Colors.white,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
        ),
        builder: (BuildContext context) {
          return ReglageDialog();
        }
    );
  }


  /////////////////////////////////////BottomDialog date time////////////
  void showBottomDateTime(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: false,
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
      ),
      builder: (BuildContext context) {
        return DateTimeDialog();
      }
    );
  }


  /////////////////////////////////////BottomDialog Aperçu de Poste////////////
  void showBottomSheetApercuPoste(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
      ),
      builder: (context) => DraggableScrollableSheet(
        initialChildSize: 0.4,
        maxChildSize: 0.9,
        minChildSize: 0.32,
        expand: false,
        builder: (context, scrollCtrl) {
          return Padding(
              padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
              child: Stack(
                children: [
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(),
                          Column(
                              children:[
                                Container(
                                  width: 70.0,
                                  height: 8.0,
                                  decoration: BoxDecoration(
                                      color: Colors.grey,
                                      borderRadius: BorderRadius.circular(30)
                                  ),
                                ),
                                SizedBox(
                                    height: 5.0
                                ),
                                Text(
                                  "Aperçu de vôtre publication",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                ),
                              ]
                          ),
                          Container(),
                        ],
                      ),
                      Divider(
                        color: Colors.pink,
                        thickness: 1.0,
                      ),
                    ],
                  ),
                  SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    controller: scrollCtrl,
                    child: ApercuPoste(),
                  ),

                ],
              )
          );
        },
      ),
    );
  }


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

            //Normalement la place de notre Appbar prenant un Column

            Padding(
              padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 50.0),
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

                        Stack(
                          children: [
                            Container(
                              height: 40.0,
                              margin: EdgeInsets.only(left: 5.0, top: 12.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                                color: Colors.pinkAccent,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(
                                    CupertinoIcons.add_circled_solid,
                                    color: Colors.white,
                                    size: 30,
                                  ),
                                  Text("Créer un poste",style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15.0,
                                  ),),
                                  SizedBox(width: 5.0),
                                  Container(),
                                ],
                              ),

                            ),

                            Align(
                              alignment: Alignment.centerRight,
                              child: CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 29,
                                child: CircleAvatar(
                                  radius: 29,
                                  backgroundColor: Colors.white,
                                  child: ClipOval(
                                    child: Image.asset(
                                      'images/person-removebg-preview.png',
                                      fit: BoxFit.cover,
                                      width: 60,
                                      height: 60,
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),

                        SizedBox(height: 10.0),

                        Container(
                          width: double.infinity,
                          height: 20.0,
                          margin: EdgeInsets.only(left: 2.0, ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("Titre du poste",style: TextStyle(
                                color: Colors.white,
                                fontSize: 12.0,
                              ),),
                            ],
                          ),

                        ),

                        SizedBox(
                          height: 44.0,
                          child: Card(
                            elevation: 5.0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),

                            ),
                            child: Padding(
                              padding: EdgeInsets.only(left: 7.0, right: 7.0),
                              child: TextFormField(
                                style: TextStyle(fontSize: 12.0),
                                maxLines: 1,
                                controller: _titrePosteController,
                                decoration: const InputDecoration(
                                  hintText: 'écrit...',
                                  border: InputBorder.none,
                                ),
                              ),
                            )
                          ),
                        ),

                        SizedBox(height: 10.0),

                        Container(
                          width: double.infinity,
                          height: 20.0,
                          margin: EdgeInsets.only(left: 2.0, ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("Description",style: TextStyle(
                                color: Colors.white,
                                fontSize: 13.0,
                              ),),
                            ],
                          ),
                        ),

                        SizedBox(
                          height: 90.0,
                          child: Card(
                              elevation: 4.0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),

                              ),
                              child: Padding(
                                padding: EdgeInsets.only(left: 7.0, right: 7.0),
                                child: TextFormField(
                                  style: TextStyle(fontSize: 12.0),
                                  maxLines: 1000,
                                  controller: _DescriPosteController,
                                  decoration: const InputDecoration(
                                    border: InputBorder.none,
                                  ),
                                ),
                              )
                          ),
                        ),

                        SizedBox(height: 10.0),

                        Container(
                          width: double.infinity,
                          height: 20.0,
                          margin: EdgeInsets.only(left: 2.0, ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("Associer une image",style: TextStyle(
                                color: Colors.white,
                                fontSize: 13.0,
                              ),
                              ),
                            ],
                          ),
                        ),

                        InkWell(
                          onTap: () {
                            showBottomImportImage(context);
                          },
                          child: Container(
                            height:  35.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.0),
                              color: Colors.white,
                              border: Border.all(
                                color: Colors.pinkAccent,
                                width: 1.0,
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      CupertinoIcons.photo_on_rectangle,
                                      color: Colors.black,
                                      size: 20,
                                    ),
                                    SizedBox(width: 5.0),
                                    Text(
                                      "Importer une image",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14.0,
                                      ),
                                    ),
                                  ],
                                ),
                                Icon(
                                  CupertinoIcons.chevron_down,
                                  color: Colors.black,
                                  size: 25,
                                ),
                              ],
                            ),
                          ),
                        ),


                        SizedBox(height: 10.0),

                        Container(
                          width: double.infinity,
                          height: 20.0,
                          margin: EdgeInsets.only(left: 2.0, ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("Type de publication",style: TextStyle(
                                color: Colors.white,
                                fontSize: 13.0,
                              ),
                              ),
                            ],
                          ),
                        ),

                        InkWell(
                          onTap: () {
                            showBottomSheet(context);
                          },
                          child: Container(
                            height:  35.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.0),
                              color: Colors.white,
                              border: Border.all(
                                color: Colors.pinkAccent,
                                width: 1.0,
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      CupertinoIcons.tags,
                                      color: Colors.black,
                                      size: 20,
                                    ),
                                    SizedBox(width: 5.0),
                                    Text(
                                      "Selectioné",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14.0,
                                      ),
                                    ),
                                  ],
                                ),
                                Icon(
                                  CupertinoIcons.chevron_down,
                                  color: Colors.black,
                                  size: 25,
                                ),
                              ],
                            ),
                          ),
                        ),

                        SizedBox(height: 10.0),

                        Container(
                          width: double.infinity,
                          height: 20.0,
                          margin: EdgeInsets.only(left: 2.0, ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("Option",style: TextStyle(
                                color: Colors.white,
                                fontSize: 13.0,
                              ),),
                            ],
                          ),
                        ),

                        InkWell(
                          onTap:(){
                            showBottomReglage(context);
                          },
                          child: Container(
                            height: 35.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.0),
                              color: Colors.white,
                              border: Border.all(
                                color: Colors.pinkAccent,
                                width: 1.0,
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      CupertinoIcons.gear_alt_fill,
                                      color: Colors.black,
                                      size: 20,
                                    ),
                                    SizedBox(width: 5.0,),
                                    Text("Réglage",style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14.0,
                                    ),)
                                  ],
                                ),
                                Icon(
                                  CupertinoIcons.chevron_down,
                                  color: Colors.black,
                                  size: 25,
                                ),
                              ],
                            ),
                          ),
                        ),

                        SizedBox(height: 30.0),

                        InkWell(
                          onTap:(){
                            showBottomDateTime(context);
                          },
                          child: Container(
                            height: 35.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              color: Colors.white,
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [Colors.orange, Colors.pinkAccent],
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Programmer la publication",style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14.0,
                                ),),
                                SizedBox(width: 25.0,),
                                Icon(
                                  CupertinoIcons.chevron_down,
                                  color: Colors.white,
                                  size: 25,
                                ),
                              ],
                            ),
                          ),
                        ),

                        SizedBox(height: 25.0),

                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:[
                            InkWell(
                              onTap: () {

                              },
                              child: Container(
                                width: 95.0,
                                height: 25.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.0),
                                  gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [Colors.orange, Colors.pinkAccent],
                                  ),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Publier",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14.0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),

                            InkWell(
                              onTap: () {
                                showBottomSheetApercuPoste(context);
                              },
                              child: Container(
                                width: 95.0,
                                height: 25.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.0),
                                  gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [Colors.orange, Colors.pinkAccent],
                                  ),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.only(left: 10.0, right:10.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Aperçu",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14.0,
                                        ),
                                      ),
                                      Icon(Icons.visibility,
                                          color: Colors.white)
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ]
                        )
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
