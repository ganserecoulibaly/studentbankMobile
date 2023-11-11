import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class ListUserModel {
  final String name;
  final String lastmessage;
  final String time;
  final String photoDeProfil;


  ListUserModel({
    required this.name,
    required this.lastmessage,
    required this.time,
    required this.photoDeProfil,
  });
}

ListUserModel user1 = ListUserModel(
    name: 'Wali Mai',
    lastmessage: "bonjour j'espère que tu vas bien et tout dans ta vie egalement ? salue aussi la famille pour moi merci...",
    time: '7:20',
    photoDeProfil: 'images/beautymaison.jpg'
);

ListUserModel user2 = ListUserModel(
    name: 'Aurlin Mika',
    lastmessage: "j'espère que tu vas bien et tout dans ",
    time: '8:12',
    photoDeProfil:  'images/img.jpg'
);

ListUserModel user3 = ListUserModel(
    name: 'Dupon',
    lastmessage: "Tout le mon de se porte a merveil je suppose ?",
    time: '11:20',
    photoDeProfil: 'images/italiemaison.jpg'
);

ListUserModel user4 = ListUserModel(
    name: 'Eric Dorian',
    lastmessage: "tu vas bien et tout dans ta vie",
    time: '12:05',
    photoDeProfil: 'images/person-removebg-preview.png'
);

ListUserModel user5 = ListUserModel(
    name: 'Herdy Rostel',
    lastmessage:"Merci mon frere ca va et j'espere bien que toi aussi tu te porte a merveille?",
    time: '14:23',
    photoDeProfil: 'images/Spain.png'
);

ListUserModel user6 = ListUserModel(
    name: 'Glr Shadow',
    lastmessage: "Hier je suis venu te manquer chez toi!",
    time: '19:52',
    photoDeProfil: 'images/img (8).jpg'
);

ListUserModel user7 = ListUserModel(
    name: 'Ahmadou',
    lastmessage: 'oui oui',
    time: 'lundi',
    photoDeProfil: 'images/img (11).jpg'
);

ListUserModel user8 = ListUserModel(
    name: 'Ousmane',
    lastmessage: 'Non pas le temps de venir peut être demain stp',
    time: 'jeudi',
    photoDeProfil: 'images/img (7).jpg'
);

ListUserModel user9 = ListUserModel(
    name: 'Joricia',
    lastmessage: "Oui je peux dire que tu as aussi raison vu la grandeur de la situation",
    time: '17/09/23',
    photoDeProfil: 'images/240_F_367979072_UdBgmIp2RuFgLsbruOMBVmruR6jCDqfX 1.png'
);

ListUserModel user10 = ListUserModel(
    name: 'David',
    lastmessage: 'je me rappelle plus de toi dit moi stp',
    time: '10/08/23',
    photoDeProfil: 'images/Canada.png'
);