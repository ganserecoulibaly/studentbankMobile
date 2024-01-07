import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:studentbankmobile/mobilite/light/admision_en_attente.dart';

class doc_admission_edit extends StatefulWidget {
  const doc_admission_edit({super.key});

  @override
  State<doc_admission_edit> createState() => _doc_admission_editState();
}

class _doc_admission_editState extends State<doc_admission_edit> {

FilePickerResult?result;
FilePickerResult?result1;
FilePickerResult?result2;
FilePickerResult?result3;
FilePickerResult?result4;
FilePickerResult?result5;

String? _filename;
String? _filename1;
String? _filename2;
String? _filename3;
String? _filename4;
String? _filename5;

PlatformFile?pickedfile;
PlatformFile?pickedfile1;
PlatformFile?pickedfile2;
PlatformFile?pickedfile3;
PlatformFile?pickedfile4;
PlatformFile?pickedfile5;

bool isLoading=false;
bool isLoading1=false;
bool isLoading2=false;
bool isLoading3=false;
bool isLoading4=false;
bool isLoading5=false;

File? fileToDisplay;
File? fileToDisplay1;
File? fileToDisplay2;
File? fileToDisplay3;
File? fileToDisplay4;
File? fileToDisplay5;
void pickFile()async{
  try{
  setState(() {
    isLoading=true;
  }); 
  result=await FilePicker.platform.pickFiles(
    type: FileType.custom,
    allowedExtensions: ['jpg', 'pdf', 'doc'],
  );
  if(result!=null){
    _filename=result!.files.first.name;
    pickedfile=result!.files.first;
    fileToDisplay=File(pickedfile!.path.toString());
    print('file name $_filename');
  }
  setState(() {
    isLoading=false;
  });
  }catch(er){
    print("ne marche pas");
  }
}
void pickFile1()async{
  try{
  setState(() {
    isLoading1=true;
  }); 
  result1=await FilePicker.platform.pickFiles(
    type: FileType.custom,
    allowedExtensions: ['jpg', 'pdf', 'doc'],
  );
  if(result1!=null){
    _filename1=result1!.files.first.name;
    pickedfile1=result1!.files.first;
    fileToDisplay1=File(pickedfile1!.path.toString());
    print('file name $_filename1');
  }
  setState(() {
    isLoading1=false;
  });
  }catch(er){
    print("ne marche pas");
  }
}
void pickFile2()async{
  try{
  setState(() {
    isLoading2=true;
  }); 
  result2=await FilePicker.platform.pickFiles(
    type: FileType.custom,
    allowedExtensions: ['jpg', 'pdf', 'doc'],
  );
  if(result2!=null){
    _filename2=result2!.files.first.name;
    pickedfile2=result2!.files.first;
    fileToDisplay2=File(pickedfile2!.path.toString());
    print('file name $_filename2');
  }
  setState(() {
    isLoading2=false;
  });
  }catch(er){
    print("ne marche pas");
  }
}
void pickFile3()async{
  try{
  setState(() {
    isLoading3=true;
  }); 
  result3=await FilePicker.platform.pickFiles(
    type: FileType.custom,
    allowedExtensions: ['jpg', 'pdf', 'doc'],
  );
  if(result3!=null){
    _filename3=result3!.files.first.name;
    pickedfile3=result3!.files.first;
    fileToDisplay3=File(pickedfile3!.path.toString());
    print('file name $_filename3');
  }
  setState(() {
    isLoading3=false;
  });
  }catch(er){
    print("ne marche pas");
  }
}
void pickFile4()async{
  try{
  setState(() {
    isLoading4=true;
  }); 
  result4=await FilePicker.platform.pickFiles(
    type: FileType.custom,
    allowedExtensions: ['jpg', 'pdf', 'doc'],
  );
  if(result4!=null){
    _filename4=result4!.files.first.name;
    pickedfile4=result4!.files.first;
    fileToDisplay4=File(pickedfile4!.path.toString());
    print('file name $_filename4');
  }
  setState(() {
    isLoading4=false;
  });
  }catch(er){
    print("ne marche pas");
  }
}
void pickFile5()async{
  try{
  setState(() {
    isLoading5=true;
  }); 
  result5=await FilePicker.platform.pickFiles(
    type: FileType.custom,
    allowedExtensions: ['jpg', 'pdf', 'doc'],
  );
  if(result5!=null){
    _filename5=result5!.files.first.name;
    pickedfile5=result5!.files.first;
    fileToDisplay5=File(pickedfile5!.path.toString());
    print('file name $_filename5');
  }
  setState(() {
    isLoading5=false;
  });
  }catch(er){
    print("ne marche pas");
  }
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration:BoxDecoration(borderRadius: BorderRadius.circular(20),
        image: const DecorationImage(image:  AssetImage("images/mobilite_3.jpg"),fit: BoxFit.cover,scale: 4)),
        child:Center(
          child: ListView(
            children: [
                Container(
                  margin: const EdgeInsets.all(10),
                  child: const Center(
                    child: Text("Documents a fournir",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black),),
                    )
                  ),
           
              Container(                  
                margin: const EdgeInsets.only(top:20,left: 20,right: 20,bottom: 10),
                width: double.infinity,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color:Colors.pink.shade100),
                height: 50,
                child: Center(
                  child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                           TextButton(
                          onPressed: (){
                           pickFile();
                            }, child:const Text("Pieces d'identite       ",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),)),
                          
                            const Icon(Icons.drive_folder_upload,color: Colors.black,),
                            result!=null?Text("$_filename"):const Text(""),
                            ],
                          ),
                ),
              ),
             Container(
                  margin: const EdgeInsets.only(left: 20,right: 20,bottom: 10),
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.pink.shade100),
                child: Center(
                  child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                           TextButton(
                          onPressed: (){
                           pickFile1();
                            }, child:const Text("3 derniers diplome     ",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),)),
                          
                            const Icon(Icons.drive_folder_upload,color: Colors.black,),
                            result1!=null?Text("$_filename1"):const Text(""),
                            ],
                          ),
                ),
              ),
             Container(
                  margin: const EdgeInsets.only(left: 20,right: 20,bottom: 10),
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color:Colors.pink.shade100),
                child: Center(
                  child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                           TextButton(
                          onPressed: (){
                           pickFile2();
                            }, child:const Text("Les releves de notes   ",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),)),
                          
                            const Icon(Icons.drive_folder_upload,color: Colors.black,),
                            result2!=null?Text("$_filename2"):const Text(""),
                            ],
                          ),
                ),
              ),
             Container(
                  margin: const EdgeInsets.only(left: 20,right: 20,bottom: 10),
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.pink.shade100),
                child: Center(
                  child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                           TextButton(
                          onPressed: (){
                           pickFile3();
                            }, child:const Text("Photographe                 ",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),)),
                          
                            const Icon(Icons.drive_folder_upload,color: Colors.black,),
                            result3!=null?Text("$_filename3"):const Text(""),
                            ],
                          ),
                ),
              ),
             Container(
                  margin: const EdgeInsets.only(left: 20,right: 20,bottom: 10),
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.pink.shade100),
                child: Center(
                  child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                           TextButton(
                          onPressed: (){
                           pickFile4();
                            }, child:const Text("lette de motivation         ",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),)),
                          
                            const Icon(Icons.drive_folder_upload,color: Colors.black,),
                            result4!=null?Text("$_filename4"):const Text(""),
                            ],
                          ),
                ),
              ),
             Center(
               child: Container(
                  margin: const EdgeInsets.only(left: 20,right: 20,bottom: 10),
                  width: double.infinity,
                  height: 50,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.blue.shade100),
                  child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                          TextButton(
                          onPressed: (){
                           pickFile5();
                            }, child:const Text("Autre                                ",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),)),
                          
                            const Icon(Icons.drive_folder_upload ,color: Colors.black,),
                            result5!=null?Text("$_filename5"):const Text(""),
                            ],
                          ),
                ),
             ),
              const SizedBox(width: 30,),
              Container(
              margin: const EdgeInsets.all(40),
              width: 100,
              decoration: BoxDecoration(
                color: Colors.red.shade400,
                borderRadius: BorderRadius.circular(30),
                ),
              child: TextButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const admission_en_attente()));
                  // Navigator.push(context, MaterialPageRoute(builder: (context)=>traitement()));
              }, child: const Text(" valider ",style: TextStyle(color: Colors.white),)),
              )
            ],
          ),
        ) 
        ),
   
    );
  }
}