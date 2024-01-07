import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';


import 'myphoto_dark.dart';

class MesDocs_dark extends StatefulWidget {
  const MesDocs_dark({super.key});

  @override
  State<MesDocs_dark> createState() => _MesDocs_darkState();
}

class _MesDocs_darkState extends State<MesDocs_dark> {

FilePickerResult?result;
FilePickerResult?result1;
FilePickerResult?result2;
FilePickerResult?result3;

String? _filename;
String? _filename1;
String? _filename2;
String? _filename3;

PlatformFile?pickedfile;
PlatformFile?pickedfile1;
PlatformFile?pickedfile2;
PlatformFile?pickedfile3;

bool isLoading=false;
bool isLoading1=false;
bool isLoading2=false;
bool isLoading3=false;

File? fileToDisplay;
File? fileToDisplay1;
File? fileToDisplay2;
File? fileToDisplay3;
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
         margin: const EdgeInsets.all(0),
        padding: const EdgeInsets.all(0),
        decoration: BoxDecoration(
          color: Colors.grey.shade900,
          image: const DecorationImage(image: AssetImage('images/Logo N.png'),fit: BoxFit.fill)
        ),
        // width: double.infinity,
        // height: double.infinity,
        child: ListView(
          children: [
            Container(
              margin: const EdgeInsets.all(20),
              
              decoration:BoxDecoration(borderRadius: BorderRadius.circular(20),
              image: const DecorationImage(image:  AssetImage("images/mobilite_3.jpg"),fit: BoxFit.fill,scale: 4)),
              // child: Image.asset("images/mobilite.jpeg",fit: BoxFit.contain,),
              height: 150,
              width: double.infinity,
                child:Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                   Align(
                    alignment: Alignment.center,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          margin: const EdgeInsets.all(20),
                          child: LinearProgressIndicator(
                          color: Colors.blue.shade100,
                          backgroundColor: Colors.blueGrey,
                          value: 2/5,
                          borderRadius: BorderRadius.circular(30),
                          minHeight: 10,
                          ),
                        ),
                        const SizedBox(height: 30,),
                        Text("Demande de Visa",style: TextStyle(color:Colors.blue.shade100, fontWeight: FontWeight.bold,fontSize: 20),)
                      ],
                    ),
                  )
               
                ],
              ),
            ),
            const Center(child: Text("Mes Documents",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),),
            const Center(child: Text("Pieces joints",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),),
            Container(
              margin: const EdgeInsets.only(top:20,left: 20,right: 20),
              height: 250,
              width: double.infinity,
              decoration: BoxDecoration(
              border: Border.all(color: Colors.black,),
              boxShadow: const [
                BoxShadow(blurRadius: 3.0,spreadRadius: 4.8,color: Colors.white),
                BoxShadow(blurRadius: 3.0,spreadRadius: 4.8,color: Colors.white),
                ],borderRadius: BorderRadius.circular(10)
                ),
                
              child: 
              Column(
                children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        margin: const EdgeInsets.all(10),
                        height: 150,
                        width: 100,
                        decoration: const BoxDecoration(color: Colors.black),
                        child: Center(child: IconButton(onPressed: (){pickFile();}, icon: const Icon(Icons.upload_file),color: Colors.white,)),
                      ),
                      const SizedBox(width: 30,),
                      Container(
                        margin: const EdgeInsets.all(10),
                        height: 150,
                        width: 100,
                        decoration: const BoxDecoration(color: Colors.black),
                        child: Center(child: IconButton(onPressed: (){pickFile1();}, icon: const Icon(Icons.upload_file),color: Colors.white,)),
                      )
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 10,right: 10),
                    height: 70,
                    decoration: BoxDecoration(border: Border.all(color: Colors.black,style: BorderStyle.values[1],),),
                    child:  const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                    Text("Recto"),
                    SizedBox(width: 30,),
                    Text("Verso")
                    ],
                  ),
                  )
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
             result!=null?Text("recto: $_filename"):const Text(""),
             result1!=null?Text("verso: $_filename1"):const Text(""),
              ],
            ),
            const SizedBox(height: 20,),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(),
                Text("CV",style: TextStyle(fontWeight: FontWeight.bold),),
                SizedBox(width: 20,),
                Text("Lettre de motivation",style: TextStyle(fontWeight: FontWeight.bold),),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 20,left:20,right: 20),
              height: 250,
              width: double.infinity,
              decoration: BoxDecoration(
              
              border: Border.all(color: Colors.black,),
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(blurRadius: 3.0,spreadRadius: 4.8,color: Colors.white),
                BoxShadow(blurRadius: 3.0,spreadRadius: 4.8,color: Colors.white),
                ]),
              child: 
              Column(
                children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        margin: const EdgeInsets.all(10),
                        height: 150,
                        width: 100,
                        decoration: const BoxDecoration(color: Colors.black),
                        child: Center(child: IconButton(onPressed: (){pickFile2();}, icon: const Icon(Icons.upload_file),color: Colors.white,)),
                      ),
                      const SizedBox(width: 30,),
                      Container(
                        margin: const EdgeInsets.all(10),
                        height: 150,
                        width: 100,
                        decoration: const BoxDecoration(color: Colors.black),
                        child: Center(child: IconButton(onPressed: (){pickFile3();}, icon: const Icon(Icons.upload_file),color: Colors.white,)),
                      )
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 10,right: 10),
                    height: 70,
                    decoration: BoxDecoration(border: Border.all(color: Colors.black,style: BorderStyle.values[1],),),
                    child:  const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                    Text("Joindre"),
                    SizedBox(width: 30,),
                    Text("Joindre")
                    ],
                  ),
                  )
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                  result2!=null?Text("cv: $_filename2"):const Text(""),
                  result3!=null?Text("motivation: $_filename3"):const Text(""),
              ],
            ),
              Container(
                margin: const EdgeInsets.only(top:5,right: 10,bottom: 5),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: ElevatedButton(onPressed: (){
      
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>const Myphoto_dark()));
                  },style: ElevatedButton.styleFrom(backgroundColor: Colors.white), child: Text("Continuer",style: TextStyle(color: Colors.blue.shade200),),),
                ),
                )
          ],
        ),
      ),
   
    );
  }
}