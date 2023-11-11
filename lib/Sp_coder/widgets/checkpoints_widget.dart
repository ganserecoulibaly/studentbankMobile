import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CheckPoints extends StatelessWidget {
  final int checkedTill;
  final List<String> checkPoints;
  final Color checkPointFilledColor;

  CheckPoints({this.checkedTill= 1, required this.checkPoints, required this.checkPointFilledColor});

  final double circleDia = 20;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (c, s){
      
      final double cWidth = ((s.maxWidth -(20.0 * (checkPoints.length + 1)))/
          (checkPoints.length - 1));
      
      return Container(
        height: 40,
        //color: Colors.grey,
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:<Widget>[
            Container(
              padding: EdgeInsets.symmetric(horizontal: 9.0, ),
              child: Row(
                children: checkPoints.map(
                        (e) {
                          int index = checkPoints.indexOf(e);
                          print(index);
                          return Container(
                            height: circleDia,
                            child: Row(
                              children:<Widget>[
                                Container(
                                  width: circleDia,
                                  padding: EdgeInsets.all(4),
                                  child: Icon(
                                    Icons.done,
                                    color: Colors.white,
                                    size: 10,
                                  ),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: index<= checkedTill
                                        ? checkPointFilledColor
                                        : checkPointFilledColor.withOpacity(0.2),
                                  ),
                                ),
                                index != (checkPoints.length - 1)
                                ? Container(
                                  color: index < checkedTill
                                      ? checkPointFilledColor
                                      : checkPointFilledColor.withOpacity(0.2),
                                  height: 4,
                                  width: cWidth,
                                )
                                    : Container()
                              ],
                            ),
                          );
                       },
                   ).toList()
                ),
            ),
            Container(
              //padding: EdgeInsets.symmetric(horizontal: 2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: checkPoints.map(
                        (e) {
                          return Text(
                            e,
                            style: TextStyle(fontWeight:
                            FontWeight.bold),
                          );
                        }).toList(),
              ),
            )
          ],
        ),
      );
    });
  }
}
