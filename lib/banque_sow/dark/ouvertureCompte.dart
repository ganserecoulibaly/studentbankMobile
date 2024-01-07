import 'package:flutter/material.dart';
import 'package:studentbankmobile/banque_sow/dark/Bank1.dart';

class ouvertureCpt extends StatefulWidget {
  const ouvertureCpt({super.key});

  @override
  State<ouvertureCpt> createState() => _ouvertureCptState();
}

class _ouvertureCptState extends State<ouvertureCpt> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      // width: double.infinity,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/filter_banque_black.png"),
              fit: BoxFit.cover)),
      child: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage("images/Logo N.png"))),
        child: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
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
                width: 224,
                height: 92,
                child: Text(
                  'Oops il s’emblerait que tu n’aies pas encore de compte ! ',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
              ),
              TextButton(
                  onPressed: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Bank1())),
                  child: Container(
                    width: 234,
                    height: 45,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 50, vertical: 11),
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
                          'Ouvrir un compte',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                            height: 0,
                          ),
                        ),
                      ],
                    ),
                  )),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, bottom: 5),
                child: Image.asset(
                    "images/StudentBank - Logotype - Version quadrichrome dégradé-01 2.png"),
              ),
            ]),
      ),
    ));
  }
}
