import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:intl/intl.dart';
import 'package:studentbankmobile/mobilite/light/paiement.dart';
class demande_accueil extends StatefulWidget {
  const demande_accueil({super.key});

  @override
  State<demande_accueil> createState() => _demande_accueilState();
}

class _demande_accueilState extends State<demande_accueil> {
  final TextEditingController _nom=TextEditingController();
  final TextEditingController _prenom=TextEditingController();
  final TextEditingController _date=TextEditingController();
  final TextEditingController _adresse=TextEditingController();
  final TextEditingController _num=TextEditingController();
  final TextEditingController _pays_des=TextEditingController();
  final TextEditingController _vile_des=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Container(
         margin: const EdgeInsets.all(0),
        padding: const EdgeInsets.all(0),
        decoration: const BoxDecoration(
          color: Colors.pink,
          image: DecorationImage(image: AssetImage('images/LogoN_Mobilite.png'),fit: BoxFit.fill)
        ),
        // width: double.infinity,
        // height: double.infinity,
        child: ListView(
          children: [
            Container(
            margin: const EdgeInsets.all(30),
            
            decoration:BoxDecoration(borderRadius: BorderRadius.circular(20),
            image: const DecorationImage(image:  AssetImage("images/mobilite_3.jpg"),fit: BoxFit.cover,scale: 4)),
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
                        value: 1/3,
                        borderRadius: BorderRadius.circular(30),
                        minHeight: 10,
                        ),
                      ),
                      const SizedBox(height: 30,),
                      Text("Demande d'accueil",style: TextStyle(color:Colors.blue.shade100, fontWeight: FontWeight.bold,fontSize: 20),)
                    ],
                  ),
                ),
             
          ),
          Container(
             margin: const EdgeInsets.all(30),
            
            decoration:BoxDecoration(
                // backgroundBlendMode: BlendMode.darken,
                borderRadius: BorderRadius.circular(20),color: Colors.white,
                border: Border.all(color: Colors.grey.shade900)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 150,
                          height:30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey.shade900,),
                          child: TextField(
                            controller: _nom,
                            style: const TextStyle(color: Colors.white),
                            textAlign: TextAlign.center,
                            decoration: const InputDecoration(
                              labelText:"Nom*",
                              labelStyle: TextStyle(color: Colors.white,fontSize: 20),
                              hintStyle: TextStyle(color: Colors.white,fontSize: 20),
                              ),
                          ),
                        ),
                         Container(
                      width: 150,
                      height:30,
                      margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey.shade900,),
                      child: TextField(
                        controller: _prenom,
                            style: const TextStyle(color: Colors.white),
                            textAlign: TextAlign.center,
                        decoration: const InputDecoration(
                          labelText:"Prenom*",
                          labelStyle: TextStyle(color: Colors.white)
                              
                          ),
                      ),
                    ),
                    
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 150,
                          height:30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey.shade900,),
                          child: TextField(
                            controller: _adresse,
                            style: const TextStyle(color: Colors.white),
                            textAlign: TextAlign.center,
                            decoration: const InputDecoration(
                              labelText:"Adresse mail*",
                              labelStyle: TextStyle(color: Colors.white)),
                          ),
                        ),
                         Container(
                      width: 150,
                      height:30,
                      margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey.shade900,),
                      child: TextField(
                        controller: _num,
                            style: const TextStyle(color: Colors.white),
                            textAlign: TextAlign.center,
                        decoration: const InputDecoration(
                          labelText:"Tel*",
                          labelStyle: TextStyle(color: Colors.white)),
                      ),
                    ),
                    
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 150,
                          height:30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey.shade900,),
                          child: TextField(
                            controller: _pays_des,
                            style: const TextStyle(color: Colors.white),
                            textAlign: TextAlign.center,
                            decoration: const InputDecoration(
                              labelText:"Pays de Destination*",
                              labelStyle: TextStyle(color: Colors.white)),
                          ),
                        ),
                         Container(
                      width: 150,
                      height:30,
                      margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey.shade900,),
                      child: TextField(
                        controller: _vile_des,
                            style: const TextStyle(color: Colors.white),
                            textAlign: TextAlign.center,
                        decoration: const InputDecoration(
                          labelText: "Ville de destination*",
                          labelStyle: TextStyle(color: Colors.white)),
                      ),
                    ),
                    
                      ],
                    ),
                   
              ],
            ),
          ),
          Container(
            child: TextField(
                  controller: _date,//editing controller of this TextField
                  decoration: const InputDecoration( 
                     icon: Icon(Icons.calendar_today), //icon of text field
                     labelText: "Enter Date De Naissance", //label text of field
                  ),
                  readOnly: true,  //set it true, so that user will not able to edit text
                  onTap: () async {
                    DateTime? pickedDate = await showDatePicker(
                        context: context, initialDate: DateTime.now(),
                        firstDate: DateTime(2000), //DateTime.now() - not to allow to choose before today.
                        lastDate: DateTime(2101)
                    );
                    
                    if(pickedDate != null ){
                        print(pickedDate);  //pickedDate output format => 2021-03-10 00:00:00.000
                        String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate); 
                        print(formattedDate); //formatted date output using intl package =>  2021-03-16
                          //you can implement different kind of Date Format here according to your requirement
                        int formattedjour=DateTime.now().year-pickedDate.year;
                         setState(() {
                            _date.text = formattedDate; 
                           
                        //    _ageController.text=formattedjour.toString();//set output date to TextField value. 
                         });
                    }else{
                        print("Vous n'avez pas encore selectionne une date");
                    }
                  },),
          ),
          // Text(_date.text,style: TextStyle(color: Colors.blue.shade200),),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: TextButton(onPressed: ()=>FlutterPhoneDirectCaller.callNumber("338553682"), child: const Text("Appeler",style: TextStyle(color: Colors.black),)),
                ),
                const SizedBox(width: 30,),
                 Container(
                  child: TextButton(onPressed: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>const paiement()));
                  }, child: const Text("Continuer",style: TextStyle(color: Colors.black),)),
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