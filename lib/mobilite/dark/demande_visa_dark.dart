import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:studentbankmobile/mobilite/dark/Accueil_mobilite_dark.dart';

class demande_visa_dark extends StatefulWidget {
  const demande_visa_dark({super.key});

  @override
  State<demande_visa_dark> createState() => _demande_visa_darkState();
}

class _demande_visa_darkState extends State<demande_visa_dark> {
  
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
    print('file name ${_filename4}');
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
    print('file name ${_filename5}');
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
          decoration: BoxDecoration(
          color: Colors.grey.shade900,   
          image: DecorationImage(image: AssetImage("images/Logo N.png"),fit: BoxFit.fill)
        ),
        child: ListView(
          children: [
              Container(
            margin: EdgeInsets.all(20),
            
            decoration:BoxDecoration(borderRadius: BorderRadius.circular(20),
            image: DecorationImage(image:  AssetImage("images/mobilite_3.jpg"),fit: BoxFit.fill,scale: 4)),
            // child: Image.asset("images/mobilite.jpeg",fit: BoxFit.contain,),
            height: 250,
            width: double.infinity,
            child:
                Align(
                  alignment: Alignment.center,
                  child: Text("Mes Admission",style: TextStyle(color:Colors.blue.shade100, fontWeight: FontWeight.bold,fontSize: 20),),
                ),
              ),
            
              Container(                  
                margin: EdgeInsets.only(top:20,left: 20,right: 20,bottom: 10),
                width: double.infinity,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color:Colors.blue.shade100),
                height: 50,
                child: Center(
                  child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                           TextButton(
                          onPressed: (){
                           pickFile();
                            }, child:const Text("Pieces d'identite       ",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),)),
                          
                            Icon(Icons.drive_folder_upload,color: Colors.black,),
                            result!=null?Text("${_filename}"):Text(""),
                            ],
                          ),
                ),
              ),
             Container(
                  margin: EdgeInsets.only(left: 20,right: 20,bottom: 10),
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.blue.shade100),
                child: Center(
                  child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                           TextButton(
                          onPressed: (){
                           pickFile1();
                            }, child:const Text("3 derniers diplome     ",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),)),
                          
                            Icon(Icons.drive_folder_upload,color: Colors.black,),
                            result1!=null?Text("${_filename1}"):Text(""),
                            ],
                          ),
                ),
              ),
             Container(
                  margin: EdgeInsets.only(left: 20,right: 20,bottom: 10),
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color:Colors.blue.shade100),
                child: Center(
                  child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                           TextButton(
                          onPressed: (){
                           pickFile2();
                            }, child:const Text("Les releves de notes   ",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),)),
                          
                            Icon(Icons.drive_folder_upload,color: Colors.black,),
                            result2!=null?Text("${_filename2}"):Text(""),
                            ],
                          ),
                ),
              ),
             Container(
                  margin: EdgeInsets.only(left: 20,right: 20,bottom: 10),
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.blue.shade100),
                child: Center(
                  child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                           TextButton(
                          onPressed: (){
                           pickFile3();
                            }, child:const Text("Photographe                 ",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),)),
                          
                            Icon(Icons.drive_folder_upload,color: Colors.black,),
                            result3!=null?Text("${_filename3}"):Text(""),
                            ],
                          ),
                ),
              ),
             Container(
                  margin: EdgeInsets.only(left: 20,right: 20,bottom: 10),
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.blue.shade100),
                child: Center(
                  child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                           TextButton(
                          onPressed: (){
                           pickFile4();
                            }, child:const Text("lette de motivation         ",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),)),
                          
                            Icon(Icons.drive_folder_upload,color: Colors.black,),
                            result4!=null?Text("${_filename4}"):Text(""),
                            ],
                          ),
                ),
              ),
             Center(
               child: Container(
                  margin: EdgeInsets.only(left: 20,right: 20,bottom: 10),
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
                          
                            Icon(Icons.drive_folder_upload ,color: Colors.black,),
                            result5!=null?Text("${_filename5}"):Text(""),
                            ],
                          ),
                ),
             ),
               SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: 150,
                // decoration: BoxDecoration(gradient: LinearGradient(colors: [Colors.white,Colors.pink])),
             decoration: BoxDecoration(
              color: Colors.pink,
              borderRadius: BorderRadius.circular(30)
              ),
            child: TextButton(onPressed: (){
                  
                },child: Text("contactez-nous",style: TextStyle(color: Colors.white),),),
              ),
               Container(
                decoration: BoxDecoration(
                  color: Colors.pink,
                borderRadius: BorderRadius.circular(30)
                ),
                width: 150,
                // decoration: BoxDecoration(gradient: LinearGradient(colors: [Colors.white,Colors.pink])),
                child: TextButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Accueil_mobilite_dark()));
                },child: Text("Valider",style: TextStyle(color: Colors.white),),),
              )
            ],
          )
          ]
        ),
      ),
     bottomNavigationBar:  Container(
                  // color: Colors.orange,
                  height: 70,
                  // margin: EdgeInsets.only(top: 0),
                  decoration: BoxDecoration(
                        color: Colors.grey.shade900,
                        image: DecorationImage(image: AssetImage('images/Logo N.png'),fit: BoxFit.contain),
                        boxShadow: [
                          BoxShadow(color: Colors.white),
                          BoxShadow(color: Colors.white),
                          BoxShadow(color: Colors.white),
                          BoxShadow(color: Colors.white),
                        ]
                  ),
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
                        IconButton(onPressed: (){}, icon:Image.asset("images/Acceuil_icone.png",),iconSize: 40,),
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