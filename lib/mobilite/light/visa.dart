import 'package:flutter/material.dart';

import 'document.dart';

class Visa extends StatefulWidget {
  const Visa({super.key});

  @override
  State<Visa> createState() => _VisaState();
}

enum radioSex{Monsieur,Madame}
class _VisaState extends State<Visa> {
  final TextEditingController _nom=TextEditingController();
  final TextEditingController _prenom=TextEditingController();
  final TextEditingController _dateLieu=TextEditingController();
  final TextEditingController _adresse=TextEditingController();
  final TextEditingController _num=TextEditingController();
  radioSex sexe=radioSex.Monsieur;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Container(
         decoration: const BoxDecoration(
          color: Colors.pink,
          image: DecorationImage(image: AssetImage('images/LogoN_Mobilite.png'),fit: BoxFit.fill)
        ),
        child: ListView(
          children: [
            Container(
              margin: const EdgeInsets.all(20),
              
              decoration:BoxDecoration(borderRadius: BorderRadius.circular(20),
              image: const DecorationImage(image:  AssetImage("images/mobilite_3.jpg"),fit: BoxFit.fill,scale: 4)),
              // child: Image.asset("images/mobilite.jpeg",fit: BoxFit.contain,),
              height: 150,
              width: double.infinity,
              child:
                  Align(
                    alignment: Alignment.center,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          margin: const EdgeInsets.all(20),
                          child: LinearProgressIndicator(
                          color: Colors.pink.shade100,
                          backgroundColor: Colors.blueGrey,
                          value: 1/5,
                          borderRadius: BorderRadius.circular(30),
                          minHeight: 10,
                          ),
                        ),
                        const SizedBox(height: 30,),
                        Text("Demande de Visa",style: TextStyle(color:Colors.pink.shade100, fontWeight: FontWeight.bold,fontSize: 20),)
                      ],
                    ),
                  )
               
            ),
            const Center(child: Text("Informations Personnelles",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),),
            Container(
              margin:const EdgeInsets.only(left: 20),
              child: const Align(
                  alignment: Alignment.topLeft,
                  child: Text("Civilite",style: TextStyle(fontWeight: FontWeight.bold),),
                 ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const SizedBox(height: 10,),
                  Radio<radioSex>(
                    activeColor: Colors.pink.shade100,
                    value: radioSex.Monsieur, groupValue: sexe, onChanged: (radioSex? value){
                    setState(() {
                      sexe=value!;
                    });
                  }),
                  const Text("Monsieur"),
                  Radio<radioSex>(
                    activeColor: Colors.pink.shade100,value: radioSex.Madame, groupValue: sexe, onChanged: (radioSex? value){
                    setState(() {
                      sexe=value!;
                    });
                  }),
                  const Text("Madame"),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left:20),
              child: Column(
                children: [
                  const Align(
                  alignment: Alignment.topLeft,
                  child: Text("Nom",style: TextStyle(fontWeight: FontWeight.bold),),
                 ),
                 SizedBox(
                    child: Container(
                      margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.pink.shade100,),
                      child: TextField(
                        controller: _nom,
                      ),
                    ),
                 ),
                  const Align(
                  alignment: Alignment.topLeft,
                  child: Text("Prenom",style: TextStyle(fontWeight: FontWeight.bold),),
                 ),
                  SizedBox(
                    child: Container(
                      margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.pink.shade100,),
                      child: TextField(
                        controller: _prenom,
                      ),
                    ),
                 ),
                  const Align(
                  alignment: Alignment.topLeft,
                  child: Text("Date et lieu de naissance",style: TextStyle(fontWeight: FontWeight.bold),),
                 ),
                  SizedBox(
                    child: Container(
                      margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.pink.shade100,),
                      child: TextField(
                        controller: _dateLieu,
                      ),
                    ),
                 ),
                  const Align(
                  alignment: Alignment.topLeft,
                  child: Text("Adresse mail",style: TextStyle(fontWeight: FontWeight.bold),),
                 ),
                  SizedBox(
                    child: Container(
                      margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.pink.shade100,),
                      child: TextField(
                        controller: _adresse,
                      ),
                    ),
                 ),
                  const Align(
                  alignment: Alignment.topLeft,
                  child: Text("Numero de telephone",style: TextStyle(fontWeight: FontWeight.bold),),
                 ),
                  SizedBox(
                    child: Container(
                      margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.pink.shade100,),
                      child: TextField(
                        controller: _num,
                      ),
                    ),
                 ),
                 Container(
                  margin: const EdgeInsets.only(right: 10),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: ElevatedButton(onPressed: (){
      
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>const MesDocs()));
                    },style: ElevatedButton.styleFrom(backgroundColor: Colors.white), child: const Text("Continuer",style: TextStyle(color: Colors.pink),),),
                  ),
                 )
                ],
              ),
            )
          ],
        ),
      ),
    
    );
  }
}