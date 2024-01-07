import 'package:flutter/material.dart';
import 'package:studentbankmobile/mobilite/light/doc_admission_edit.dart';
class demande_admission extends StatefulWidget {
  const demande_admission({super.key});

  @override
  State<demande_admission> createState() => _demande_admissionState();
}

class _demande_admissionState extends State<demande_admission> {
   final TextEditingController _nom=TextEditingController();
  final TextEditingController _prenom=TextEditingController();
  final TextEditingController _email=TextEditingController();
  final TextEditingController _motsDePass=TextEditingController();
  final TextEditingController _num=TextEditingController();
  final TextEditingController _num2=TextEditingController();
  final TextEditingController _pays=TextEditingController();
  final TextEditingController _message=TextEditingController();
  String niveau="1er annee";
  String  filiere="Reseau et telecom";
  var  list_niveau=["1er annee","2em annee"];
  var  list_filiere=["Reseau et telecom","Genie Logiciel"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
         decoration:BoxDecoration(borderRadius: BorderRadius.circular(20),
          image: const DecorationImage(image:  AssetImage("images/mobilite.jpeg"),fit: BoxFit.cover,scale: 4)),
        child: ListView(
          children: [
             Container(
            margin: const EdgeInsets.all(30),
            
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
                        decoration: const BoxDecoration(
                          boxShadow: [
                            BoxShadow(color: Colors.white),
                            BoxShadow(color: Colors.white),
                            BoxShadow(color: Colors.white),
                            BoxShadow(color: Colors.white),
                          ]
                        ),
                        child: LinearProgressIndicator(
                        color: Colors.pink.shade100,
                        backgroundColor: Colors.blueGrey,
                        value: 2/3,
                        borderRadius: BorderRadius.circular(30),
                        minHeight: 10,
                        ),
                      ),
                      const SizedBox(height: 30,),
                      const Text("Demande d'admission",style: TextStyle(color:Colors.white, fontWeight: FontWeight.bold,fontSize: 20),)
                    ,
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                                children: [
                                  Image(image: AssetImage("images/Spain.png")),
                                  // SizedBox(height:3),
                                  Text("Espagne",style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.bold)  ),
                              ]
                          ),
                          Column(
                            children: [
                               
                      Image(image:AssetImage("images/🦆 icon _building one_.png")),
                              // SizedBox(height:3),
                      Text("Université de Barcelone",style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.bold,),)
                        
                            ],
                          )
                        ],
                        
                      ),
                     ],
                  ),
                ),   
            ),
             Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 170,
                          height:30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.pink,),
                          child: Center(
                            child: TextField(
                              controller: _nom,
                              decoration: const InputDecoration(
                                label: Text("Nom*",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)
                                ),
                            ),
                          ),
                        ),
                         Container(
                      width: 170,
                      height:30,
                      margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.pink,),
                      child: Center(
                        child: TextField(
                          controller: _prenom,
                          decoration: const InputDecoration(label: Text("Prénom*",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold)),)
                        ),
                      ),
                    ),
                    
                      ],
                    ),
                     Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 170,
                          height:30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.pink,),
                          child: TextField(
                            controller: _num,
                            decoration: const InputDecoration(
                              label: Text("Telephone*",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold)),
                              ),
                          ),
                        ),
                         Container(
                      width: 170,
                      height:30,
                      margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.pink,),
                      child: TextField(
                        controller: _num2,
                        decoration: const InputDecoration(label: Text("Telephone",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)
                      ),
                      ))
                    
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 170,
                          height:30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.pink,),
                          child:  DropdownButton(
                            items:list_niveau.map((String items){
                              return DropdownMenuItem(value: items,child: Text(items),);
                            }).toList(),
                           value: niveau,
                           onChanged: (String? value) {
                                  setState(() {
                                    niveau= value!;
                                  });
                           },
                           icon:const Icon(Icons.arrow_drop_down),
                           iconSize: 20,
                           iconEnabledColor: Colors.red,
                           isExpanded: true,
                           style: const TextStyle(color: Colors.red,),
                           ),
                        ),
                         Container(
                      width: 170,
                      height:30,
                      margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.pink,),
                      child: Center(
                        child: DropdownButton(
                              items:list_filiere.map((String items){
                                return DropdownMenuItem(value: items,child: Text(items),);
                              }).toList(),
                             value: filiere,
                             onChanged: (String? value) {
                                    setState(() {
                                      filiere= value!;
                                    }
                                  );
                                },
                              ),
                      ),
                          ),
                        ],
                    ),
              //  SizedBox(height: 10,),
              Container(
                margin: const EdgeInsets.only(top:10,right: 20,left: 20),
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.pink
                ),
                child: TextField( 
                  controller: _email,
                  decoration: const InputDecoration(
                    labelText: "email"
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top:10,right: 20,left: 20),
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.pink
                ),
                child: Center(
                  child: TextField( 
                    controller: _motsDePass,
                    decoration: const InputDecoration(
                      labelText: "mots de passe"
                    ),
                  ),
                ),
              ),
              const Align(
                alignment: Alignment.topLeft,
                child: Text("Message",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
              ),
                // SizedBox(height: 10,),
              Container(
                margin: const EdgeInsets.all(30),
                height: 200,
                width: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.pink
                ),
                child: TextField( 
                  cursorColor: Colors.black,
                  controller: _message,
                ),
              ),
               const SizedBox(width: 30,),
               Align(
                alignment: Alignment.bottomRight,
                child:  Container(
              margin: const EdgeInsets.only(top:20,right: 50,bottom: 5,left: 50),
              decoration: BoxDecoration(
                color: Colors.red.shade400,
                borderRadius: BorderRadius.circular(30),
                ),
              child: TextButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const doc_admission_edit()));
                  // Navigator.push(context, MaterialPageRoute(builder: (context)=>traitement()));
              }, child: const Text(" continuer ",style: TextStyle(color: Colors.white),)),
              )
        )],
        ),
      ),
        );
  }
}