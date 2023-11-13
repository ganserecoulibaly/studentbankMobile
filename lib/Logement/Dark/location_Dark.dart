import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'loyer_liste_Dark.dart';

class location_dark extends StatefulWidget {
  const location_dark({super.key});

  @override
  State<location_dark> createState() => _location_darkState();
}
class _location_darkState extends State<location_dark> {
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
    print('file name ${_filename}');
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
    print('file name ${_filename1}');
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
    print('file name ${_filename2}');
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
    print('file name ${_filename3}');
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
          decoration: BoxDecoration(
            color:Colors.grey.shade900,
          ),
        
          child:Column(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,  
              children: [
               Container(
              height: 300,
              decoration: BoxDecoration(
                boxShadow: [
                       BoxShadow(color: Colors.white,blurRadius: 3.0,spreadRadius: 4.2),
              ],
                image: DecorationImage(image: AssetImage('images/maisonNight.jpg'),fit: BoxFit.cover),
                borderRadius: BorderRadius.only(bottomRight: Radius.circular(30),bottomLeft: Radius.circular(30))
              ),
              child: Stack(
                    /// Width of the [ImageSlideshow].
                    children: [
                    
                    Center(
                      child: 
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                      SizedBox(height: 10,),
                      Align(
                        alignment: Alignment.center,
                        child: Text("Mes Documents",style: TextStyle(color:Colors.white,fontSize: 20,fontWeight: FontWeight.bold)),
                      
                      ),
                      Text("lorem ghdfshgvhsgsvss\nfhvsgvbfsfj\bnfbssbvfsvsvhn",style: TextStyle(color:Colors.white,fontSize: 13,fontWeight: FontWeight.normal),),
                      SizedBox(height: 10,),
                      ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.white),onPressed: (){}, child: Text("voir plus",style: TextStyle(color: Colors.black),))
                    ],),
                    ),
                    ],
                  ),
               ),
               Container(
                      padding: EdgeInsets.all(20),
                      alignment: Alignment.center,
                      width:300,
                      // decoration:  BoxDecoration(color: Colors.grey.shade900,borderRadius: BorderRadius.circular((8))),
                      child:Row(
                        children: [
                           Container(
                      decoration: BoxDecoration(color: Colors.red,borderRadius: BorderRadius.circular(7)),
                      height:35,width: 50,
                      
                      child: 
                    Image.asset('images/🦆 icon _building one_.png',color: Colors.white,),
                    ),
                      ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.white,elevation: 10,shadowColor: Colors.black),
                      onPressed: (){
                       pickFile();
                        }, child:const Text("Contrat de logement",style: TextStyle(fontSize: 15,color: Colors.black),)),
                      Icon(Icons.upload_file,color: Colors.red,),
                        ],
                      ),
                  ),

                 result!=null?Text("${_filename}"):Text(""),
                 Container(
                      padding: EdgeInsets.all(20),
                      alignment: Alignment.center,
                      width:300,
                      // decoration:  BoxDecoration(color: Colors.grey.shade900,borderRadius: BorderRadius.circular((8))),
                      child:Row(
                        children: [
                           Container(
                      decoration: BoxDecoration(color: Colors.red,borderRadius: BorderRadius.circular(7)),
                      height:35,width: 50,
                      
                      child: 
                    Image.asset('images/🦆 icon _building one_.png',color: Colors.white,),
                    ),
                      ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.white,elevation: 10,shadowColor: Colors.black),
                      onPressed: (){
                       pickFile1();
                        }, child:const Text("Facture de logement",style: TextStyle(fontSize: 15,color: Colors.black),)),
                      Icon(Icons.upload_file,color: Colors.red,),
                        ],
                      ),
                  ),

              result1!=null?Text("${_filename1}"):Text(""),
                  Container(
                      padding: EdgeInsets.all(20),
                      alignment: Alignment.center,
                      width:300,
                      // decoration:  BoxDecoration(color: Colors.grey.shade900,borderRadius: BorderRadius.circular((8))),
                      child:Row(
                        children: [
                           Container(
                      decoration: BoxDecoration(color: Colors.red,borderRadius: BorderRadius.circular(7)),
                      height:35,width: 50,
                      
                      child: 
                    Image.asset('images/🦆 icon _building one_.png',color: Colors.white,),
                    ),
                      ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.white,elevation: 10,shadowColor: Colors.black),
                      onPressed: (){
                       pickFile2();
                        }, child:const Text("autre                          ",style: TextStyle(fontSize: 15,color: Colors.black),)),
                      Icon(Icons.upload_file,color: Colors.red,),
                        ],
                      ),
                  ),
              result2!=null?Text("${_filename2}"):Text(""),
            // SizedBox(height: 60,),
              ],
            ),
          ),       
    );
    
  }
}