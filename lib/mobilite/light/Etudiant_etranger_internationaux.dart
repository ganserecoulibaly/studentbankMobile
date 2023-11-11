import 'package:flutter/material.dart';


class etudiant_etranger_internationaux extends StatefulWidget {
  const etudiant_etranger_internationaux({super.key});

  @override
  State<etudiant_etranger_internationaux> createState() => _etudiant_etranger_internationauxState();
}

class _etudiant_etranger_internationauxState extends State<etudiant_etranger_internationaux> {
  String pays="France";
  String ville="Marseille";
  String universite="Universite 1";
  String format="Genie civil";
  List<Color> color=[
     Colors.white60,
    Colors.blue.shade100,
    Colors.black87,
  ];
  @override
  
  var list_Pays=["France","Etats-unis","Angleterre"];
  var list_ville=["Marseille","Paris","Berlin"];
  var list_universite=["Universite 1","Universite 2","Universite 3"];
  // var liste_formation=["Genie Civil","Medecine","informatique"];
  var maformation=["Genie civil","Medecine","Informatique"];
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration:BoxDecoration(borderRadius: BorderRadius.circular(20),
          image: DecorationImage(image:  AssetImage("images/mobilite.jpeg"),fit: BoxFit.cover,scale: 4)),    
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white12
            ),
            child: ListView(
              children: [
                SizedBox(height: 30,),
                Container(
                  margin: EdgeInsets.all(10),
                  child: Center(
                    child: 
                      Text("Etudiant etrangers et internationaux",style: TextStyle(color: Colors.pink,fontSize: 22,fontWeight: FontWeight.bold),)),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.circular(20)
                  ),
                  // width: double.infinity,
                  height: 100,
                  margin: EdgeInsets.only(left: 20,right: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                           Container(
                            width: 150,
                            height:30,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              gradient: LinearGradient(colors: [
                                Colors.white,
                                Colors.pink
                              ])
                             ),
                            child:  DropdownButton(
                              items:list_Pays.map((String items){
                                return DropdownMenuItem(child: Text(items,style: TextStyle(fontSize: 20),),value: items,);
                              }).toList(),
                             value: pays,
                             onChanged: (String? value) {
                                    setState(() {
                                      pays= value!;
                                    }
                                  );
                                },
                              ),
                          ),
                           Container(
                            width: 150,
                            height:30,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              gradient: LinearGradient(colors: [
                                Colors.white,
                                Colors.pink
                              ])
                             ),
                            child:  DropdownButton(
                              items:list_ville.map((String items){
                                return DropdownMenuItem(child: Text(items,style: TextStyle(fontSize: 20)),value: items,);
                              }).toList(),
                             value: ville,
                             onChanged: (String? value) {
                                    setState(() {
                                      ville= value!;
                                    });
                             },
                             ),
                          ),
                        ],
                      ),
                      SizedBox(height: 15,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                           Container(
                            width: 150,
                            height:30,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              gradient: LinearGradient(colors: [
                                Colors.white,
                                Colors.pink
                              ])
                             ),
                            child:  DropdownButton(
                              items:list_universite.map((String items){
                                return DropdownMenuItem(child: Text(items,style: TextStyle(fontSize: 20)),value: items,);
                              }).toList(),
                             value: universite,
                             onChanged: (String? value) {
                                    setState(() {
                                      universite= value!;
                                    });
                             },
                             ),
                          ),
                          Container(
                            width: 150,
                            height:30,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              gradient: LinearGradient(colors: [
                                Colors.white,
                                Colors.pink
                              ])
                             ),
                            child:  DropdownButton(
                              items:maformation.map((String items){
                                return DropdownMenuItem(child: Text(items,style: TextStyle(fontSize: 20)),value: items,);
                              }).toList(),
                             value: format,
                             onChanged: (String? value) {
                                    setState(() {
                                      format= value!;
                                    });
                             },
                             ),
                          ),
                        ],
                      )
                    ]
                    ),
                ),
              //   Container(
              //  ),
                Text("Voir aussi",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),),
               
                Container(
                  height: 500,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        for(int i=0;i<3;i++)
                        Container(
                          margin: EdgeInsets.all(10),
                           decoration: BoxDecoration(
                                      color: color[i],
                                      borderRadius: BorderRadius.circular(20)
                            ),
                            height: 350,
                            width: 220,
                          child: Column(
                            children: [
                              SizedBox(height: 10,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                    width: 70,
                                    decoration: BoxDecoration(
                                      color: Colors.pink,
                                      borderRadius: BorderRadius.circular(30)
                                    ),
                                    child: Center(child: Text("Info",style: TextStyle(color: Colors.white,fontSize: 20),)),
                                  ),
                                  Icon(Icons.favorite_outline,color: Colors.pink,)
                                ],
                              ),
                              Container(
                                margin: EdgeInsets.all(5),
                                child:color[i]==Colors.black87? Text(
                                    //  "Lorem ipsum dolor sit amet,\n consectetur adipiscing elit, \nsed do eiusmod tempor incididunt ut\n labore et dolore magna aliqua\n Ut enim ad minim veniam, quis \nnostrud exercitation ullamco \nlaboris nisi ut aliquip ex ea \ncommodo consequat. Duis aute irure \ndolor in reprehenderit in voluptate \nvelit esse cillum dolore eu fugiat\n nulla pariatur. Excepteur\nsint occaecat cupidatat non proident,\n sunt in culpa qui officia deserunt\n mollit anim id est laborum."
                                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
                                 ,style: TextStyle(color: Colors.white),
                                ):Text(  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
                                 ),
                              ),
                               Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                    children: [
                                      Image(image: AssetImage("images/Spain.png")),
                                      SizedBox(height:3),
                                      Text("Espagne",style: TextStyle(color: Colors.pink,fontSize: 14,fontWeight: FontWeight.bold)  ),
                                  ]
                              ),
                              Column(
                                children: [
                                          
                                  Image(image:AssetImage("images/🦆 icon _building one_.png")),
                                          SizedBox(height:3),
                                  Text("Universite de Barcelone",style: TextStyle(color: Colors.pink,fontSize: 14,fontWeight: FontWeight.bold,),)
                                    
                                ],
                              )
                            ],
                            
                          ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
      ),
      
    );
  }
}