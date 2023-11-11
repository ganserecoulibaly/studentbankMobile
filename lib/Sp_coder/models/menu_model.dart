import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class MenuModel {
  final String titre;
  final IconData icone;
  final Color couleurDebut;
  final Color couleurFin;
  final VoidCallback? onTap;

  MenuModel({
      required this.titre,
      required this.icone,
      required this.couleurDebut,
      required this.couleurFin,
    this.onTap,
  });
}

MenuModel banque = MenuModel(
    titre: 'Banque',
    icone: CupertinoIcons.creditcard,
    couleurDebut: Colors.orange,
    couleurFin: Colors.pinkAccent,
    onTap: (){
      // Navigator.pushReplacement(context,
      //     MaterialPageRoute(builder: (context) {
      //       return HomePage();
      //     }));
    },
);

MenuModel logement = MenuModel(
    titre: 'Logement',
    icone: CupertinoIcons.home,
    couleurDebut: Colors.orange,
    couleurFin: Colors.pinkAccent,
    onTap: (){},
);

MenuModel mobilite = MenuModel(
    titre: 'Mobilité',
    icone: CupertinoIcons.map_pin_ellipse ,
    couleurDebut: Colors.orange,
    couleurFin: Colors.pinkAccent,
    onTap: (){},
);

MenuModel studentChat = MenuModel(
    titre: 'StudentChat',
    icone: CupertinoIcons.bubble_left_bubble_right,
    couleurDebut: Colors.orange,
    couleurFin: Colors.pinkAccent,
    onTap: (){},
);

MenuModel etreAcconpagne = MenuModel(
  titre: 'Acconpagné',
  icone: CupertinoIcons.group,
  couleurDebut: Colors.orange,
  couleurFin: Colors.pinkAccent,
  onTap: (){},
);