// import 'dart:async';
// import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
// import 'package:geolocator_apple/geolocator_apple.dart';
// import 'package:geolocator_android/geolocator_android.dart';



class Carte_dark extends StatefulWidget {
  const Carte_dark({super.key});

  @override
  State<Carte_dark> createState() => _Carte_darkState();
}
const LatLng currentLocation=LatLng(25.1193, 55.3773);
void GetPostion()async{
  //permision
  LocationPermission permission=await Geolocator.checkPermission();
  if(permission==LocationPermission.denied||permission==LocationPermission.deniedForever){
    print("permission non accorde");
    LocationPermission  demande=await Geolocator.requestPermission();

  }else{
    Position currentPosition=await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.best);
    print("Latitude: "+currentPosition.latitude.toString()+"longitude:"+currentPosition.longitude.toString());
  }
}
class _Carte_darkState extends State<Carte_dark> {
 
Map<String,Marker>_markers={};
late GoogleMapController mapController;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GoogleMap(
          initialCameraPosition: CameraPosition(target: currentLocation,zoom:14,)
          ,onMapCreated: (controller){
            mapController=controller;
            adMarker("test", currentLocation);
          },
          markers: _markers.values.toSet(),
          ),
          
        ),
      );
  }
  adMarker(String id,LatLng location){
    var marker=Marker(markerId: MarkerId(id), position:location);
   
  _markers[id]=marker;
  setState(() {
    
  });
  }
}