import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:studentbankmobile/mobilite/dark/paiement_dark.dart';
import 'package:studentbankmobile/mobilite/light/paiement.dart';

class demande_accueil_dark extends StatefulWidget {
  const demande_accueil_dark({super.key});

  @override
  State<demande_accueil_dark> createState() => _demande_accueil_darkState();
}

class _demande_accueil_darkState extends State<demande_accueil_dark> {
  TextEditingController _nom=TextEditingController();
  TextEditingController _prenom=TextEditingController();
  TextEditingController _date=TextEditingController();
  TextEditingController _adresse=TextEditingController();
  TextEditingController _num=TextEditingController();
  TextEditingController _pays_des=TextEditingController();
  TextEditingController _vile_des=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Container(
         margin: EdgeInsets.all(0),
        padding: EdgeInsets.all(0),
        decoration: BoxDecoration(
          color: Colors.grey.shade900,
          image: DecorationImage(image: AssetImage('images/Logo N.png'),fit: BoxFit.contain)
        ),
        // width: double.infinity,
        // height: double.infinity,
        child: ListView(
          children: [
            Container(
            margin: EdgeInsets.all(30),
            
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
                        value: 1/3,
                        borderRadius: BorderRadius.circular(30),
                        minHeight: 10,
                        ),
                      ),
                      SizedBox(height: 30,),
                      Text("Demande d'accueil",style: TextStyle(color:Colors.pink.shade100, fontWeight: FontWeight.bold,fontSize: 20),)
                    ],
                  ),
                ),
             
          ),
          Container(
             margin: EdgeInsets.all(30),
            
            decoration:BoxDecoration(
                // backgroundBlendMode: BlendMode.darken,
                borderRadius: BorderRadius.circular(20),color: Colors.white,
                border: Border.all(color: Colors.black)),
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
                            color: Colors.black,),
                          child: TextField(
                            controller: _nom,
                            decoration: InputDecoration(
                              label: Text("Nom*",style: TextStyle(color: Colors.white,fontSize: 10),),
                              ),
                          ),
                        ),
                         Container(
                      width: 150,
                      height:30,
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.black,),
                      child: TextField(
                        controller: _prenom,
                        decoration: InputDecoration(label: Text("Prenom*",style: TextStyle(color: Colors.white,fontSize: 10),)),
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
                            color: Colors.black,),
                          child: TextField(
                            controller: _adresse,
                            decoration: InputDecoration(label: Text("Adresse mail*",style: TextStyle(color: Colors.white,fontSize: 10),)),
                          ),
                        ),
                         Container(
                      width: 150,
                      height:30,
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.black,),
                      child: TextField(
                        controller: _num,
                        decoration: InputDecoration(label: Text("Tel*",style: TextStyle(color: Colors.white,fontSize: 10),)),
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
                            color: Colors.black,),
                          child: TextField(
                            controller: _nom,
                            decoration: InputDecoration(label: Text("Pays de Destination*",style: TextStyle(color: Colors.white,fontSize: 10),)),
                          ),
                        ),
                         Container(
                      width: 150,
                      height:30,
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.black,),
                      child: TextField(
                        controller: _nom,
                        decoration: InputDecoration(label: Text("Ville de destination*",style: TextStyle(color: Colors.white,fontSize: 10),)),
                      ),
                    ),
                    
                      ],
                    ),
                   
              ],
            ),
          ),
          Container(
            child: TextField(
                  controller: _date, //editing controller of this TextField
                  decoration: const InputDecoration( 
                     icon: Icon(Icons.calendar_today), //icon of text field
                     label: Text("Enter Date De Naissance",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),) //label text of field
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
                        // setState(() {
                        //    _dateNaissController.text = formattedDate; 
                           
                        //    _ageController.text=formattedjour.toString();//set output date to TextField value. 
                        // });
                    }else{
                        print("Vous n'avez pas encore selectionne une date");
                    }
                  },),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: TextButton(onPressed: (){}, child: Text("Appeler",style: TextStyle(color: Colors.white),)),
                ),
                SizedBox(width: 30,),
                 Container(
                  decoration: BoxDecoration(),
                  child: TextButton(onPressed: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>paiement_dark()));
                  }, child: Text("Continuer",style: TextStyle(color: Colors.white),)),
                )
              ],
            ),
          )
          ],
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