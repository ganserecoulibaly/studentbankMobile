import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class depanages extends StatefulWidget {
  const depanages({super.key});

  @override
  State<depanages> createState() => _depanagesState();
}
 TextEditingController _date=TextEditingController();
  TextEditingController _montant=TextEditingController();
  TextEditingController _inf=TextEditingController();
  
class _depanagesState extends State<depanages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("images/filiter_white.jpg"),fit: BoxFit.cover),
        ),
        child: ListView(
          children: [
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 80,
              child: 
                Align(
                  alignment: Alignment.topLeft,
                  child: IconButton(onPressed: (){
                    Navigator.pop(context);
                  }, icon: Icon(Icons.arrow_back,color: Colors.white,)),
                ),
            ),
            Container(
              margin: EdgeInsets.only(top:100,bottom: 75),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Mes Depanna",style: TextStyle(fontSize: 30,color: Colors.white,fontWeight: FontWeight.bold),),
                      Text("ges",style: TextStyle(fontSize: 30,color: Colors.pink,fontWeight: FontWeight.bold),),
                    ],
                  )
                ],
              ),
            ),
            Container(
                width: 402,
                height: 58,
                
                margin: EdgeInsets.only(left: 20,right: 20,bottom:30 ),
                decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                    ),
                    shadows: [
                        BoxShadow(
                            color: Color(0x7F000000),
                            blurRadius: 10,
                            offset: Offset(0, 4),
                            spreadRadius: 0,
                        )
                    ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 120,
                      decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.pink,
                      ),
                      child:const Align(alignment:Alignment.center ,child: Text("Montant*",style: TextStyle(color:Colors.white,fontSize: 12,fontWeight: FontWeight.bold),)),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      width: 130,
                      child: TextField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          hintText: "Saisir",
                          hintStyle: TextStyle(color: Colors.grey[500])
                        ),
                      ),
                    ),
                    // SizedBox(width: 30,),
                    Container(
                      width: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      color: Colors.pink,
                      ),
                      child: Container(alignment: Alignment.center ,child: Image.asset("images/currency-exchange 1.png",fit: BoxFit.cover,),),
                    )
                  ],
                ),
            ),
              Container(
                width: 402,
                height: 58,
                
                margin: EdgeInsets.only(left: 20,right: 20,bottom:30 ),
                decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                    ),
                    shadows: [
                        BoxShadow(
                            color: Color(0x7F000000),
                            blurRadius: 10,
                            offset: Offset(0, 4),
                            spreadRadius: 0,
                        )
                    ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 120,
                      decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.pink,
                      ),
                      child:const Align(alignment:Alignment.center ,child: Text("Immédiat",style: TextStyle(color:Colors.white,fontSize: 12,fontWeight: FontWeight.bold),)),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      width: 130,
                      child: TextField(
                        controller: _date,//editing controller of this TextField
                  decoration: const InputDecoration( 
                    //  icon: Icon(Icons.calendar_today), //icon of text field
                     hintText: "Enter Date De Naissance",
                     hintStyle: TextStyle(color: Colors.grey)
                  ),
                  readOnly: true,  //set it true, so that user will not able to edit text
                  onTap: () async {
                    DateTime? pickedDate = await showDatePicker(
                        context: context, initialDate: DateTime.now(),
                        firstDate: DateTime(2000), //DateTime.now() - not to allow to choose before today.
                        lastDate: DateTime(2101)
                    );
                    
                    if(pickedDate != null ){
                        print(pickedDate);  //pickedDate output format => 2021-03-10 00:00:00.000
                        String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate); 
                        print(formattedDate); //formatted date output using intl package =>  2021-03-16
                          //you can implement different kind of Date Format here according to your requirement
                        int formattedjour=DateTime.now().year-pickedDate.year;
                         setState(() {
                            _date.text = formattedDate; 
                           
                        //    _ageController.text=formattedjour.toString();//set output date to TextField value. 
                         });
                    }else{
                        print("Vous n'avez pas encore selectionne une date");
                    }
                  },),
                    ),
                    // SizedBox(width: 30,),
                    Container(
                      width: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      color: Colors.pink,
                      ),
                      child: Container(alignment: Alignment.center ,child: Icon(Icons.calendar_today,size: 30,color: Colors.white,)),
                    )
                  ],
                ),
            ),
             Container(
                width: 402,
                height: 58,
                
                margin: EdgeInsets.only(left: 20,right: 20,bottom:30 ),
                decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                    ),
                    shadows: [
                        BoxShadow(
                            color: Color(0x7F000000),
                            blurRadius: 10,
                            offset: Offset(0, 4),
                            spreadRadius: 0,
                        )
                    ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 120,
                      decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.pink,
                      ),
                      child:const Align(alignment:Alignment.center ,child: Text("information\ncomplémentaires",style: TextStyle(color:Colors.white,fontSize: 12,fontWeight: FontWeight.bold),)),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      width: 130,
                      child: TextField(
                        controller: _inf,
                        // keyboardType: TextInputType.date,
                        decoration: InputDecoration(
                          hintText: "Saisir ..",
                          hintStyle: TextStyle(color: Colors.grey[500])
                        ),
                      ),
                    ),
                    // SizedBox(width: 30,),
                    Container(
                      width: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      color: Colors.pink,
                      ),
                      child: Container(alignment: Alignment.center ,child: Image.asset("images/person-square 1.png",fit: BoxFit.cover,color: Colors.white,),),
                    )
                  ],
                ),
            ),
               Center(
              child: Container(
                  margin: EdgeInsets.only(top:32,bottom: 10),
                  width: 150,
                   height: 35,
                  clipBehavior: Clip.antiAlias,
                  decoration: ShapeDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [Colors.red.shade800, Colors.orange.shade800],
                      ),
                      shape: RoundedRectangleBorder(
                          side: BorderSide(
                              width: 1,
                              strokeAlign: BorderSide.strokeAlignOutside,
                              color: Colors.white,
                          ),
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
                  child: TextButton(onPressed: (){}, child:  Text(
                        'Continuer',
                        textAlign: TextAlign.center,
                        style: TextStyle( 
                            color: Colors.white,
                            fontSize: 12,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            height: 0,
                        ),
                    ),
                  ),
              )
            )
          
          ],
        ),
      ),
    );
  }
}