

class Publication {
  final String photoDeProfil;
  final String nom;
  final String titre;
  final String texte;
  final String photoDePublication;
  final String videoDePublication;
  final String heure;

  Publication({
    required this.photoDeProfil,
    required this.nom,
    required this.titre,
    required this.texte,
    required this.photoDePublication,
    required this.videoDePublication,
    required this.heure,
  });
}

List<Publication> publications = [
  Publication(
    nom: 'Veronique Laura',
    titre: 'villa a louer',
    texte: "Hello!! je suis entrain de faire louer ma villa Bisous",
    heure: '2h',
    photoDeProfil: 'images/person-removebg-preview.png',
    photoDePublication: 'images/img (10).jpg',
    videoDePublication: '',
  ),
  Publication(
    nom: 'Mouhamed Sam',
    titre: 'Recherche une chambre',
    texte: 'Bonjour je suis a la recherche une chambre, même en colacation si possible. Merci de me contacter',
    photoDeProfil: 'images/240_F_367979072_UdBgmIp2RuFgLsbruOMBVmruR6jCDqfX 1.png',
    photoDePublication: '',
    videoDePublication: '',
    heure: '5h',
  ),

  Publication(
    nom: 'Sangare',
    titre: 'Amitié',
    texte: "Nous vous passant toutes nos salutation ",
    heure: '1min',
    photoDeProfil: 'images/Germany.png',
    photoDePublication: 'images/group-five-african-college-students-spending-time-together-campus-university-yard-black-afro-friends-studying-education-theme_627829-6007 1.png',
    videoDePublication: '',
  ),

  Publication(
    nom: 'Rostel David',
    titre: 'Recherche une ecole',
    texte: "Salut je suis nous nouveau et je viens d'avoir mon visa et j'aimairais avoir quelques conseils venant de votre part merci a celui qui pourra me repondre",
    photoDeProfil: 'images/maison1.jpg',
    photoDePublication: '',
    videoDePublication: '',
    heure: '5h',
  ),
];


// Publication publication2 = Publication(
//   photoDeProfil: 'url_de_la_photo',
//   nom: 'John Doe',
//   titre: 'Ma publication',
//   texte: 'Voici le texte de ma publication.',
//   photoDePublication: 'url_de_la_photo_de_publication',
//   videoDePublication: 'url_de_la_video',
//   heure: 'Il y a 2 heures',
//   couleurDegrade: [Colors.blue, Colors.green], // Dégradé de bleu à vert
// );
