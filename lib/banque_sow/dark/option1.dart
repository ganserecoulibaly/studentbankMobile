import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import 'package:studentbankmobile/banque_sow/dark/option2.dart';

class option1 extends StatefulWidget {
  const option1({super.key});

  @override
  State<option1> createState() => _option1State();
}

class _option1State extends State<option1> {
  FilePickerResult? result;
  FilePickerResult? result1;
  FilePickerResult? result2;

  String? _filename;
  String? _filename1;
  String? _filename2;

  PlatformFile? pickedfile;
  PlatformFile? pickedfile1;
  PlatformFile? pickedfile2;

  bool isLoading = false;
  bool isLoading1 = false;
  bool isLoading2 = false;

  File? fileToDisplay;
  File? fileToDisplay1;
  File? fileToDisplay2;
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

  void pickFile1() async {
    try {
      setState(() {
        isLoading1 = true;
      });
      result1 = await FilePicker.platform.pickFiles(
        type: FileType.custom,
        allowedExtensions: ['jpg', 'pdf', 'png'],
      );
      if (result1 != null) {
        _filename1 = result1!.files.first.name;
        pickedfile1 = result1!.files.first;
        fileToDisplay1 = File(pickedfile1!.path.toString());
        print('file name $_filename1');
      }
      setState(() {
        isLoading1 = false;
      });
    } catch (er) {
      print("ne marche pas");
    }
  }

  void pickFile2() async {
    try {
      setState(() {
        isLoading2 = true;
      });
      result2 = await FilePicker.platform.pickFiles(
        type: FileType.custom,
        allowedExtensions: ['jpg', 'pdf', 'png'],
      );
      if (result2 != null) {
        _filename2 = result2!.files.first.name;
        pickedfile2 = result2!.files.first;
        fileToDisplay2 = File(pickedfile2!.path.toString());
        print('file name $_filename2');
      }
      setState(() {
        isLoading2 = false;
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
            child: ListView(children: [
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
                  currentStep: 2,
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
                    'Pièces d’identité',
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
                padding: const EdgeInsets.all(8),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 363,
                        height: 192,
                        decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(width: 1, color: Colors.white),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 8.0, left: 8.0, right: 8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    width: 77,
                                    height: 113,
                                    decoration: ShapeDecoration(
                                      shape: RoundedRectangleBorder(
                                        side: const BorderSide(
                                            width: 1, color: Colors.white),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                    child: IconButton(
                                        onPressed: pickFile,
                                        icon: const Icon(
                                          Icons.upload_file,
                                          color: Colors.white,
                                        )),
                                  ),
                                  const SizedBox(
                                      width: 88.50,
                                      height: 63,
                                      child: Text(
                                        "-----------\n------------\n------------",
                                        style: TextStyle(color: Colors.white),
                                      )),
                                  Container(
                                    width: 77,
                                    height: 113,
                                    decoration: ShapeDecoration(
                                      shape: RoundedRectangleBorder(
                                        side: const BorderSide(
                                            width: 1, color: Colors.white),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                    child: IconButton(
                                        onPressed: pickFile1,
                                        icon: const Icon(Icons.upload_file,
                                            color: Colors.white)),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                                padding: const EdgeInsets.all(8),
                                child: Container(
                                  decoration: const BoxDecoration(
                                      border: Border(
                                          top: BorderSide(
                                              width: 1, color: Colors.white))),
                                  child: const Padding(
                                    padding: EdgeInsets.all(18.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Recto',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 13,
                                            fontFamily: 'Roboto',
                                            fontWeight: FontWeight.w700,
                                            height: 0,
                                          ),
                                        ),
                                        Text(
                                          'Verso',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 13,
                                            fontFamily: 'Roboto',
                                            fontWeight: FontWeight.w700,
                                            height: 0,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ))
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 20),
                      decoration: const BoxDecoration(
                          border: Border(
                              top: BorderSide(width: 1, color: Colors.white))),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(18.0),
                      child: SizedBox(
                        width: 382,
                        height: 72,
                        child: Text(
                          'justification de domicile',
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
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 363,
                        height: 192,
                        decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(width: 1, color: Colors.white),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 8.0, left: 8.0, right: 8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const SizedBox(
                                      width: 88.50,
                                      height: 63,
                                      child: Text(
                                        "-----------\n------------\n------------",
                                        style: TextStyle(color: Colors.white),
                                      )),
                                  Container(
                                    width: 77,
                                    height: 113,
                                    decoration: ShapeDecoration(
                                      shape: RoundedRectangleBorder(
                                        side: const BorderSide(
                                            width: 1, color: Colors.white),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                    child: IconButton(
                                        onPressed: pickFile2,
                                        icon: const Icon(Icons.upload_file,
                                            color: Colors.white)),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                                padding: const EdgeInsets.all(8),
                                child: Container(
                                    decoration: const BoxDecoration(
                                        border: Border(
                                            top: BorderSide(
                                                width: 1,
                                                color: Colors.white))),
                                    child: const Text(
                                      "Format:PDF,JPG,PNG",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w700),
                                    ))),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: TextButton(
                          onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const option2())),
                          child: Container(
                            width: 160,
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
                                  'Envoyer',
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
                  ],
                ),
              ),
            ])));
  }
}
