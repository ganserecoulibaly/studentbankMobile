import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map_location_marker/flutter_map_location_marker.dart';
import 'package:geolocator/geolocator.dart';
import 'package:latlong2/latlong.dart';
import 'package:studentbankmobile/Logement/light/Accueil_loyer.dart';
import 'package:url_launcher/url_launcher.dart';

// import 'package:geolocator/geolocator.dart';

/// Determine the current position of the device.
///
/// When the location services are not enabled or permissions
/// are denied the `Future` will return an error.
Future<Position> _determinePosition() async {
  bool serviceEnabled;
  LocationPermission permission;

  // Test if location services are enabled.
  serviceEnabled = await Geolocator.isLocationServiceEnabled();
  if (!serviceEnabled) {
    // Location services are not enabled don't continue
    // accessing the position and request users of the 
    // App to enable the location services.
    return Future.error('le service de localisation est desactivé.');
  }

  permission = await Geolocator.checkPermission();
  if (permission == LocationPermission.denied) {
    permission = await Geolocator.requestPermission();
    if (permission == LocationPermission.denied) {
      // Permissions are denied, next time you could try
      // requesting permissions again (this is also where
      // Android's shouldShowRequestPermissionRationale 
      // returned true. According to Android guidelines
      // your App should show an explanatory UI now.
      return Future.error("la localisation n'est pas permise");
    }
  }
  
  if (permission == LocationPermission.deniedForever) {
    // Permissions are denied forever, handle appropriately. 
    return Future.error(
      'Location permissions are permanently denied, we cannot request permissions.');
  } 

  // When we reach here, permissions are granted and we can
  // continue accessing the position of the device.
  return await Geolocator.getCurrentPosition();
}
void getCurrentPositiion()async{
  Position currentposition=await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.best);
  print("Latitude:  "+currentposition.latitude.toString());
  print("Longitude:  "+currentposition.longitude.toString());
}
class mymap extends StatefulWidget {
  const mymap({super.key});

  @override
  State<mymap> createState() => _mymapState();
}

class _mymapState extends State<mymap> {
 
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
      _determinePosition();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _determinePosition();
  }
  @override
  Widget build(BuildContext context) {
    _determinePosition();
    double add_remove=0;
    return Scaffold(

      body: FlutterMap(
        options: const MapOptions(
        // initialCenter: ,
        center: LatLng(14.7645042, -17.3660286),
          zoom:8,
          maxZoom: 19,
      ),
        children: [
          TileLayer(
            urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
            maxZoom: 19,
          ),
          CurrentLocationLayer(), // <-- add layer here
        ],
      ),
      bottomNavigationBar: Container(
        height: 70,
        decoration: const BoxDecoration(
          color: Colors.black,
        ),
        child: SingleChildScrollView(
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
              Container(
                child: IconButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>AccueilLoyer()));
                }, icon: Icon(Icons.home),
              ),
            )
          ]
         ),
       ),
     )
   );
  }
  
}
Widget build() {
  return CurrentLocationLayer(
    followOnLocationUpdate: FollowOnLocationUpdate.always,
    turnOnHeadingUpdate: TurnOnHeadingUpdate.never,
   positionStream: const LocationMarkerDataStreamFactory()
                .fromGeolocatorPositionStream(
              stream: Geolocator.getPositionStream(
                locationSettings: const LocationSettings(
                  accuracy: LocationAccuracy.best,
                  // distanceFilter: 50,
                  timeLimit: Duration(minutes: 1),
                ),
              ),
            ),
    style: LocationMarkerStyle(
      marker: const DefaultLocationMarker(
        child: Icon(
          Icons.navigation,
          color: Colors.black,
        ),
      ),
      markerSize: const Size(40, 40),
      markerDirection: MarkerDirection.heading,
    ),
    indicators: LocationMarkerIndicators(
      serviceDisabled: Align(
        alignment: Alignment.topCenter,
        child: SizedBox(
          width: double.infinity,
          child: ColoredBox(
            color: Colors.white.withAlpha(0x80),
            child: const Padding(
              padding: EdgeInsets.all(4.0),
              child: Text(
                "Please turn on location service.",
                textAlign: TextAlign.center,
                style: TextStyle(height: 1.2),
              ),
            ),
          ),
        ),
      ),
    ),
  );
}


