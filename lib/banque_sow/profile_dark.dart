import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class profile_dark extends StatefulWidget {
  const profile_dark({super.key});

  @override
  State<profile_dark> createState() => _profile_darkState();
}

class _profile_darkState extends State<profile_dark> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Container(
        decoration: BoxDecoration(
          image: const DecorationImage(image:AssetImage("images/filter_banque_black.png"),fit: BoxFit.cover) ,
        ),
        child: ListView(
          children: [
             Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.all(10),
              child: IconButton(onPressed: ()=>Navigator.pop(context), icon: Icon(Icons.arrow_back,color: Colors.white,)),
            ),
            Center(
              child: Container(
                margin: EdgeInsets.all(20),
                child:   Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(color: Colors.white,width: 2)
                    ),
                    child: GestureDetector(
                      onTap: (){},
                      child: Image.asset("images/person-square 1.png",),
                    ),
                  ),
              ),
            ),
            Center(
            child: Container(
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(
                border: Border(bottom: BorderSide(width: 2,color: Colors.white))
              ),
              child: TextButton(
                onPressed: (){},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.person,color: Colors.white,),
                    SizedBox(width: 15,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Nom",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),),
                        SizedBox(height: 5,),
                        Text("André  jacque",style: TextStyle(color: Colors.white),)
                      ],
                    ),
                      ],
                    ),
                  IconButton(onPressed: ()=>showAdaptiveDialog(
                    builder: (context) => Dialog(
                      child: Container(
                        width: 200,
                        height: 200,
                        child: Center(
                          child: Column(
                            children: [
                              Text("Nom"),
                              SizedBox(height: 10,),
                              Container(
                                decoration: BoxDecoration(
                                  // border: Border.all(width: 1,color: Colors.black)
                                  borderRadius: BorderRadius.circular(30)
                                ),
                                width: 100,
                                child: TextField(
                                  style: TextStyle(color: Colors.black),
                                ),
                              ),
                              SizedBox(height: 30,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  ElevatedButton(onPressed: ()=>Navigator.pop(context), child: Text("retour")),
                                  ElevatedButton(onPressed: (){}, child: Text("valide")),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      backgroundColor: Colors.white,),
                      context: context
                      ), icon:Icon(CupertinoIcons.pen))
                   ],
                ),
              ),
            ),
           ),
           Center(
            child: Container(
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(
                border: Border(bottom: BorderSide(width: 2,color: Colors.white))
              ),
              child: TextButton(
                onPressed: (){},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.mail_outline,color: Colors.white,),
                    SizedBox(width: 15,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("adresse email",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),),
                        SizedBox(height: 5,),
                        Text("as149045@gmail.com",style: TextStyle(color: Colors.white),)
                      ],
                    ),
                      ],
                    ),
                    IconButton(onPressed: ()=>showAdaptiveDialog(builder: (context) => Dialog(  child: Container(
                        width: 200,
                        height: 200,
                        child: Center(
                          child: Container(
                            margin: EdgeInsets.only(top: 10),
                            child: Container(
                            margin: EdgeInsets.only(top: 20),
                              child: Column(
                                children: [
                                  Text("mail"),
                                  SizedBox(height: 10,),
                                  Container(
                                    decoration: BoxDecoration(
                                      // border: Border.all(width: 1,color: Colors.black)
                                      borderRadius: BorderRadius.circular(30)
                                    ),
                                    width: 100,
                                    child: TextField(
                                      style: TextStyle(color: Colors.black),
                                    ),
                                  ),
                                  SizedBox(height: 30,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      ElevatedButton(onPressed: ()=>Navigator.pop(context), child: Text("retour")),
                                      ElevatedButton(onPressed: (){}, child: Text("valide")),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      backgroundColor: Colors.white,),
                context: context), icon:Icon(CupertinoIcons.pen))
                 ],
                ),
              ),
            ),
           ),
           Center(
            child: Container(
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(
                border: Border(bottom: BorderSide(width: 2,color: Colors.white))
              ),
              child: TextButton(
                onPressed: (){},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.lock_outline_sharp,color: Colors.white,),
                    SizedBox(width: 15,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Mot de passe",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                        SizedBox(height: 5,),
                        Text("***********",style: TextStyle(color: Colors.white),)
                      ],
                    ),
                      ],
                    ),
                    IconButton(onPressed: ()=>showAdaptiveDialog(builder: (context) => Dialog(  child: Container(
                        width: 200,
                        height: 200,
                        child: Center(
                          child: Container(
                            margin: EdgeInsets.only(top: 20),
                            child: Column(
                              children: [
                                Text("Mot de passe"),
                                SizedBox(height: 10,),
                                Container(
                                  decoration: BoxDecoration(
                                    // border: Border.all(width: 1,color: Colors.black)
                                    borderRadius: BorderRadius.circular(30)
                                  ),
                                  width: 100,
                                  child: TextField(
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ),
                                SizedBox(height: 30,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    ElevatedButton(onPressed: ()=>Navigator.pop(context), child: Text("retour")),
                                    ElevatedButton(onPressed: (){}, child: Text("valide")),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      backgroundColor: Colors.white,),
                     context: context), icon:Icon(CupertinoIcons.pen))
                  ],
                ),
              ),
            ),
           ),
          ],
        ),
      ),
    );
  }
}