import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class cagnotte_2_dark extends StatefulWidget {
  const cagnotte_2_dark({super.key});

  @override
  State<cagnotte_2_dark> createState() => _cagnotte_2_darkState();
}

class _cagnotte_2_darkState extends State<cagnotte_2_dark> {
  List<String> choix=["public","privée"];
  String op="public";
  List<String>nom=["Adrien","Ahmadou","Assane","Espoire","Herdy","Bocar","Gansere","Gloire"];
  int st=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("images/filter_banque_black.png"),fit: BoxFit.cover)
        ),
        child: ListView(
          children: [
             Container(
              margin: const EdgeInsets.only(top: 20,left: 5,bottom: 5),
              alignment: Alignment.topLeft,
              child: IconButton(icon: Icon(Icons.arrow_back,color: Colors.white,),onPressed: ()=>Navigator.pop(context),),
            ),
             Container(
              margin:const EdgeInsets.only(bottom: 5),
              alignment: Alignment.center,
              child:Text("Créer ma cagnotte",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
            ),
             Container(
              // alignment: Alignment.center,
              margin: EdgeInsets.only(left:20,right: 20,bottom: 5),
             
              child: Text("Nom de la cagnotte",style: TextStyle(color:Colors.white,fontSize: 16,fontWeight: FontWeight.bold),)
            ),
             Container(
              // alignment: Alignment.center,
              margin: EdgeInsets.only(left:20,right: 20,bottom: 5),
               width: 365.47,
              height: 37,
              decoration: ShapeDecoration(
              color: Color(0x28ED174C),
              shape: RoundedRectangleBorder(
              side: BorderSide(width: 1, color: Color(0xFFED174C)),
              borderRadius: BorderRadius.circular(10),
              ),
              ),
              child:const TextField(
                  style: TextStyle(color:Colors.white,),
                textAlign: TextAlign.center,
                keyboardType: TextInputType.name,
              ),
            ),
             Container(
              // alignment: Alignment.center,
              margin: EdgeInsets.only(left:20,right: 20,bottom: 5),
             
              child: Text("Type de la cagnotte",style: TextStyle(color:Colors.white,fontSize: 16,fontWeight: FontWeight.bold),)
            ),
              Container(
              // alignment: Alignment.center,
              margin: EdgeInsets.only(left:20,right: 20,bottom: 5),
              width: 365.47,
              height: 37,
              decoration: ShapeDecoration(
              color: Color(0x28ED174C),
              shape: RoundedRectangleBorder(
              side: BorderSide(width: 1, color: Color(0xFFED174C)),
              borderRadius: BorderRadius.circular(10),)),
              child:const TextField(
                  style: TextStyle(color:Colors.white,),
                textAlign: TextAlign.center,
                keyboardType: TextInputType.name,
              ),
            ),
             Container(
              // alignment: Alignment.center,
              margin: EdgeInsets.only(left:20,right: 20,bottom: 5),
             
              child: const Text("Description",style: TextStyle(color:Colors.white,fontSize: 16,fontWeight: FontWeight.bold),)
            ),
              Container(
              // alignment: Alignment.center,
              margin: EdgeInsets.only(left:20,right: 20,bottom: 5),
              width: 365.47,
              height: 100,
              decoration: ShapeDecoration(
              color: Color(0x28ED174C),
              shape: RoundedRectangleBorder(
              side: BorderSide(width: 1, color: Color(0xFFED174C)),
              borderRadius: BorderRadius.circular(10),)),
              child: const TextField(
                style: TextStyle(color:Colors.white,),
                minLines: 1,
                maxLines: 5,
                textAlign: TextAlign.center,
                textInputAction: TextInputAction.newline,
                keyboardType: TextInputType.multiline,
              ),
            ),
             Container(
              // alignment: Alignment.center,
              margin:const  EdgeInsets.only(left:20,right: 20,bottom: 5),
             
              child: const Text("Option",style: TextStyle(color:Colors.white,fontSize: 16,fontWeight: FontWeight.bold),)
            ),
            Center(
              child: Container(
                margin: EdgeInsets.only(left:20,right: 20,bottom: 5),
                width: 100,
                height: 37,
                decoration: ShapeDecoration(
                color: Color(0x28ED174C),
                shape: RoundedRectangleBorder(
                side: BorderSide(width: 1, color: Color(0xFFED174C)),
                borderRadius: BorderRadius.circular(10),)),
              child: DropdownButton(
                  
                  items: 
                // [
                //   DropdownMenuItem(child: Text("public"),value: "public",),
                //   DropdownMenuItem(child: Text("privee"),value: "privee",),
                // ],
                choix.map((String items){
                    return DropdownMenuItem(value: items,child: Text(items,style: const TextStyle(color:Colors.grey,fontSize: 18)),);
               }).toList(),
                value: op,
                onChanged: (String? st){
                  setState(() {
                    op=st!;
                  });
                },
                ),
              ),
            ),
              Container(
              // alignment: Alignment.center,
              margin:const  EdgeInsets.only(left:20,right: 20,bottom: 5),
             
              child: const Text("Montant de la cagnotte",style: TextStyle(color:Colors.white,fontSize: 16,fontWeight: FontWeight.bold),)
            ),
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                // alignment: Alignment.center,
                margin: EdgeInsets.only(left:20,right: 20,bottom: 5),
                width: 100,
                height: 37,
                decoration: ShapeDecoration(
                color: Color(0x28ED174C),
                shape: RoundedRectangleBorder(
                side: BorderSide(width: 1, color: Color(0xFFED174C)),
                borderRadius: BorderRadius.circular(10),)),
                child:const TextField(
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.name,
                  style: TextStyle(color:Colors.white,),
                  decoration: InputDecoration(
                    
                    hintText: "saisie",
                    hintStyle: TextStyle(color:Colors.white,)
                  ),
                ),
                            ),
              ),
              Center(
                child: Container(
                  margin: EdgeInsets.all(10),
                  width: 364,
                  height: 200,
                  decoration: ShapeDecoration(
                      color: Color(0xD1ED174C),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32),
                      ),
                      shadows: [
                          BoxShadow(
                              color: Color(0x3F000000),
                              blurRadius: 4,
                              offset: Offset(0, 4),
                              spreadRadius: 0,
                          )
                      ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // SizedBox(height: 10,),
                      Container(
                            margin: EdgeInsets.only(top: 10),
                            width: 186.70,
                            child: Text(
                                'Sélectionner un ami',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500,
                                    height: 0,
                                ),
                            ),
                        ),
                          Container(
                          alignment: Alignment.center,
                          width: 346,
                          height: 37,
                          decoration: ShapeDecoration(
                          color: Colors.white.withOpacity(0.6000000238418579),
                          shape: RoundedRectangleBorder(
                          side: BorderSide(width: 1, color: Color(0xFFED174C)),
                          borderRadius: BorderRadius.circular(20),
                          ),
                          ),
                          child: CupertinoSearchTextField(
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10,right: 5,left: 5,),
                          child: Text("${nom[st]}",style: TextStyle(color: Colors.white,fontSize: 14,),),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10,right: 5,left: 5,bottom: 5),
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                for(int i=0;i<8;i++)
                                Container(
                                  width:60,
                                  height: 60,
                                  margin: EdgeInsets.all(5),
                                  child: Stack(
                                      children: [
                                          Positioned(
                                              left: 0,
                                              top: 0,
                                              child: Container(
                                                  width: 60,
                                                  height: 60,
                                                  decoration: ShapeDecoration(
                                                      color: Colors.white,
                                                      shape: OvalBorder(),
                                                      shadows: [
                                                          BoxShadow(
                                                              color: Color(0x3F000000),
                                                              blurRadius: 4,
                                                              offset: Offset(0, 4),
                                                              spreadRadius: 0,
                                                          )
                                                      ],
                                                  ),
                                                  child: IconButton(icon:Icon(Icons.person_outline_rounded),onPressed: (){
                                                    setState(() {
                                                      st=i;
                                                    });
                                                  },),
                                              ),
                                          ),
                                          Positioned(
                                              left: 40,
                                              top: 0,
                                              child: Container(
                                                  width: 20,
                                                  height: 20,
                                                  decoration: ShapeDecoration(
                                                      color: Color(0xFF8BE16D),
                                                      shape: OvalBorder(side: BorderSide(width: 1)),
                                                      shadows: [
                                                          BoxShadow(
                                                              color: Color(0x3F000000),
                                                              blurRadius: 4,
                                                              offset: Offset(0, 4),
                                                              spreadRadius: 0,
                                                          )
                                                      ],
                                                  ),
                                              ),
                                          ),
                                      ],
                                  ),
                              ),
                                                        ],
                            ),
                          ),
                        ),
                      
                    ],
                  ),
                 ),
              ),
              Center(
                child:  
                 Container(
                  margin:const  EdgeInsets.all(10),
                    width: 174,
                    height: 50,
                    padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 11),
                    clipBehavior: Clip.antiAlias,
                    decoration: ShapeDecoration(
                      color:const Color(0xFFED174C),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      shadows: [
                        BoxShadow(
                            color: Color(0x3F000000),
                            blurRadius: 4,
                            offset: Offset(0, 4),
                            spreadRadius: 0,
                        )
                      ],
                    ),
                    child:TextButton(
                      onPressed: (){},
                      child: Text( 'Valider',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w300,
                          height: 0,
                        )
                      ),
                    )
                  ),
              )
          ],
        ),
      ),
    );
  }
}