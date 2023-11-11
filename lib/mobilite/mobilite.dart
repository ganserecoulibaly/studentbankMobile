import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:studentbankmobile/mobilite/dark/Accueil_mobilite_dark.dart';
import 'package:studentbankmobile/mobilite/light/Accueil_mobilite.dart';
// import 'package:studentbankmobile/Logement/Dark/Accueil_loyer_Dark.dart';
// import 'package:studentbankmobile/Logement/Accueil_loyer.dart';
import 'package:studentbankmobile/widgets/change_Theme_button.dart';

import '../widgets/change_Mode.dart';
// import 'light/Accueil_loyer.dart';

class mobilite extends StatefulWidget {
  const mobilite({super.key});
  @override

  State<mobilite> createState() => _deuxiemeState();
}

class _deuxiemeState extends State<mobilite> {
  bool press=false;
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
              // changeMode();
               Navigator.push(context, MaterialPageRoute(builder: (context)=>Accueil_mobilite()));
            },
        child: 
            Container(
              height: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('images/mobilite.jpeg'),fit: BoxFit.cover)
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
                    child: Text("Mobilite",style: TextStyle(color: Colors.black,fontSize: 23,fontWeight: FontWeight.bold),),
                  ),
                  //switch.adaptative permet de changer demode
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Switch.adaptive(
                        activeColor: Colors.green,
                        inactiveThumbColor: Colors.red,
                        value: press, onChanged: (value){  
                          setState(() {
                            press=!press;
                            if(press==false){
                                 Navigator.push(context, MaterialPageRoute(builder: (context)=>Accueil_mobilite_dark()));
                          
                           }
                            else{
                                   Navigator.push(context, MaterialPageRoute(builder: (context)=>Accueil_mobilite()));
                            
                           }
                        
                          });
                       
                        
                      }),
                  )
                ],
              )
             ),
            ),
            ),
          
    );
  }
}
