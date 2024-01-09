import 'package:flutter/material.dart';
import 'package:studentbankmobile/banque/dark/option7.dart';

class option6 extends StatefulWidget {
  List<String> num = <String>["", "", "", ""];
  option6({super.key, required this.num});

  @override
  State<option6> createState() => _option6State();
}

class _option6State extends State<option6> {
  @override
  void initState() {
    num;
    super.initState();
  }

  List<String> num2 = <String>["", "", "", ""];
  int increment2 = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/filter_banque_black.png"),
              fit: BoxFit.cover)),
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.only(top: 20.0, left: 20),
          child: Align(
            alignment: Alignment.topLeft,
            child: SizedBox(
              child: IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: const Icon(
                    Icons.arrow_back_sharp,
                    color: Colors.white,
                  )),
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            'Vérification',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w500,
              height: 0,
            ),
          ),
        ),
        Text(
          "nombre de saisie:$increment2",
          style: const TextStyle(color: Colors.white),
        ),
        Container(
          margin: const EdgeInsets.only(top: 30),
          decoration: BoxDecoration(
              border: Border.all(width: 1, color: Colors.white30)),
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                // height: 60,
                width: double.infinity,
                decoration: const BoxDecoration(
                    border: Border(
                        bottom: BorderSide(width: 2, color: Colors.white))),
                child: Row(
                  children: [
                    for (int i = 0; i < 4; i++)
                      (num2[i] != "")
                          ? Text(
                              num2[i],
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontWeight: FontWeight.w800),
                            )
                          : const Text(""),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(width: 3, color: Colors.white),
                    ),
                    child: TextButton(
                      onPressed: () {
                        if (increment2 < 4) {
                          setState(() {
                            num2[increment2] = "1";
                            increment2 = increment2 + 1;
                          });
                        }
                      },
                      child: const Text(
                        "1",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                  Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(width: 3, color: Colors.white),
                    ),
                    child: TextButton(
                      onPressed: () {
                        if (increment2 < 4) {
                          setState(() {
                            num2[increment2] = "2";
                            increment2 = increment2 + 1;
                          });
                        }
                      },
                      child: const Text(
                        "2",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                  Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(width: 3, color: Colors.white),
                    ),
                    child: TextButton(
                      onPressed: () {
                        if (increment2 < 4) {
                          setState(() {
                            num2[increment2] = "3";
                            increment2 = increment2 + 1;
                          });
                        }
                      },
                      child: const Text(
                        "3",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(width: 3, color: Colors.white),
                    ),
                    child: TextButton(
                      onPressed: () {
                        if (increment2 < 4) {
                          setState(() {
                            num2[increment2] = "4";
                            increment2 = increment2 + 1;
                          });
                        }
                      },
                      child: const Text(
                        "4",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                  Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(width: 3, color: Colors.white),
                    ),
                    child: TextButton(
                      onPressed: () {
                        if (increment2 < 4) {
                          setState(() {
                            num2[increment2] = "5";
                            increment2 = increment2 + 1;
                          });
                        }
                      },
                      child: const Text(
                        "5",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                  Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(width: 3, color: Colors.white),
                    ),
                    child: TextButton(
                      onPressed: () {
                        if (increment2 < 4) {
                          setState(() {
                            num2[increment2] = "6";
                            increment2 = increment2 + 1;
                          });
                        }
                      },
                      child: const Text(
                        "6",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(width: 3, color: Colors.white),
                    ),
                    child: TextButton(
                      onPressed: () {
                        if (increment2 < 4) {
                          setState(() {
                            num2[increment2] = "7";

                            increment2 = increment2 + 1;
                          });
                        }
                      },
                      child: const Text(
                        "7",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                  Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(width: 3, color: Colors.white),
                    ),
                    child: TextButton(
                      onPressed: () {
                        if (increment2 < 4) {
                          setState(() {
                            num2[increment2] = "8";
                            increment2 = increment2 + 1;
                          });
                        }
                      },
                      child: const Text(
                        "8",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                  Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(width: 3, color: Colors.white),
                    ),
                    child: TextButton(
                      onPressed: () {
                        if (increment2 < 4) {
                          setState(() {
                            num2[increment2] = "9";
                            increment2 = increment2 + 1;
                          });
                        }
                      },
                      child: const Text(
                        "9",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(width: 3, color: Colors.white),
                    ),
                    child: TextButton(
                        onPressed: () {
                          setState(() {
                            if (increment2 != 0) {
                              num2[increment2] = "";
                              increment2 = increment2 - 1;
                              num2[increment2] = "";
                            }
                          });
                        },
                        child: const Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                          size: 22,
                        )),
                  ),
                  Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(width: 3, color: Colors.white),
                    ),
                    child: TextButton(
                      onPressed: () {
                        if (increment2 < 4) {
                          setState(() {
                            num2[increment2] = "0";
                            increment2 = increment2 + 1;
                          });
                        }
                      },
                      child: const Text(
                        "0",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(width: 3, color: Colors.white),
                    ),
                    child: TextButton(
                        onPressed: () {
                          setState(() {
                            increment2 = 0;
                            for (int i = 0; i < 4; i++) {
                              num2[i] = "";
                            }
                          });
                        },
                        child: Image.asset(
                          "images/material-symbols_settings-backup-restore.png",
                          color: Colors.white,
                        )),
                  ),
                ],
              ),
            ),
          ]),
        ),
        Padding(
          padding: const EdgeInsets.all(8),
          child: TextButton(
            onPressed: () {
              // if (num == num2) {
              setState(() {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const option7()));
              });
              // }
            },
            child: Container(
              width: 175,
              height: 45,
              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 11),
              clipBehavior: Clip.antiAlias,
              decoration: ShapeDecoration(
                gradient: const LinearGradient(
                  begin: Alignment(0.00, -1.00),
                  end: Alignment(0, 1),
                  colors: [Color(0xFFEC6418), Color(0xFFED174C)],
                ),
                shape: RoundedRectangleBorder(
                  side: const BorderSide(
                    width: 1,
                    strokeAlign: BorderSide.strokeAlignOutside,
                    color: Colors.white,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                shadows: const [
                  BoxShadow(
                    color: Color(0x3F000000),
                    blurRadius: 4,
                    offset: Offset(0, 4),
                    spreadRadius: 0,
                  )
                ],
              ),
              child: const Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Continuer',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
      ]),
    ));
  }
}
