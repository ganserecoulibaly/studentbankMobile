import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import 'package:studentbankmobile/banque_sow/dark/option3.dart';

class option2 extends StatefulWidget {
  const option2({super.key});

  @override
  State<option2> createState() => _option2State();
}

class _option2State extends State<option2> {
  FilePickerResult? result;

  String? _filename;

  PlatformFile? pickedfile;

  bool isLoading = false;

  File? fileToDisplay;
  void pickFile() async {
    try {
      setState(() {
        isLoading = true;
      });
      result = await FilePicker.platform.pickFiles(
        type: FileType.custom,
        allowedExtensions: ['jpg', 'pdf', 'png'],
      );
      if (result != null) {
        _filename = result!.files.first.name;
        pickedfile = result!.files.first;
        fileToDisplay = File(pickedfile!.path.toString());
        print('file name $_filename');
      }
      setState(() {
        isLoading = false;
      });
    } catch (er) {
      print("ne marche pas");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          // width: double.infinity,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/filter_banque_black.png"),
                  fit: BoxFit.cover)),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                const Padding(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: StepProgressIndicator(
                    size: 10,
                    totalSteps: 5,
                    currentStep: 3,
                    selectedColor: Colors.white,
                    unselectedColor: Colors.white54,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: SizedBox(
                    width: 382,
                    height: 72,
                    child: Text(
                      'Photo',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w700,
                        height: 0,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(18),
                  child: Container(
                      height: 190,
                      width: 150,
                      decoration: BoxDecoration(
                          border: Border.all(width: 10, color: Colors.white)),
                      child: IconButton(
                          onPressed: pickFile,
                          icon: const Icon(
                            Icons.file_upload,
                            color: Colors.white,
                          ))),
                ),
                const Padding(
                  padding: EdgeInsets.all(18),
                  child: SizedBox(
                    width: 379.35,
                    height: 38.56,
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text:
                                'Lorem ipsum dolor sit amet. Quo nobis esse sed ',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w300,
                              height: 0,
                            ),
                          ),
                          TextSpan(
                            text: 'ratione incidunt',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                          TextSpan(
                            text:
                                ' sed nihil vitae. Lorem ipsum dolor sit amet.',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w300,
                              height: 0,
                            ),
                          ),
                        ],
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: TextButton(
                      onPressed: () => Navigator.push(context,
                          MaterialPageRoute(builder: (context) => const option3())),
                      child: Container(
                        width: 271,
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
                              'Finaliser ma demande',
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
                      )),
                )
              ])),
    );
  }
}
