import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'home_page.dart';

class CreatePoste extends StatefulWidget {
  const CreatePoste({Key? key}) : super(key: key);

  @override
  State<CreatePoste> createState() => _CreatePosteState();
}

class _CreatePosteState extends State<CreatePoste> {
  final TextEditingController _titrePosteController = TextEditingController();
  final TextEditingController _DescriPosteController = TextEditingController();

  DateTime selectedDate = DateTime.now();
  TimeOfDay selectedTime = TimeOfDay.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: selectedTime,
    );
    if (picked != null && picked != selectedTime) {
      setState(() {
        selectedTime = picked;
      });
    }
  }

  int selectedIndex = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFFAC7C3),
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
                                fontSize: 12.0,
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
                                fontSize: 12.0,
                              ),
                              ),
                            ],
                          ),
                        ),

                        InkWell(
                          onTap: () {
                            _ImportePicture();
                          },
                          child: Container(
                            height: 30.0,
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
                              Text("Option",style: TextStyle(
                                color: Colors.white,
                                fontSize: 12.0,
                              ),),
                            ],
                          ),
                        ),

                        InkWell(
                          onTap:(){
                            _showSettings();
                          },
                          child: Container(
                            //width: 235.0,
                            height: 30.0,
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
                            _showDateIme();
                          },
                          child: Container(
                            height: 30.0,
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

                        InkWell(
                          onTap: () {

                          },
                          child: Container(
                            width: 80.0,
                            height: 18.0,
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
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),

      // bottomNavigationBar: SingleChildScrollView(
      //   physics: BouncingScrollPhysics(),
      //   scrollDirection: Axis.horizontal,
      //   child: GNav(
      //     backgroundColor: Color(0xFFFAC7C3),
      //     tabBackgroundColor: Colors.pinkAccent,
      //     padding: EdgeInsets.all(10),
      //     gap: 8,
      //     tabs: [
      //       GButton(
      //         icon: CupertinoIcons.house_fill,
      //         text: 'Accueil',
      //       ),
      //       GButton(
      //         icon: CupertinoIcons.square_stack_3d_up_fill,
      //         text: 'Menu',
      //       ),
      //       GButton(
      //         icon: CupertinoIcons.plus_square,
      //         text: 'Publier',
      //       ),
      //       GButton(
      //         icon: CupertinoIcons.money_euro_circle_fill,
      //         text: 'Banque',
      //       ),
      //       GButton(
      //         icon: CupertinoIcons.mail,
      //         text: 'message',
      //       ),
      //       GButton(
      //         icon: CupertinoIcons.search,
      //         text: 'Recherche',
      //       ),
      //       GButton(
      //         icon: CupertinoIcons.gear_alt_fill,
      //         text: 'Parametre',
      //       ),
      //       GButton(
      //         icon: CupertinoIcons.location_solid,
      //         text: 'Mobilité',
      //       ),
      //     ],
      //   ),
      // )

    );
  }

  Future<void> _ImportePicture() async {
    await showModalBottomSheet(
      backgroundColor: Colors.transparent,
      context: context,
      builder: (BuildContext context) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: ListView(
            physics: BouncingScrollPhysics(),
            children: [
              Container(
                decoration: const BoxDecoration(
                  color: Colors.black54,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0),
                  ),
                ),
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const SizedBox(height: 8.0),
                    TextButton(
                      onPressed: () async {
                        Navigator.pop(context);
                      },
                      child: const Center(child: Text('Supprimer la photo',
                        style: TextStyle(color: Colors.red),)),
                    ),
                    const SizedBox(height: 8.0),
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);

                      },
                      child: const Center(child: Text('Prendre une photo')),
                    ),
                    const SizedBox(height: 8.0),
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Center(child: Text('Choisir une photo')),
                    ),
                    const SizedBox(height: 8.0),
                    TextButton(
                      onPressed: () async {
                        Navigator.pop(context);
                      },
                      child: const Center(child: Text('Annuler')),
                    ),
                  ],
                ),
              ),
            ],
          )
        );
      },
    );
  }

  Future<void> _showSettings() async {
    await showModalBottomSheet(
      backgroundColor: Colors.transparent,
      context: context,
      builder: (BuildContext context) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: ListView(
            physics: BouncingScrollPhysics(),
            children: [
              Container(
                decoration: const BoxDecoration(
                  color: Colors.black54,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0),
                  ),
                ),
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const SizedBox(height: 8.0),
                    Container(
                      width:120.0 ,
                      height: 30.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.white,
                      ),
                      child:Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.0),
                        child:  Row(
                          children: [
                            Icon(
                              CupertinoIcons.globe,
                              color: Colors.black,
                              size: 20,
                            ),
                            const SizedBox(width: 15.0),
                            Text("Public",style: TextStyle(
                              color: Colors.black,
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
                      child: const Center(child: Text('Privé')),
                    ),
                    Text('Seuls vos amis peuvent voir votre poste',
                      style: TextStyle(
                          color: Colors.white
                      ),
                      textAlign: TextAlign.center,),
                    const SizedBox(height: 3.0),
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Center(child: Text('Public')),
                    ),
                    Text('Tout le monde peut voir votre poste',
                      style: TextStyle(
                          color: Colors.white
                      ),
                      textAlign: TextAlign.center,),
                    const SizedBox(height: 3.0),
                    TextButton(
                      onPressed: () async {
                        Navigator.pop(context);
                      },
                      child: const Center(child: Text('Annuler')),
                    ),
                  ],
                ),
              ),
            ],
          )
        );
      },
    );
  }

  Future<void> _showDateIme() async {
    await showModalBottomSheet(
      backgroundColor: Colors.transparent,
      context: context,
      builder: (BuildContext context) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: ListView(
            physics: BouncingScrollPhysics(),
            children: [
              Container(
                decoration: const BoxDecoration(
                  color: Colors.black54,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0),
                  ),
                ),
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const SizedBox(height: 8.0),
                    Container(
                        width:150.0 ,
                        height: 30.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: Colors.white,
                        ),
                        child:Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20.0),
                          child:  Row(
                            children: [
                              Text(
                                'Heure : ${selectedTime.format(context)}',
                                style: TextStyle(fontSize: 12),
                              ),
                            ],
                          ),
                        )
                    ),

                    const SizedBox(height: 8.0),

                    Container(
                        width:150.0 ,
                        height: 25.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: Colors.white,
                        ),
                        child:Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20.0),
                          child:  Row(
                            children: [
                              Text("Date: 08/11/23",style: TextStyle(
                                color: Colors.black,
                                fontSize: 15.0,
                              ),),
                            ],
                          ),
                        )
                    ),

                    const SizedBox(height: 8.0),
                    TextButton(
                      onPressed: () => _selectTime(context),

                      child: const Center(child: Text("Modifier l'heure")),
                    ),
                    const SizedBox(height: 8.0),
                    TextButton(
                      onPressed: () => _selectDate(context),
                      child: const Center(child: Text("Modifier la date")),
                    ),
                    const SizedBox(height: 8.0),
                    TextButton(
                      onPressed: () async {
                        Navigator.pop(context);
                      },
                      child: const Center(child: Text('Annuler')),
                    ),
                  ],
                ),
              ),
            ],
          )
        );
      },
    );
  }


}


