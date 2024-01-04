import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'document_dark.dart';

class Visa_dark extends StatefulWidget {
  const Visa_dark({super.key});

  @override
  State<Visa_dark> createState() => _Visa_darkState();
}

enum radioSex{Monsieur,Madame}
class _Visa_darkState extends State<Visa_dark> {
  TextEditingController _nom=TextEditingController();
  TextEditingController _prenom=TextEditingController();
  TextEditingController _dateLieu=TextEditingController();
  TextEditingController _adresse=TextEditingController();
  TextEditingController _num=TextEditingController();
  radioSex sexe=radioSex.Monsieur;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Container(
        
        decoration: BoxDecoration(color: Colors.grey.shade900),
        child: Container(
            decoration: BoxDecoration(
          color: Colors.grey.shade900,   
          image: DecorationImage(image: AssetImage("images/Logo N.png"),fit: BoxFit.fill)
        ),
          child: ListView(
            children: [
              Container(
                margin: EdgeInsets.all(20),
                
                decoration:BoxDecoration(borderRadius: BorderRadius.circular(20),
                image: DecorationImage(image:  AssetImage("images/mobilite_3.jpg"),fit: BoxFit.fill,scale: 4)),
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
                            margin: EdgeInsets.all(20),
                            child: LinearProgressIndicator(
                            color: Colors.pink.shade100,
                            backgroundColor: Colors.blueGrey,
                            value: 1/5,
                            borderRadius: BorderRadius.circular(30),
                            minHeight: 10,
                            ),
                          ),
                          SizedBox(height: 30,),
                          Text("Demande de Visa",style: TextStyle(color:Colors.pink.shade100, fontWeight: FontWeight.bold,fontSize: 20),)
                        ],
                      ),
                    )
                 
              ),
              Center(child: Text("Informations Personnelles",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),),
              Container(
                margin:EdgeInsets.only(left: 20),
                child: Align(
                    alignment: Alignment.topLeft,
                    child: Text("Civilite",style: TextStyle(fontWeight: FontWeight.bold),),
                   ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(height: 10,),
                    Radio<radioSex>(
                      activeColor: Colors.pink.shade100,
                      value: radioSex.Monsieur, groupValue: sexe, onChanged: (radioSex? value){
                      setState(() {
                        sexe=value!;
                      });
                    }),
                    Text("Monsieur"),
                    Radio<radioSex>(
                      activeColor: Colors.pink.shade100,value: radioSex.Madame, groupValue: sexe, onChanged: (radioSex? value){
                      setState(() {
                        sexe=value!;
                      });
                    }),
                    Text("Madame"),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left:20),
                child: Column(
                  children: [
                    Align(
                    alignment: Alignment.topLeft,
                    child: Text("Nom",style: TextStyle(fontWeight: FontWeight.bold),),
                   ),
                   SizedBox(
                      child: Container(
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.pink.shade100,),
                        child: TextField(
                          controller: _nom,
                        ),
                      ),
                   ),
                    Align(
                    alignment: Alignment.topLeft,
                    child: Text("Prenom",style: TextStyle(fontWeight: FontWeight.bold),),
                   ),
                    SizedBox(
                      child: Container(
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.pink.shade100,),
                        child: TextField(
                          controller: _prenom,
                        ),
                      ),
                   ),
                    Align(
                    alignment: Alignment.topLeft,
                    child: Text("Date et lieu de naissance",style: TextStyle(fontWeight: FontWeight.bold),),
                   ),
                    SizedBox(
                      child: Container(
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.pink.shade100,),
                        child: TextField(
                          controller: _dateLieu,
                        ),
                      ),
                   ),
                    Align(
                    alignment: Alignment.topLeft,
                    child: Text("Adresse mail",style: TextStyle(fontWeight: FontWeight.bold),),
                   ),
                    SizedBox(
                      child: Container(
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.pink.shade100,),
                        child: TextField(
                          controller: _adresse,
                        ),
                      ),
                   ),
                    Align(
                    alignment: Alignment.topLeft,
                    child: Text("Numero de telephone",style: TextStyle(fontWeight: FontWeight.bold),),
                   ),
                    SizedBox(
                      child: Container(
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.pink.shade100,),
                        child: TextField(
                          controller: _num,
                        ),
                      ),
                   ),
                   Container(
                    margin: EdgeInsets.only(right: 10),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: ElevatedButton(onPressed: (){
              
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>MesDocs_dark()));
                      }, child: Text("Continuer",style: TextStyle(color: Colors.pink.shade200),),style: ElevatedButton.styleFrom(backgroundColor: Colors.white),),
                    ),
                   )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    bottomNavigationBar:  Container(
                  // color: Colors.orange,
                  height: 70,
                  // margin: EdgeInsets.only(top: 0),
                  decoration: BoxDecoration(
                        color: Colors.grey.shade900,
                        image: DecorationImage(image: AssetImage('images/Logo N.png'),fit: BoxFit.contain),
                        boxShadow: [
                          BoxShadow(color: Colors.white),
                          BoxShadow(color: Colors.white),
                          BoxShadow(color: Colors.white),
                          BoxShadow(color: Colors.white),
                        ]
                  ),
                child: Center(
                  child: Container(
                  // margin: EdgeInsets.all(10),

                  padding: EdgeInsets.all(5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(width:15),
                        IconButton(onPressed: (){}, icon: Image.asset('images/setting.png'),iconSize: 40,),
                        SizedBox(width:15),
                        IconButton(onPressed: (){}, icon:Image.asset("images/euro_symbol.png"),iconSize: 40),
                        SizedBox(width:15),
                        IconButton(onPressed: (){}, icon:Image.asset("images/Acceuil_icone.png",),iconSize: 40,),
                        SizedBox(width:15),
                        IconButton(onPressed: (){}, icon:Image.asset('images/move_location.png'),iconSize: 40),
                        
                        SizedBox(width:15),
                        IconButton(onPressed: (){}, icon:Image.asset('images/night_shelter.png'),iconSize: 40)
                      ],
                    ),
                  ),
                ),
                )
              
    );
  }
}