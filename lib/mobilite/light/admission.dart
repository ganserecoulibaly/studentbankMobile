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
         decoration: BoxDecoration(
          color: Colors.white70,
          image: DecorationImage(image: AssetImage('images/LogoN_Mobilite.png'),fit: BoxFit.fill)
        ),
        child: ListView(
          children: [
            Container(
            margin: EdgeInsets.all(20),
            
            decoration:BoxDecoration(borderRadius: BorderRadius.circular(20),
            image: DecorationImage(image:  AssetImage("images/mobilite_2.jpeg"),fit: BoxFit.fill,scale: 4)),
            // child: Image.asset("images/mobilite.jpeg",fit: BoxFit.contain,),
            height: 250,
            width: double.infinity,
            child:
                Align(
                  alignment: Alignment.center,
                  child: Text("Mes Admission",style: TextStyle(color:Colors.blue.shade100, fontWeight: FontWeight.bold,fontSize: 20),),
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
              color: Colors.blue.shade200,
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
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>demande_visa()));
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