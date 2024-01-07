import 'package:flutter/material.dart';
// import 'package:studentbankmobile/Logement/Dark/Accueil_loyer_Dark.dart';
// import 'package:studentbankmobile/Logement/Accueil_loyer.dart';

import 'Dark/Accueil_loyer_Dark.dart';
import 'light/Accueil_loyer.dart';
// import 'light/Accueil_loyer.dart';

class loyer extends StatefulWidget {
  const loyer({super.key});

  @override
  State<loyer> createState() => _loyerState();
}

class _loyerState extends State<loyer> {
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
               Navigator.push(context, MaterialPageRoute(builder: (context)=>const AccueilLoyer()));
            },
        child: 
            Container(
              height: double.infinity,
              decoration: const BoxDecoration(
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
                  const Align(
                    alignment: Alignment.bottomRight,
                    child: Text("logement",style: TextStyle(color: Colors.black,fontSize: 23,fontWeight: FontWeight.bold),),
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
                                 Navigator.push(context, MaterialPageRoute(builder: (context)=>const AccueilLoyer()));
                          
                           }
                            else{
                                   Navigator.push(context, MaterialPageRoute(builder: (context)=>const AccueilLoyer_Dark()));
                            
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
