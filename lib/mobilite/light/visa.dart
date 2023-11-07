import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Visa extends StatefulWidget {
  const Visa({super.key});

  @override
  State<Visa> createState() => _VisaState();
}

enum radioSex{Monsieur,Madame}
class _VisaState extends State<Visa> {
  TextEditingController _nom=TextEditingController();
  TextEditingController _prenom=TextEditingController();
  TextEditingController _dateLieu=TextEditingController();
  TextEditingController _adresse=TextEditingController();
  TextEditingController _num=TextEditingController();
  radioSex sexe=radioSex.Monsieur;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.all(20),
            
            decoration:BoxDecoration(borderRadius: BorderRadius.circular(20),
            image: DecorationImage(image:  AssetImage("images/mobilite.jpeg"),fit: BoxFit.cover,scale: 4)),
            // child: Image.asset("images/mobilite.jpeg",fit: BoxFit.contain,),
            height: 150,
            width: double.infinity,
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
                Radio<radioSex>(value: radioSex.Monsieur, groupValue: sexe, onChanged: (radioSex? value){
                  setState(() {
                    sexe=value!;
                  });
                }),
                Text("Monsieur"),
                Radio<radioSex>(value: radioSex.Madame, groupValue: sexe, onChanged: (radioSex? value){
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
                      color: Colors.blue.shade100,),
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
                      color: Colors.blue.shade100,),
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
                      color: Colors.blue.shade100,),
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
                      color: Colors.blue.shade100,),
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
                      color: Colors.blue.shade100,),
                    child: TextField(
                      controller: _num,
                    ),
                  ),
               ),
               Container(
                margin: EdgeInsets.only(right: 10),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: ElevatedButton(onPressed: (){}, child: Text("Continuer",style: TextStyle(color: Colors.blue.shade200),),style: ElevatedButton.styleFrom(backgroundColor: Colors.white),),
                ),
               )
              ],
            ),
          )
        ],
      ),
       bottomNavigationBar:  Container(
                  // color: Colors.orange,
                  height: 70,
                  // margin: EdgeInsets.only(top: 0),
                  decoration: BoxDecoration(
                    color: Colors.blue.shade200,
                    // borderRadius: BorderRadius.only(topLeft: Radius.circular(45),topRight: Radius.circular(45))
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
                        IconButton(onPressed: (){}, icon:Image.asset("images/Acceuil_icone.png",),iconSize: 50,),
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