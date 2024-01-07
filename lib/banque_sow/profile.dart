import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class profile extends StatefulWidget {
  const profile({super.key});

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Container(
        decoration: const BoxDecoration(
          image: DecorationImage(image:AssetImage("images/theme_blanc_rose_studentBanc.png"),fit: BoxFit.cover) ,
        ),
        child: ListView(
          children: [
             Container(
              alignment: Alignment.centerLeft,
              margin: const EdgeInsets.all(10),
              child: IconButton(onPressed: ()=>Navigator.pop(context), icon: const Icon(Icons.arrow_back,color: Colors.pink,)),
            ),
            Center(
              child: Container(
                margin: const EdgeInsets.all(20),
                child:   Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(color: Colors.black,width: 2)
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
              margin: const EdgeInsets.all(5),
              decoration: const BoxDecoration(
                border: Border(bottom: BorderSide(width: 2,color: Colors.black))
              ),
              child: TextButton(
                onPressed: (){},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Row(
                      children: [
                        Icon(Icons.person,color: Colors.black,),
                    SizedBox(width: 15,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Nom",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),),
                        SizedBox(height: 5,),
                        Text("André  jacque",style: TextStyle(color: Colors.black),)
                      ],
                    ),
                      ],
                    ),
                  IconButton(onPressed: ()=>showAdaptiveDialog(
                    builder: (context) => Dialog(
                      backgroundColor: Colors.white,
                      child: SizedBox(
                        width: 200,
                        height: 200,
                        child: Center(
                          child: Column(
                            children: [
                              const Text("Nom"),
                              const SizedBox(height: 10,),
                              Container(
                                decoration: BoxDecoration(
                                  // border: Border.all(width: 1,color: Colors.black)
                                  borderRadius: BorderRadius.circular(30)
                                ),
                                width: 100,
                                child: const TextField(
                                  style: TextStyle(color: Colors.black),
                                ),
                              ),
                              const SizedBox(height: 30,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  ElevatedButton(onPressed: ()=>Navigator.pop(context), child: const Text("retour")),
                                  ElevatedButton(onPressed: (){}, child: const Text("valide")),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),),
                      context: context
                      ), icon:const Icon(CupertinoIcons.pen))
                   ],
                ),
              ),
            ),
           ),
           Center(
            child: Container(
              margin: const EdgeInsets.all(5),
              decoration: const BoxDecoration(
                border: Border(bottom: BorderSide(width: 2,color: Colors.black))
              ),
              child: TextButton(
                onPressed: (){},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Row(
                      children: [
                        Icon(Icons.mail_outline,color: Colors.black,),
                    SizedBox(width: 15,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("adresse email",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),),
                        SizedBox(height: 5,),
                        Text("as149045@gmail.com",style: TextStyle(color: Colors.black),)
                      ],
                    ),
                      ],
                    ),
                    IconButton(onPressed: ()=>showAdaptiveDialog(builder: (context) => Dialog(  backgroundColor: Colors.white,  child: SizedBox(
                        width: 200,
                        height: 200,
                        child: Center(
                          child: Container(
                            margin: const EdgeInsets.only(top: 10),
                            child: Container(
                            margin: const EdgeInsets.only(top: 20),
                              child: Column(
                                children: [
                                  const Text("mail"),
                                  const SizedBox(height: 10,),
                                  Container(
                                    decoration: BoxDecoration(
                                      // border: Border.all(width: 1,color: Colors.black)
                                      borderRadius: BorderRadius.circular(30)
                                    ),
                                    width: 100,
                                    child: const TextField(
                                      style: TextStyle(color: Colors.black),
                                    ),
                                  ),
                                  const SizedBox(height: 30,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      ElevatedButton(onPressed: ()=>Navigator.pop(context), child: const Text("retour")),
                                      ElevatedButton(onPressed: (){}, child: const Text("valide")),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),),
                context: context), icon:const Icon(CupertinoIcons.pen))
                 ],
                ),
              ),
            ),
           ),
           Center(
            child: Container(
              margin: const EdgeInsets.all(5),
              decoration: const BoxDecoration(
                border: Border(bottom: BorderSide(width: 2,color: Colors.black))
              ),
              child: TextButton(
                onPressed: (){},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Row(
                      children: [
                        Icon(Icons.lock_outline_sharp,color: Colors.black,),
                    SizedBox(width: 15,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Mot de passe",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),),
                        SizedBox(height: 5,),
                        Text("***********",style: TextStyle(color: Colors.black),)
                      ],
                    ),
                      ],
                    ),
                    IconButton(onPressed: ()=>showAdaptiveDialog(builder: (context) => Dialog(  backgroundColor: Colors.white,  child: SizedBox(
                        width: 200,
                        height: 200,
                        child: Center(
                          child: Container(
                            margin: const EdgeInsets.only(top: 20),
                            child: Column(
                              children: [
                                const Text("Mot de passe"),
                                const SizedBox(height: 10,),
                                Container(
                                  decoration: BoxDecoration(
                                    // border: Border.all(width: 1,color: Colors.black)
                                    borderRadius: BorderRadius.circular(30)
                                  ),
                                  width: 100,
                                  child: const TextField(
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ),
                                const SizedBox(height: 30,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    ElevatedButton(onPressed: ()=>Navigator.pop(context), child: const Text("retour")),
                                    ElevatedButton(onPressed: (){}, child: const Text("valide")),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),),
                     context: context), icon:const Icon(CupertinoIcons.pen))
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