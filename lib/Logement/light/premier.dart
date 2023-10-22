import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
// import 'package:studentbankmobile/Logement/Accueil_loyer.dart';
import 'package:studentbankmobile/widgets/change_Theme_button.dart';

import 'Accueil_loyer.dart';

class premier extends StatefulWidget {
  const premier({super.key});

  @override
  State<premier> createState() => _premierState();
}

class _premierState extends State<premier> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   actions: [
      //     ChangeThemeButtonWidget()
      //   ],
      // ),
      body:GestureDetector(
        onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>AccueilLoyer()));
            },
        child: 
            Container(
              height: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('images/maisonpiscine2.jpg'),fit: BoxFit.cover)
              ),
           
            child:
             Center(
              child: Stack(
                
                children: [
                Align(
                    alignment: Alignment.center,
                    child:  Image.asset('images/StudentBank - Logotype - Version quadrichrome dégradé-01 2.png')
             
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Text("logement",style: TextStyle(color: Colors.black,fontSize: 23,fontWeight: FontWeight.bold),),
                  )
                ],
              )
             ),
            ),
            ),
          
    );
  }
}
