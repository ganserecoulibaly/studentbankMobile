import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import 'package:studentbankmobile/banque_sow/dark/option1.dart';

class Bank1 extends StatefulWidget {
  const Bank1({super.key});

  @override
  State<Bank1> createState() => _Bank1State();
}

enum radioSex { Monsieur, Madame }

class _Bank1State extends State<Bank1> {
  final TextEditingController _nom = TextEditingController();
  final TextEditingController _prenom = TextEditingController();
  final TextEditingController _date = TextEditingController();
  final TextEditingController _adresse = TextEditingController();
  final TextEditingController _num = TextEditingController();
  final TextEditingController _pays = TextEditingController();
  final TextEditingController _ville = TextEditingController();
  radioSex sexe = radioSex.Monsieur;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            // width: double.infinity,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("images/filter_banque_black.png"),
                    fit: BoxFit.cover)),
            child: ListView(children: [
              Padding(
                padding: const EdgeInsets.only(top: 20.0, left: 20),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: SizedBox(
                    child: IconButton(
                        onPressed: () => Navigator.pop(context),
                        icon: const Icon(
                          Icons.arrow_back_sharp,
                          color: Colors.white,
                        )),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: StepProgressIndicator(
                  size: 10,
                  totalSteps: 5,
                  currentStep: 1,
                  selectedColor: Colors.white,
                  unselectedColor: Colors.white54,
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(18.0),
                child: SizedBox(
                  width: 382,
                  height: 72,
                  child: Text(
                    'Vos informations personnelles',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 20),
                child: const Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Civilite",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Radio<radioSex>(
                        activeColor: Colors.white,
                        value: radioSex.Monsieur,
                        groupValue: sexe,
                        onChanged: (radioSex? value) {
                          setState(() {
                            sexe = value!;
                          });
                        }),
                    const Text(
                      "Monsieur",
                      style: TextStyle(color: Colors.white),
                    ),
                    Radio<radioSex>(
                        activeColor: Colors.white,
                        value: radioSex.Madame,
                        groupValue: sexe,
                        onChanged: (radioSex? value) {
                          setState(() {
                            sexe = value!;
                          });
                        }),
                    const Text("Madame", style: TextStyle(color: Colors.white)),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 20),
                child: Column(
                  children: [
                    const Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Nom",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                    ),
                    SizedBox(
                      child: Container(
                        margin: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(width: 1, color: Colors.white),
                        ),
                        child: TextField(
                          decoration: const InputDecoration(
                              labelText: "Votre Nom de Naissance",
                              labelStyle: TextStyle(color: Colors.white)),
                          controller: _nom,
                          style: const TextStyle(color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    const Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Prenom",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                    ),
                    SizedBox(
                      child: Container(
                        margin: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(width: 1, color: Colors.white),
                        ),
                        child: TextField(
                          decoration: const InputDecoration(
                              labelText: "Votre prenom",
                              labelStyle: TextStyle(color: Colors.white)),
                          controller: _prenom,
                          style: const TextStyle(color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    const Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Date de naissance",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                    ),
                    SizedBox(
                      child: Container(
                        margin: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(width: 1, color: Colors.white),
                        ),
                        child: TextField(
                          decoration: const InputDecoration(
                              labelText: "16/04/1999",
                              labelStyle: TextStyle(color: Colors.white)),
                          textAlign: TextAlign.center,
                          controller: _date,
                          style: const TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    const Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Adresse mail",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                    ),
                    SizedBox(
                      child: Container(
                        margin: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(width: 1, color: Colors.white),
                        ),
                        child: TextField(
                          decoration: const InputDecoration(
                              labelText: "example@mail.com",
                              labelStyle: TextStyle(color: Colors.white)),
                          controller: _adresse,
                          style: const TextStyle(color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    const Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Numero de telephone",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                    ),
                    SizedBox(
                      child: Container(
                        margin: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(width: 1, color: Colors.white),
                          color: Colors.transparent,
                        ),
                        child: TextField(
                          decoration: const InputDecoration(
                              labelText: "Ex 0612345678",
                              labelStyle: TextStyle(color: Colors.white)),
                          controller: _num,
                          style: const TextStyle(color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    const Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Pays",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                    ),
                    SizedBox(
                      child: Container(
                        margin: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(width: 1, color: Colors.white),
                          color: Colors.transparent,
                        ),
                        child: TextField(
                          decoration: const InputDecoration(
                              labelText: "Senegal",
                              labelStyle: TextStyle(color: Colors.white)),
                          controller: _pays,
                          style: const TextStyle(color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    const Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Ville",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                    ),
                    SizedBox(
                      child: Container(
                        margin: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(width: 1, color: Colors.white),
                          color: Colors.transparent,
                        ),
                        child: TextField(
                          decoration: const InputDecoration(
                              labelText: "Marseille",
                              labelStyle: TextStyle(color: Colors.white)),
                          controller: _pays,
                          style: const TextStyle(color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextButton(
                                onPressed: () {},
                                child: Container(
                                  width: 124,
                                  height: 30,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: ShapeDecoration(
                                    gradient: const LinearGradient(
                                      begin: Alignment(0.00, -1.00),
                                      end: Alignment(0, 1),
                                      colors: [
                                        Color(0xFFEC6119),
                                        Color(0xFFE5023F)
                                      ],
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    shadows: const [
                                      BoxShadow(
                                        color: Color(0x3F000000),
                                        blurRadius: 4,
                                        offset: Offset(0, 4),
                                        spreadRadius: 0,
                                      )
                                    ],
                                  ),
                                  child: const Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Numéro de voie',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15,
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.w300,
                                          height: 0,
                                        ),
                                      ),
                                    ],
                                  ),
                                )),
                            TextButton(
                                onPressed: () {},
                                child: Container(
                                  width: 124,
                                  height: 30,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: ShapeDecoration(
                                    gradient: const LinearGradient(
                                      begin: Alignment(0.00, -1.00),
                                      end: Alignment(0, 1),
                                      colors: [
                                        Color(0xFFEC6119),
                                        Color(0xFFE5023F)
                                      ],
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    shadows: const [
                                      BoxShadow(
                                        color: Color(0x3F000000),
                                        blurRadius: 4,
                                        offset: Offset(0, 4),
                                        spreadRadius: 0,
                                      )
                                    ],
                                  ),
                                  child: const Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Code Postal',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15,
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.w300,
                                          height: 0,
                                        ),
                                      ),
                                    ],
                                  ),
                                )),
                            TextButton(
                                onPressed: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const option1())),
                                child: Container(
                                  width: 124,
                                  height: 30,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: ShapeDecoration(
                                    color: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      side: const BorderSide(
                                        width: 2,
                                        strokeAlign:
                                            BorderSide.strokeAlignOutside,
                                        color: Color(0xFFED174C),
                                      ),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    shadows: const [
                                      BoxShadow(
                                        color: Color(0x3F000000),
                                        blurRadius: 4,
                                        offset: Offset(0, 4),
                                        spreadRadius: 0,
                                      )
                                    ],
                                  ),
                                  child: const Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Continuer',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.w300,
                                          height: 0,
                                        ),
                                      ),
                                    ],
                                  ),
                                ))
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ])));
  }
}
