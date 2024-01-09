import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/pub_model.dart';


class ListPub extends StatefulWidget {
  final List<Publication> publications;

  const ListPub({Key? key, required this.publications}) : super(key: key);

  @override
  State<ListPub> createState() => _ListPubState();
}

class _ListPubState extends State<ListPub> {
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {

              final publication = widget.publications[index];

          return Container(
            margin: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              gradient: const LinearGradient(
                colors: [Colors.white, Colors.orange],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: Column(
              children:[
                ListTile(
                    leading: Stack(
                      children: [
                        // GestureDetector(
                        //   onTap: () {},
                        //   child: CircleAvatar(
                        //     backgroundColor: Colors.white,
                        //     radius: 19,
                        //     child: CircleAvatar(
                        //       radius: 17,
                        //       backgroundColor: Colors.white,
                        //       child: ClipOval(
                        //         child: Image.asset(
                        //           publication.photoDeProfil,
                        //           //fit: BoxFit.cover,
                        //         ),
                        //       ),
                        //     ),
                        //   ),
                        // ),
                        CircleAvatar(
                          backgroundColor: const Color(0xffc0baba),
                          radius: 19,
                          child: CircleAvatar(
                            radius: 17,
                            backgroundColor: const Color(0xffc0baba),
                            child: ClipOval(
                              child: Image.asset(
                                publication.photoDeProfil,
                                fit: BoxFit.cover,
                                width: 40,
                                height: 40,
                              ),
                            ),
                          ),
                        ),
                          Positioned(
                            bottom: 0,
                            right: 0,
                            child: Container(
                              width: 12,
                              height: 12,
                              decoration: BoxDecoration(
                                color: Colors.green,
                                shape: BoxShape.circle,
                                border: Border.all(
                                    width: 2, color: Colors.white),
                              ),
                            ),
                          ),
                      ],
                    ),
                    title: Text(publication.nom, style: const TextStyle(
                      fontSize: 12,
                    ),),
                    subtitle: Text(publication.titre, style: const TextStyle(
                      fontSize: 12,
                    ),),
                    trailing: Text(publication.heure, style: const TextStyle(
                      fontSize: 12,
                    ),)

                ),
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  decoration: const BoxDecoration(
                  ),
                  child: Text(publication.texte,
                    style: const TextStyle(
                      fontSize: 12,
                    ),),
                ),
                ),
                const SizedBox(height: 5.0,),

                if (publication.photoDePublication.isNotEmpty)
                  GestureDetector(
                    onTap: () {
                      // Gérer l'action en cliquant sur la photo ici
                    },
                    child: FutureBuilder(
                      future: precacheImage(AssetImage(publication.photoDePublication), context),
                      builder: (context, snapshot) {
                        if (snapshot.connectionState == ConnectionState.done) {
                          return Image(image: AssetImage(publication.photoDePublication));
                        } else {
                          // Afficher un indicateur de chargement pendant le téléchargement
                          return const CircularProgressIndicator();
                        }
                      },
                    ),
                  ),

                const SizedBox(height: 20.0),

                Container(
                  //height: 30.0,
                  decoration: BoxDecoration(
                      color: Colors.black45,
              borderRadius: BorderRadius.circular(10.0),
                  ),
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                       GestureDetector(
                         onTap: (){

                         },
                         child:const Row(
                           children: [
                             Icon(CupertinoIcons.hand_thumbsup,
                               size: 20,
                               color: Colors.white54,),
                             SizedBox(width: 5),
                             Text(
                               "j'aime",
                               style: TextStyle(
                                 fontSize: 10,
                                 color: Colors.white54,
                               ),
                             ),
                           ],
                         ),
                       ),
                    GestureDetector(
                      onTap: (){

                      },
                      child:   const Row(
                        children: [
                          Icon(
                            CupertinoIcons.conversation_bubble,
                            color: Colors.white54,
                            size: 20,
                          ),
                          SizedBox(width: 5),
                          Text(
                            "Commenter",
                            style: TextStyle(
                              fontSize: 10,
                              color: Colors.white54,
                            ),
                          ),
                        ],
                      ),
                    ),
                     GestureDetector(
                       onTap: (){

                       },
                       child:  const Row(
                         children: [
                           Icon( CupertinoIcons.arrowshape_turn_up_right,
                             size: 20,
                             color: Colors.white54,),
                           SizedBox(width: 5),
                           Text(
                             "Partager",
                             style: TextStyle(
                               fontSize: 10,
                               color: Colors.white54,
                             ),
                           ),
                         ],
                       ),
                     )

                    ],
                  ),
                )

              ]
            )
          );
        },
        childCount: widget.publications.length,
      ),
    );
  }
}
