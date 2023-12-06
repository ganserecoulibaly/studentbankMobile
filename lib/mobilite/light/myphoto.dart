import 'dart:developer';
import 'dart:io';
import 'dart:math';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'valide_dossier.dart';

class Myphoto extends StatefulWidget {
  const Myphoto({super.key});

  @override
  State<Myphoto> createState() => _MyphotoState();
}

class _MyphotoState extends State<Myphoto> {
 

  int time= 0;
FilePickerResult?result;

String? _filename;

PlatformFile?pickedfile;
bool isLoading=false;

File? fileToDisplay;
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
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    time=TimeOfDay.now().minute.toInt()-time;
  }
@override
  
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Container(
         decoration: BoxDecoration(
          color: Colors.pink,
          image: DecorationImage(image: AssetImage('images/LogoN_Mobilite.png'),fit: BoxFit.fill)
        ),
        child: ListView(
          children: [
             Container(
              margin: EdgeInsets.all(20),
              
              decoration:BoxDecoration(borderRadius: BorderRadius.circular(20),
              image: DecorationImage(image:  AssetImage("images/mobilite_3.jpg"),fit: BoxFit.cover,scale: 4)),
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
                          margin: EdgeInsets.all(20),
                          child: LinearProgressIndicator(
                          color: Colors.pink.shade100,
                          value: 3/5,
                          backgroundColor: Colors.blueGrey,
                          borderRadius: BorderRadius.circular(30),
                          minHeight: 10,
                          ),
                        ),
                        SizedBox(height: 30,),
                        Text("Demande de Visa",style: TextStyle(color:Colors.pink.shade100, fontWeight: FontWeight.bold,fontSize: 20),)
                      ],
                    ),
                  )
               
                ],
              ),
            ),
            Center(child: Text("Mes Documents",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),),
            Center(
              child: Container(
                          margin: EdgeInsets.all(10),
                          height: 200,
                          width: 150,
                          decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(10)),
                          child: Icon(Icons.person,size: 100,color: Colors.white,)
                        // result!=null?Image(image: AssetImage("${_filename}"),fit: BoxFit.cover,):Icon(Icons.person,size: 100,color: Colors.white,)
                        
                        ),
            ),
            Center(child: IconButton(onPressed:(){pickFile();} ,icon: Icon(Icons.upload_file,size: 30,) ,),),
            Text("Le lorem ipsum est, en imprimerie, une suite de mots sans signification utilisée à titre provisoir\n\t pour calibrer une mise en page, le texte "),
           Container(
                margin: EdgeInsets.only(top:20,right: 20,bottom: 5,left: 20),
                decoration: BoxDecoration(
                  color: Colors.red.shade400,
                  borderRadius: BorderRadius.circular(30),
                  ),
                child: Align(
                  alignment: Alignment.center,
                  child: TextButton(onPressed: (){
                    showDialog(context: context, builder: (context){
                      return Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage("images/en_attente_student.png",),fit: BoxFit.fill)
                        ),
                        child: GestureDetector(
                          onTap: () {
                                Navigator.push(context,MaterialPageRoute(builder: (context)=>valider_doc()));
                          },
                          child:  Container(
                              margin: EdgeInsets.only(top:50,left: 30,right: 30,bottom: 40),
                              child: LinearProgressIndicator(
                              color: Colors.pink.shade100,
                              value: 4/5,
                              backgroundColor: Colors.blueGrey,
                              borderRadius: BorderRadius.circular(30),
                              minHeight: 10,
                              ),
                            ),
                        ),   
                      );
                    });
                      // Navigator.push(context, MaterialPageRoute(builder: (context)=>traitement()));
                  }, child: Text(" Finaliser ma demande ",style: TextStyle(color: Colors.white),)),
                ),
                )
          ],
        ),
      ),
                  
    );
    
  }
}