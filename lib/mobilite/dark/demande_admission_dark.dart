import 'package:flutter/material.dart';
import 'package:studentbankmobile/mobilite/light/doc_admission_edit.dart';
class demande_admission_dark extends StatefulWidget {
  const demande_admission_dark({super.key});

  @override
  State<demande_admission_dark> createState() => _demande_admission_darkState();
}

class _demande_admission_darkState extends State<demande_admission_dark> {
   TextEditingController _nom=TextEditingController();
  TextEditingController _prenom=TextEditingController();
  TextEditingController _email=TextEditingController();
  TextEditingController _motsDePass=TextEditingController();
  TextEditingController _num=TextEditingController();
  TextEditingController _num2=TextEditingController();
  TextEditingController _pays=TextEditingController();
  TextEditingController _message=TextEditingController();
  String niveau="1er annee";
  String  filiere="Reseau et telecom";
  var  list_niveau=["1er annee","2em annee"];
  var  list_filiere=["Reseau et telecom","Genie Logiciel"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
         decoration:BoxDecoration(borderRadius: BorderRadius.circular(20),
          image: DecorationImage(image:  AssetImage("images/mobilite.jpeg"),fit: BoxFit.cover,scale: 4)),
        child: ListView(
          children: [
             Container(
            margin: EdgeInsets.all(30),
            
            decoration:BoxDecoration(borderRadius: BorderRadius.circular(20),
            color: Colors.grey.shade900,
            image: DecorationImage(image:  AssetImage("images/mobilite.jpeg"),fit: BoxFit.cover,scale: 4)),
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
                        color: Colors.blue.shade100,
                        backgroundColor: Colors.blueGrey,
                        value: 2/3,
                        borderRadius: BorderRadius.circular(30),
                        minHeight: 10,
                        ),
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(color: Colors.white),
                            BoxShadow(color: Colors.white),
                            BoxShadow(color: Colors.white),
                            BoxShadow(color: Colors.white),
                          ]
                        ),
                      ),
                      SizedBox(height: 30,),
                      Text("Demande d'admission",style: TextStyle(color:Colors.white, fontWeight: FontWeight.bold,fontSize: 20),)
                    ,
                      Row(
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
                      Text("Universite de Barcelone",style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.bold,),)
                        
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
                            color: Colors.white70,),
                          child: Center(
                            child: TextField(
                              controller: _nom,
                              decoration: InputDecoration(
                                label: Text("Nom*",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)
                                ),
                            ),
                          ),
                        ),
                         Container(
                      width: 170,
                      height:30,
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white70,),
                      child: Center(
                        child: TextField(
                          controller: _prenom,
                          decoration: InputDecoration(label: Text("Prenom*",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold)),)
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
                            color: Colors.white70,),
                          child: TextField(
                            controller: _num,
                            decoration: InputDecoration(
                              label: Text("Telephone*",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold)),
                              ),
                          ),
                        ),
                         Container(
                      width: 170,
                      height:30,
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white70,),
                      child: TextField(
                        controller: _num2,
                        decoration: InputDecoration(label: Text("Telephone",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)
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
                            color: Colors.white70,),
                          child:  DropdownButton(
                            items:list_niveau.map((String items){
                              return DropdownMenuItem(child: Text(items),value: items,);
                            }).toList(),
                           value: niveau,
                           onChanged: (String? value) {
                                  setState(() {
                                    niveau= value!;
                                  });
                           },
                           icon:Icon(Icons.arrow_drop_down),
                           iconSize: 20,
                           iconEnabledColor: Colors.red,
                           isExpanded: true,
                           style: TextStyle(color: Colors.red,),
                           ),
                        ),
                         Container(
                      width: 170,
                      height:30,
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white70,),
                      child: Center(
                        child: DropdownButton(
                              items:list_filiere.map((String items){
                                return DropdownMenuItem(child: Text(items),value: items,);
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
                margin: EdgeInsets.only(top:10,right: 20,left: 20),
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.white70
                ),
                child: TextField( 
                  controller: _email,
                  decoration: InputDecoration(
                    labelText: "email"
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top:10,right: 20,left: 20),
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.white70
                ),
                child: Center(
                  child: TextField( 
                    controller: _motsDePass,
                    decoration: InputDecoration(
                      labelText: "mots de passe"
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text("Message",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
              ),
                // SizedBox(height: 10,),
              Container(
                margin: EdgeInsets.all(30),
                height: 200,
                width: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.white70
                ),
                child: TextField( 
                  cursorColor: Colors.black,
                  controller: _message,
                ),
              ),
               SizedBox(width: 30,),
               Align(
                alignment: Alignment.bottomRight,
                child:  Container(
              margin: EdgeInsets.only(top:20,right: 50,bottom: 5,left: 50),
              decoration: BoxDecoration(
                color: Colors.red.shade400,
                borderRadius: BorderRadius.circular(30),
                ),
              child: TextButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>doc_admission_edit()));
                  // Navigator.push(context, MaterialPageRoute(builder: (context)=>traitement()));
              }, child: Text(" continuer ",style: TextStyle(color: Colors.white),)),
              )
        )],
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