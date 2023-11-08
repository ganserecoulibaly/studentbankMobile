import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:studentbankmobile/mobilite/light/traitement.dart';

class Myphoto extends StatefulWidget {
  const Myphoto({super.key});

  @override
  State<Myphoto> createState() => _MyphotoState();
}

class _MyphotoState extends State<Myphoto> {

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
      body: ListView(
        children: [
           Container(
            margin: EdgeInsets.all(20),
            
            decoration:BoxDecoration(borderRadius: BorderRadius.circular(20),
            image: DecorationImage(image:  AssetImage("images/mobilite.jpeg"),fit: BoxFit.cover,scale: 4)),
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
                        color: Colors.blue.shade100,
                        value: 3/5,
                        backgroundColor: Colors.blueGrey,
                        borderRadius: BorderRadius.circular(30),
                        minHeight: 10,
                        ),
                      ),
                      SizedBox(height: 30,),
                      Text("hvjhhvhj",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)
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
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>traitement()));
                }, child: Text(" Finaliser ma demande ",style: TextStyle(color: Colors.white),)),
              ),
              )
        ],
      ),
       bottomNavigationBar:  Container(
                  // color: Colors.orange,
                  height: 70,
                  // margin: EdgeInsets.only(top: 0),
                  decoration: BoxDecoration(
                    color: Colors.blue.shade200,
                    // borderRadius: BorderRadius.only(topLeft: Radius.circular(45),topRight: Radius.circular(45))
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
                        IconButton(onPressed: (){}, icon:Image.asset("images/Acceuil_icone.png",),iconSize: 50,),
                        SizedBox(width:15),
                        IconButton(onPressed: (){}, icon:Image.asset('images/move_location.png'),iconSize: 40),
                        
                        SizedBox(width:15),
                        IconButton(onPressed: (){
                        }, icon:Image.asset('images/night_shelter.png'),iconSize: 40)
                      ],
                    ),
                  ),
                ),
                )
    );
  }
}