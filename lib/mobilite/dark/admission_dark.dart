import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:studentbankmobile/mobilite/dark/demande_visa_dark.dart';
import 'package:studentbankmobile/mobilite/light/demande_visa.dart';

class admision_dark extends StatefulWidget {
  const admision_dark({super.key});

  @override
  State<admision_dark> createState() => _admision_darkState();
}

class _admision_darkState extends State<admision_dark> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
         decoration: BoxDecoration(
          color: Colors.grey.shade900,
          image: DecorationImage(image: AssetImage('images/Logo N.png'),fit: BoxFit.contain)
        ),
        child: ListView(
          children: [
            Container(
            margin: EdgeInsets.all(20),
            
            decoration:BoxDecoration(borderRadius: BorderRadius.circular(20),
            image: DecorationImage(image:  AssetImage("images/mobilite.jpeg"),fit: BoxFit.cover,scale: 4)),
            // child: Image.asset("images/mobilite.jpeg",fit: BoxFit.contain,),
            height: 250,
            width: double.infinity,
            child:
                Align(
                  alignment: Alignment.center,
                  child: Text("Mes Admissions",style: TextStyle(color:Colors.blue.shade100, fontWeight: FontWeight.bold,fontSize: 20),),
                ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.blue.shade100,
            borderRadius: BorderRadius.circular(30)
            ),
            margin: EdgeInsets.all(20),
            height: 50,
            width: 250,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset("images/🦆 icon _building one_.png"),
                Text("Université de Lyon"),
                Icon(CupertinoIcons.hand_thumbsup)
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.blue.shade100,
            borderRadius: BorderRadius.circular(30)
            ),
            margin: EdgeInsets.all(20),
            height: 50,
            width: 250,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset("images/🦆 icon _building one_.png"),
                Text("Université de Lyon"),
                Icon(CupertinoIcons.hand_thumbsup)
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.blue.shade100,
            borderRadius: BorderRadius.circular(30)
            ),
            margin: EdgeInsets.all(20),
            height: 50,
            width: 250,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset("images/🦆 icon _building one_.png"),
                Text("Université de Lyon"),
                Icon(CupertinoIcons.hand_thumbsup)
              ],
            ),
          ),
          SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: 150,
                // decoration: BoxDecoration(gradient: LinearGradient(colors: [Colors.white,Colors.pink])),
             decoration: BoxDecoration(
              color: Colors.pink,
              borderRadius: BorderRadius.circular(30)
              ),
            child: TextButton(onPressed: (){
                  
                },child: Text("contactez-nous",style: TextStyle(color: Colors.white),),),
              ),
               Container(
                decoration: BoxDecoration(
                  color: Colors.pink,
                borderRadius: BorderRadius.circular(30)
                ),
                width: 150,
                // decoration: BoxDecoration(gradient: LinearGradient(colors: [Colors.white,Colors.pink])),
                child: TextButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>demande_visa_dark()));
                },child: Text("Demande de Visa",style: TextStyle(color: Colors.white),),),
              )
            ],
          )
          ]
        ),
      ),
          );
  }
}