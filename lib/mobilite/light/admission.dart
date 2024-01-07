import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:studentbankmobile/mobilite/light/demande_visa.dart';

class admision extends StatefulWidget {
  const admision({super.key});

  @override
  State<admision> createState() => _admisionState();
}

class _admisionState extends State<admision> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            height: 250,
            width: double.infinity,
            child:
                Align(
                  alignment: Alignment.center,
                  child: Text("Mes Admission",style: TextStyle(color:Colors.pink.shade100, fontWeight: FontWeight.bold,fontSize: 20),),
                ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.pink.shade100,
            borderRadius: BorderRadius.circular(30)
            ),
            margin: const EdgeInsets.all(20),
            height: 50,
            width: 250,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset("images/🦆 icon _building one_.png"),
                const Text("Université de Lyon"),
                const Icon(CupertinoIcons.hand_thumbsup)
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.pink.shade200,
            borderRadius: BorderRadius.circular(30)
            ),
            margin: const EdgeInsets.all(20),
            height: 50,
            width: 250,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset("images/🦆 icon _building one_.png"),
                const Text("Université de Lyon"),
                const Icon(CupertinoIcons.hand_thumbsup)
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.pink.shade200,
            borderRadius: BorderRadius.circular(30)
            ),
            margin: const EdgeInsets.all(20),
            height: 50,
            width: 250,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset("images/🦆 icon _building one_.png"),
                const Text("Université de Lyon"),
                const Icon(CupertinoIcons.hand_thumbsup)
              ],
            ),
          ),
          const SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: 150,
                // decoration: BoxDecoration(gradient: LinearGradient(colors: [Colors.white,Colors.pink])),
             decoration: BoxDecoration(
              color: Colors.pink.shade300,
              borderRadius: BorderRadius.circular(30)
              ),
            child: TextButton(onPressed: (){
                  
                },child: const Text("contactez-nous",style: TextStyle(color: Colors.white),),),
              ),
               Container(
                decoration: BoxDecoration(
                  color: Colors.pink.shade300,
                borderRadius: BorderRadius.circular(30)
                ),
                width: 150,
                // decoration: BoxDecoration(gradient: LinearGradient(colors: [Colors.white,Colors.pink])),
                child: TextButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const demande_visa()));
                },child: const Text("Demande de Visa",style: TextStyle(color: Colors.white),),),
              )
            ],
          )
          ]
        ),
      ),
    
    );
  }
}