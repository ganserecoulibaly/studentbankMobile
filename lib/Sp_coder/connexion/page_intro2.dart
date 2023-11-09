import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PageIntro2 extends StatefulWidget {
  const PageIntro2({Key? key}) : super(key: key);

  @override
  State<PageIntro2> createState() => _PageIntro2State();
}

class _PageIntro2State extends State<PageIntro2> {
  bool isDarkMode = false;
  bool isEnabled = true;

  Color containerColor = Colors.white;

  void toggleMode() {
    if (isEnabled) {
      setState(() {
        isDarkMode = !isDarkMode;
        containerColor = isDarkMode ? Colors.black : Colors.white;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: <Widget>[
          Image.asset(
            'images/background-removebg-preview.png',
            width:double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            bottom: MediaQuery.of(context).size.height / 2,
            child: AnimatedContainer(
              duration: Duration(seconds: 1),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    containerColor,
                    Colors.transparent,
                  ],
                ),
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(15),
                  bottom: Radius.circular(0),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.5),
                    blurRadius: 20,
                  ),
                ],
              ),
              alignment: Alignment(isDarkMode ? 0 : 0, 0),
              child: AnimatedContainer(
                duration: Duration(seconds: 1),
                width: isDarkMode ? 100 : 200,
                height: isDarkMode ? 100 : 200,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Ligne de texte supprimée
                    AnimatedOpacity(
                      duration: Duration(seconds: 1),
                      opacity: isDarkMode ? 0.0 : 1.0,
                      child: Image.asset(
                        isDarkMode ? 'images/nuit.png' : 'images/soleil.png',
                        width: 100,
                        height: 100,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),



          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            top:5.0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    toggleMode();
                  },
                  child: Container(
                    width: 150.0,
                    height: 30.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.0),
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Colors.orangeAccent, Colors.pinkAccent],
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          isDarkMode ? "Mode nuit" : "Mode jour",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                        // Icon(
                        //   Icons.arrow_forward,
                        //   color: Colors.white,
                        // ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),


        ],
      ),
    );
  }
}