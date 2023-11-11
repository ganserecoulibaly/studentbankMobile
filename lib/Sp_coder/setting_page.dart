import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {

  bool annoncesPartenaires = false;
  bool associations = false;
  bool universites = true;
  bool etudiants = false;
  bool alternance = true;
  bool stage = false;
  bool jobsEtudiants = true;
  bool informations = true;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFAC7C3),
      body: Stack(
        children: [

          Image.asset(
            'images/background-removebg-preview.png',
            width:double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,),
          Image.asset(
            'images/LogoN.png',
            width:double.infinity,
            height: double.infinity,
          ),

          //Normalement la place de notre Appbar prenant un Column

          Padding(
              padding:EdgeInsets.only(left: 10.0, right: 10.0, top: 30.0),
              child: Container(
                width: double.infinity,
                child: Image.asset('images/StudentBank - Logotype - Version quadrichrome dégradé-01 2.png',
                  width: 50,
                  height: 50,),
              )
          ),

          Padding(
            padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 80.0),
            child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.transparent
              ),
              child: ListView(
                physics: BouncingScrollPhysics(),
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      buildSwitchTile('Annonces partenaires', annoncesPartenaires),
                      Divider(color: Colors.pink,
                              thickness: 1.0,
                      ),
                      buildSwitchTile('Associations', associations),
                      Divider(color: Colors.pink,
                        thickness: 1.0,
                      ),
                      buildSwitchTile('Universités', universites),
                      Divider(color: Colors.pink,
                        thickness: 1.0,
                      ),
                      buildSwitchTile('Étudiants', etudiants),
                      Divider(color: Colors.pink,
                        thickness: 1.0,
                      ),
                      buildSwitchTile('Alternance', alternance),
                      Divider(color: Colors.pink,
                        thickness: 1.0,
                      ),
                      buildSwitchTile('Stage', stage),
                      Divider(color: Colors.pink,
                        thickness: 1.0,
                      ),
                      buildSwitchTile('Jobs Étudiants', jobsEtudiants),
                      Divider(color: Colors.pink,
                        thickness: 1.0,
                      ),
                      buildSwitchTile('Informations', informations),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget buildSwitchTile(String title, bool value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.white),
              ),
             Transform.scale(
               scale: 0.7,
               child:  Switch.adaptive(

                 activeColor: Colors.green,
                 inactiveThumbColor: Colors.white,
                 value: value,
                 onChanged: (newValue) {
                   setState(() {
                     switch (title) {
                       case 'Annonces partenaires':
                         annoncesPartenaires = newValue;
                         break;
                       case 'Associations':
                         associations = newValue;
                         break;
                       case 'Universités':
                         universites = newValue;
                         break;
                       case 'Étudiants':
                         etudiants = newValue;
                         break;
                       case 'Alternance':
                         alternance = newValue;
                         break;
                       case 'Stage':
                         stage = newValue;
                         break;
                       case 'Jobs Étudiants':
                         jobsEtudiants = newValue;
                         break;
                       case 'Informations':
                         informations = newValue;
                         break;
                     }
                   });

                 },
               ),
             )
            ],
          ),
          SizedBox(height: 4),
          Text(
            value ? 'Activé' : 'Désactivé',
            style: TextStyle(
              fontSize: 12,
              color: value ? Colors.green : Colors.red,
            ),
          ),

        ],
      )
    );
  }

}


