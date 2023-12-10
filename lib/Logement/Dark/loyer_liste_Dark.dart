import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

import 'LoyerInfo_dark.dart';

class Loyerlist_dark extends StatelessWidget {
  const Loyerlist_dark({super.key});
  @override
  Widget build(BuildContext context) {
  int index=0;
  var pNames=[
    "img (2)",
    "img (2)",
    "img (5)",
    "img (6)",
  ];
  
   List<String> ville=[
    "Lile",
    "Paris",
    "Nice",
    "Marseille",
  ];
    return Scaffold(
      
      // backgroundColor: Colors.white,
      appBar: PreferredSize(preferredSize: Size.fromHeight(250), child:  Container(
                decoration: BoxDecoration(
                  boxShadow: [
                      BoxShadow(color: Colors.white,blurRadius: 3.0,spreadRadius: 4.2),
              ],
                  image: DecorationImage(image: AssetImage('images/maisonNight.jpg'),fit: BoxFit.cover),
                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(30),bottomLeft: Radius.circular(30))
                ),
                child: Container(
                       child: 
                      Center(
                        child: 
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                        SizedBox(height: 10,),
                         Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text("LOCATIONS",style: TextStyle(color:Colors.white,fontSize: 20,fontWeight: FontWeight.bold)),
                      
                      ),
                      Align(
                      alignment: Alignment.centerRight,
                        child: IconButton(onPressed: (){},icon: Icon(Icons.menu),color: Colors.white,),
                        ),
                        ],
                        
                      ),
                       Align(
                      alignment: Alignment.centerRight,
                        child: IconButton(onPressed: (){},icon: Icon(Icons.favorite_border),color: Colors.white,),
                        ),
                        Text("lorem ghdfshgvhsgsvss\nfhvsgvbfsfj\bnfbssbvfsvsvhn",style: TextStyle(color:Colors.white,fontSize: 13,fontWeight: FontWeight.normal),),
                        SizedBox(height: 10,),
                        ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.white),onPressed: (){}, child: Text("voir plus",style: TextStyle(color: Colors.black),))
                       ,Container(
                          width: 250,
                          decoration: BoxDecoration(
                            color: Colors.white70,
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(30)
                            ),
                          child: IconButton(onPressed: (){
                            showSearch(
                              context: context,
                              delegate: CustomSearchDelegate()
                              );
                          }, icon: Icon(Icons.search)),
                        ),
                      ],),
                      
                      ),
                    
                    ),
                  ),
         ),
      body: Container(
         margin: EdgeInsets.all(0),
        padding: EdgeInsets.all(0),
        decoration: BoxDecoration(
          color: Colors.grey.shade900,
          image: DecorationImage(image: AssetImage('images/Logo N.png'),fit: BoxFit.contain)
        ),
        child: ListView(
          
        children:[ 
           Container(
            child: Container(
             
              width: MediaQuery.of(context).size.width,
              child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // SizedBox(height: 20),
               
                for(int i=0;i<4;i++)
                Container(
                    decoration: BoxDecoration(
                               boxShadow:[
                                BoxShadow(color: Colors.black,blurRadius: 5,blurStyle: BlurStyle.outer),
                                // BoxShadow(blurRadius: 0.1,color: Colors.black,spreadRadius: 0.3),
                                // BoxShadow(blurRadius: 0.1,color: Colors.black,spreadRadius: 0.3),
                                // BoxShadow(blurRadius: 0.1,color: Colors.black,spreadRadius: 0.3),
                                ],
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30),
                  ),
                  margin: EdgeInsets.only(left: 20,right: 20,top: 12),
                  // padding: EdgeInsets.only(right: 10),
                  height: 120,
                  width: MediaQuery.of(context).size.width,
                  // width: 200,
                  
                  child: Row(
                    children: [
                          Container(
                            height: 100,
                            width: MediaQuery.of(context).size.width/2,
                            margin: EdgeInsets.only(left: 5,bottom: 2),
                            padding: EdgeInsets.only(right:10),
                            decoration: BoxDecoration(
                              // border: Border.all(color:Colors.black54),
                               boxShadow:[
                                BoxShadow(blurRadius: 5,color: Colors.white),
                                BoxShadow(blurRadius: 5,color: Colors.white),],
                              // color: Color.fromARGB(255, 235, 236, 236),
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(image: AssetImage("images/${pNames[i]}.jpg",),fit: BoxFit.cover)
                            ),
                            child: GestureDetector(
                              onTap: (){
                                 Navigator.push(context, MaterialPageRoute(builder: (context)=>loyerinfo_dark(index: i)));
                              },
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                             
                              color: Colors.white,borderRadius: BorderRadius.circular(8)),
                            // height: 60,
                            width: MediaQuery.of(context).size.width/2.6,
                            child: Padding(
                              padding: EdgeInsets.only(left: 35,bottom: 10,top: 5,),
                              child: Column(
                              
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Icon(Icons.money,size: 20,
                                      ),
                                    
                                      SizedBox(width: 5,),
                                      Text("450",style: TextStyle(
                                        color: Colors.black54,
                                        fontWeight: FontWeight.bold
                                      ),
                                      ),
                                      Icon(Icons.euro,size: 20,),
                                        Text("/mois",style: TextStyle(
                                        color: Colors.black54,
                                        fontWeight: FontWeight.bold
                                      ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Icon(CupertinoIcons.rectangle_fill_on_rectangle_fill,size: 20,
                                      ),
                                    
                                      SizedBox(width: 5),
                                      Text("2 place",style: TextStyle(
                                        color: Colors.black54,
                                        fontWeight: FontWeight.bold
                                      ),
                                      ),
                                      // Icon(Icons.euro)
                                      
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.screenshot_monitor_sharp,size:20
                                      ),
                                    
                                      SizedBox(width: 5),
                                      Text("45 m2",style: TextStyle(
                                        color: Colors.black54,
                                        fontWeight: FontWeight.bold
                                      ),
                                      ),
                                      // Icon(Icons.euro)
                                      
                                    ],
                                  ),
                                 Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Icon(CupertinoIcons.placemark,size: 20,
                                      ),
                                    
                                      SizedBox(width: 5),
                                      Text(ville[i],style: TextStyle(
                                        color: Colors.black54,
                                        fontWeight: FontWeight.bold,
                                      ),
          
                                      ),
                                      Icon(Icons.favorite_border,size:20),
          
                                    ],
                                  ),
                                ],
                              ),
                              ),
                          ),
                    ],
                  ),
                ),

               
              ]
              ),
            )
          ),
         
              ]
              ),
            )
          );
  }
}

class CustomSearchDelegate extends SearchDelegate {
  List<String> searchTerms=[
    "Lile",
    "Paris",
    "Nice",
    "Marseille",
    "Toulouse",
  ];
   var pNames=[
    "img (2)",
    "img (2)",
    "img (5)",
    "img (6)",
  ];
   List<String> ville=[
    "Lile",
    "Paris",
    "Nice",
    "Marseille",
  ];
  @override
  List<Widget>? buildActions(BuildContext context) {
    // TODO: implement buildActions
    return[
      IconButton(onPressed: (){
        query="";
      },
      icon: Icon(Icons.clear))
      ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    // TODO: implement buildLeading
    return IconButton(
      onPressed: (){
        close(context, null);
      }, 
      icon: Icon(Icons.arrow_back)
      );
  }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    List<String> matchQuery=[];
    for (var val in searchTerms){
      if(val.toLowerCase().contains(query.toLowerCase())){
        matchQuery.add(val);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context,index){
        var result =matchQuery[index];
        for(int i=0;i<4;i++){
          if(result==ville[i]){
            return  Container(
                    decoration: BoxDecoration(
                               boxShadow:[
                                BoxShadow(color: Colors.black,blurRadius: 5,blurStyle: BlurStyle.outer),
                                ],
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30),
                  ),
                  margin: EdgeInsets.only(left: 20,right: 20,top: 12),
                  // padding: EdgeInsets.only(right: 10),
                  height: 120,
                  width: MediaQuery.of(context).size.width,
                  // width: 200,
                  
                  child: Row(
                    children: [
                          Container(
                            height: 100,
                            width: MediaQuery.of(context).size.width/2,
                            margin: EdgeInsets.only(left: 5,bottom: 2),
                            padding: EdgeInsets.only(right:10),
                            decoration: BoxDecoration(
                              // border: Border.all(color:Colors.black54),
                               boxShadow:[
                                BoxShadow(blurRadius: 5,color: Colors.white),
                                BoxShadow(blurRadius: 5,color: Colors.white),],
                              // color: Color.fromARGB(255, 235, 236, 236),
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(image: AssetImage("images/${pNames[i]}.jpg",),fit: BoxFit.cover)
                            ),
                            child: GestureDetector(
                              onTap: (){
                                 Navigator.push(context, MaterialPageRoute(builder: (context)=>loyerinfo_dark(index: i)));
                              },
                            ),

                            // child:GestureDetector(
                            //     // child: Image.asset(scale:10,
                            //     //   "images/${pNames[i]}.jpg",
                            //       // fit:BoxFit.cover,
                                  
                            //   ),
                            //   onTap: (){
                            //     Navigator.push(context, MaterialPageRoute(builder: (context)=>loyerinfo(index: i)));
                            //   },
                            // ) 
                          ),
                          Container(
                            decoration: BoxDecoration(
                             
                              color: Colors.white,borderRadius: BorderRadius.circular(8)),
                            // height: 60,
                            width: MediaQuery.of(context).size.width/2.6,
                            child: Padding(
                              padding: EdgeInsets.only(left: 35,bottom: 10,top: 5,),
                              child: Column(
                              
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Icon(Icons.money,size: 20,
                                      ),
                                    
                                      SizedBox(width: 5,),
                                      Text("450",style: TextStyle(
                                        color: Colors.black54,
                                        fontWeight: FontWeight.bold
                                      ),
                                      ),
                                      Icon(Icons.euro,size: 20,),
                                        Text("/mois",style: TextStyle(
                                        color: Colors.black54,
                                        fontWeight: FontWeight.bold
                                      ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Icon(CupertinoIcons.rectangle_fill_on_rectangle_fill,size: 20,
                                      ),
                                    
                                      SizedBox(width: 5),
                                      Text("2 place",style: TextStyle(
                                        color: Colors.black54,
                                        fontWeight: FontWeight.bold
                                      ),
                                      ),
                                      // Icon(Icons.euro)
                                      
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.screenshot_monitor_sharp,size:20
                                      ),
                                    
                                      SizedBox(width: 5),
                                      Text("45 m2",style: TextStyle(
                                        color: Colors.black54,
                                        fontWeight: FontWeight.bold
                                      ),
                                      ),
                                      // Icon(Icons.euro)
                                      
                                    ],
                                  ),
                                 Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Icon(CupertinoIcons.placemark,size: 20,
                                      ),
                                    
                                      SizedBox(width: 5),
                                      Text(ville[i],style: TextStyle(
                                        color: Colors.black54,
                                        fontWeight: FontWeight.bold
                                      ),
          
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(left: 33,top: 20),
                                        child: 
                                      Icon(Icons.favorite_border,size:20)
                                      ),
          
                                    ],
                                  ),
                                ],
                              ),
                              ),
                          ),
                    ],
                  ),
                ); 
          }
        }
        return Container();
      },
    );  
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // TODO: implement buildSuggestions
    List<String>matchQuery=[];
    for (var val in searchTerms){
      if(val.toLowerCase().contains(query.toLowerCase())){
        matchQuery.add(val);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context,index){
        var result =matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
    );  
  }

}