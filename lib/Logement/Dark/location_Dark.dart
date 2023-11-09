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
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
            color:Colors.grey.shade900,
          ),
        
          child:Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,  
              children: [
                Padding(padding: EdgeInsets.all(10),
            child:  Column(
                  children: [
                  Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Locations",style:TextStyle(color: Colors.red,fontSize: 30,fontWeight: FontWeight.bold))
                  ],
                ),
                  Row(

                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    
                    Text("lorem sjdfhkjghsbhsfdbhvdshdvbhssvhsfdhdsfhvfd\ngfhdsgvshdvfshdfbsdjbfsd\nfdhsgfgvfgsdhv",style:TextStyle(color: Colors.black,fontSize: 15))
                  ],
                ),

                  ],
                ),
            ),
            // SizedBox(height: 60,),
            Center(
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width:300,
                      decoration:  BoxDecoration(color: Colors.grey.shade900,borderRadius: BorderRadius.circular((8))),
                      child:  ElevatedButton.icon(onPressed: (){
                       pickFile();
                      },icon:Icon(Icons.file_upload_outlined), label:const Text("Contrat de logement",style: TextStyle(fontSize: 16,color: Colors.black),)),
                  ),
                  ],  
                ),
                const SizedBox(height: 8,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width:300,
                      decoration:  BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular((8))),
                      child: ElevatedButton.icon(onPressed: (){pickFile();}, label:const Text("Facture de logement",style: TextStyle(fontSize: 16,color: Colors.black)),icon:Icon(Icons.file_upload_outlined)),
                ),
                // Positioned(child:),
                ],
                ),
                const SizedBox(height: 8,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width:300,
                      decoration:  BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular((8))),
                      child: ElevatedButton.icon(onPressed: (){pickFile();},icon:Icon(Icons.file_upload_outlined),label:const Text("Autres",style: TextStyle(fontSize: 16,color: Colors.black),)),
                      
                ),
                ],
                ),
                const SizedBox(height: 8,),
              ]),
            )
                
              ],
            ),
          ),
        
        
    );
    
  }
}