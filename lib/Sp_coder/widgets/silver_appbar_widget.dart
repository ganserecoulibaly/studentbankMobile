import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class SliverAppbarpub extends StatefulWidget {
  const SliverAppbarpub({Key? key}) : super(key: key);

  @override
  State<SliverAppbarpub> createState() => _SliverAppbarpubState();
}

class _SliverAppbarpubState extends State<SliverAppbarpub> {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.transparent,
      expandedHeight: 200.0,
      floating: false,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        background: Stack(
          children: [
            ImageSlideshow(
              width: double.infinity,
              height: 240,
              initialPage: 0,
              indicatorColor: Colors.orange,
              indicatorBackgroundColor: Colors.white,
              children: [
                PageView(
                    children: [
                      Opacity(
                        opacity: 0.5,
                        child: Image.asset(
                          'images/240_F_367979072_UdBgmIp2RuFgLsbruOMBVmruR6jCDqfX 1.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Opacity(
                        opacity: 0.5,
                        child: Image.asset(
                          'images/maison3.jpg',
                          fit: BoxFit.cover,),
                      ),
                      Opacity(
                        opacity: 0.5,
                        child: Image.asset(
                          'images/group-five-african-college-students-spending-time-together-campus-university-yard-black-afro-friends-studying-education-theme_627829-6007 1.png',
                          fit: BoxFit.cover,)
                        ,)
                    ],
                )
              ],
              isLoop: true,
            ),


            Align(
              alignment: Alignment.centerRight,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // CircleAvatar avec une image cliquable
                  GestureDetector(
                    onTap: () {

                    },
                    child: CircleAvatar(
                      backgroundImage: AssetImage('images/person-removebg-preview.png'),
                      radius: 20,
                    )
                  ),
                  SizedBox(height: 10.0,),
                  // Icône cliquable
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        width: 30.0,
                        height: 30.0,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.redAccent,
                        ),
                      ),
                      Container(
                        width: 25.0,
                        height: 25.0,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                      ),
                      Container(
                        width: 20.0,
                        height: 20.0,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.redAccent,
                        ),
                        child: ClipOval(
                          child: Image(
                            image: AssetImage('images/Iconemessage.png'),
                            width: 10, // Largeur personnalisée
                            height: 10,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 5.0,),
                  // Icône cliquable
                  GestureDetector(
                    onTap: () {

                    },
                    child: Icon(
                        Icons.menu,
                        size: 25,
                        color: Colors.white),
                  ),
                ],
              ),
            )
            ,
            // Texte au milieu
            Align(
              alignment: Alignment.center,
              child: Text(
                "Actualité",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

}


// Container(
// // ... Autres éléments de la publication ...
// child: Column(
// children: [
// // ... Autres éléments de la publication ...
//
// // Afficher le texte complet ou tronqué
// publication.texte.length <= 200
// ? Text(
// publication.texte,
// style: TextStyle(fontSize: 12),
// )
// : Column(
// children: [
// Text(
// publication.texte.substring(0, 200), // Texte tronqué
// style: TextStyle(fontSize: 12),
// ),
// TextButton(
// onPressed: () {
// // Gérer l'action "Afficher plus" ici
// },
// child: Text("Afficher plus"),
// ),
// ],
// ),
//
// // ... Autres éléments de la publication ...
// ],
// ),
// ),

