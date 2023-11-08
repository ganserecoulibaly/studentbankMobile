import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'loyer_liste.dart';

class Demandelocation extends StatefulWidget {
  const Demandelocation({super.key});

  @override
  State<Demandelocation> createState() => _DemandelocationState();
}
class _DemandelocationState extends State<Demandelocation> {
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
            color:Colors.white,
            image: DecorationImage(image: AssetImage('images/Logo N.png'),fit: BoxFit.contain)
        
          ),
        
          child:ListView(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,  
              children: [
               Container(
              height: 300,
              decoration: BoxDecoration(
                boxShadow: [
                       BoxShadow(color: Colors.orange.shade200,blurRadius: 3.0,spreadRadius: 4.2),
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
                        child: Text("Demande de location",style: TextStyle(color:Colors.white,fontSize: 20,fontWeight: FontWeight.bold)),
                      
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
                      decoration: BoxDecoration(color: Colors.orange,borderRadius: BorderRadius.circular(7)),
                      height:35,width: 50,
                      
                      child: 
                    Image.asset('images/🦆 icon _building one_.png',color: Colors.white,),
                    ),
                      ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.white,elevation: 10,shadowColor: Colors.black),
                      onPressed: (){
                       pickFile();
                        }, child:const Text("Assurance habitation",style: TextStyle(fontSize: 15,color: Colors.black),)),
                      
                        IconButton(onPressed: (){}, icon: Icon(Icons.download_for_offline_outlined,color: Colors.orange,),)
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
                      decoration: BoxDecoration(color: Colors.orange,borderRadius: BorderRadius.circular(7)),
                      height:35,width: 50,
                      
                      child: 
                    Image.asset('images/🦆 icon _building one_.png',color: Colors.white,),
                    ),
                      ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.white,elevation: 10,shadowColor: Colors.black),
                      onPressed: (){
                       pickFile1();
                        }, child:const Text("Caution",style: TextStyle(fontSize: 15,color: Colors.black),)),
                      
                        IconButton(onPressed: (){}, icon: Icon(Icons.download_for_offline_outlined,color: Colors.orange,),)
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
                      decoration: BoxDecoration(color: Colors.orange,borderRadius: BorderRadius.circular(7)),
                      height:35,width: 50,
                      
                      child: 
                    Image.asset('images/🦆 icon _building one_.png',color: Colors.white,),
                    ),
                      ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.white,elevation: 10,shadowColor: Colors.black),
                      onPressed: (){
                       pickFile2();
                        }, child:const Text("Contrat                         ",style: TextStyle(fontSize: 15,color: Colors.black),)),
                      
                        IconButton(onPressed: (){}, icon: Icon(Icons.download_for_offline_outlined,color: Colors.orange,),)
                        ],
                      ),
                  ),
              result2!=null?Text("${_filename2}"):Text(""),
              Container(
                      padding: EdgeInsets.all(20),
                      alignment: Alignment.center,
                      width:300,
                      // decoration:  BoxDecoration(color: Colors.grey.shade900,borderRadius: BorderRadius.circular((8))),
                      child:Row(
                        children: [
                           Container(
                      decoration: BoxDecoration(color: Colors.orange,borderRadius: BorderRadius.circular(7)),
                      height:35,width: 50,
                      
                      child: 
                    Image.asset('images/🦆 icon _building one_.png',color: Colors.white,),
                    ),
                      ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.white,elevation: 10,shadowColor: Colors.black),
                      onPressed: (){
                       pickFile3();
                        }, child:const Text("Autres                         ",style: TextStyle(fontSize: 15,color: Colors.black),)),
                        IconButton(onPressed: (){}, icon: Icon(Icons.download_for_offline_outlined,color: Colors.orange,),)
                        ],
                      ),
                  ),
              result3!=null?Text("${_filename3}"):Text(""),
              SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.red,elevation: 2),onPressed: (){}, child: Text("Annuler",style: TextStyle(color: Colors.black),)),
                  SizedBox(width: 15,),
                  ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.red),onPressed: (){}, child: Text("Valider",style: TextStyle(color: Colors.black),)),
                ],
              )
            // SizedBox(height: 60,),
              ],
            ),
          ),
        bottomNavigationBar:  Container(
                  // color: Colors.orange,
                  height: 70,
                  // margin: EdgeInsets.only(top: 0),
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(45),topRight: Radius.circular(45))),
                child: Center(
                  child: Container(
                  // margin: EdgeInsets.all(10),

                  padding: EdgeInsets.all(5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(width:15),
                        IconButton(onPressed: (){}, icon: Image.asset('images/setting.png'),iconSize: 40,),
                        SizedBox(width:15),
                        IconButton(onPressed: (){}, icon:Image.asset("images/euro_symbol.png"),iconSize: 40),
                        SizedBox(width:15),
                        IconButton(onPressed: (){}, icon:Image.asset("images/Acceuil_icone.png"),iconSize: 50),
                        SizedBox(width:15),
                        IconButton(onPressed: (){}, icon:Image.asset('images/move_location.png'),iconSize: 40),
                        
                        SizedBox(width:15),
                        IconButton(onPressed: (){}, icon:Image.asset('images/night_shelter.png'),iconSize: 40)
                      ],
                    ),
                  ),
                ),
                )
                  
        
    );
    
  }
}