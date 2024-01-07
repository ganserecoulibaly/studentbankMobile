import 'package:flutter/material.dart';
import 'package:studentbankmobile/banque_sow/dark/option5.dart';

class option7 extends StatefulWidget {
  const option7({super.key});

  @override
  State<option7> createState() => _option7State();
}

class _option7State extends State<option7> {
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
        const SizedBox(
          height: 30,
        ),
        const Padding(
            padding: EdgeInsets.only(
                left: 10.0, right: 10, bottom: 10, top: 20),
            child: SizedBox(
              width: 196,
              height: 72,
              child: Text(
                'Reussi! ',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w700,
                  height: 0,
                ),
              ),
            )),
        const SizedBox(
          height: 30,
        ),
        Container(
          width: 200,
          height: 200,
          decoration: BoxDecoration(
              border: Border.all(width: 1, color: Colors.white),
              borderRadius: BorderRadius.circular(100)),
          child: Center(
            child: Image.asset("images/select_check_box.png"),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(18),
          child: TextButton(
            onPressed: () => Navigator.push(
                context, MaterialPageRoute(builder: (context) => const option5())),
            child: Container(
              width: 273,
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
