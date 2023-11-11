import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/menu_model.dart';

class MenuWidget extends StatelessWidget {

  MenuModel menuModel;
  MenuWidget({required this.menuModel});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
            width:double.infinity,
            height: 50.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: Center(
              child: Text(menuModel.titre,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15
                ),),
            )
        ),

        Container(
          width: 65.0,
          height: 50.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [menuModel.couleurDebut, menuModel.couleurFin],
            ),
          ),
          child: Icon(
            menuModel.icone,
            size: 35.0,
            color: Colors.white,
          ),
        ),

      ],
    );
  }
}
