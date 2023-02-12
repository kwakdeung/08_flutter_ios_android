import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'dart:async';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(        
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Google Map 2'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> { 

  Completer<GoogleMapController> _controller = Completer();

  LatLng _myLoc = LatLng(37.57979551550774, 126.97706246296076);
  List<Marker> _markers = [];
  List<Polyline> _polylines = [];

  List<Palace> palaces = [
    Palace("경복궁", LatLng(37.57979551550774, 126.97706246296076)),
    Palace("경희궁", LatLng(37.57136511434671, 126.96815224932355)),
    Palace("덕수궁", LatLng(37.565868063366096, 126.97515644898421)),
    Palace("창덕궁", LatLng(37.57968911285638, 126.99111100341483)),
    Palace("창경궁", LatLng(37.578932311976125, 126.99489126244981)),
  ];

  List<double> hue = [
    // BitmapDescriptor.hueAzure,
    BitmapDescriptor.hueBlue,
    BitmapDescriptor.hueCyan,
    BitmapDescriptor.hueGreen,
    BitmapDescriptor.hueMagenta,
    // BitmapDescriptor.hueOrange,
    BitmapDescriptor.hueRed,
    // BitmapDescriptor.hueRose,
    // BitmapDescriptor.hueViolet,
    // BitmapDescriptor.hueYellow
  ];

  void makeMarkerData() {
    int i = 0;
    for (Palace palace in palaces) {
      final marker = Marker(
        markerId: MarkerId(palace.name),
        icon: BitmapDescriptor.defaultMarkerWithHue(hue[i]),
        position: palace.position,
        infoWindow: InfoWindow(
          title: palace.name,
          // snippet: "",
          onTap: () {
            print('onTap : ${palace.name}');
          }
        ),
      );
      _markers.add(marker);
      i++;
    }
  }

  void makePolyline() {
    List<LatLng> coordinates = [];
    for (int i=0; i<palaces.length; i++) {
      coordinates.add(LatLng(palaces[i].position.latitude,
                             palaces[i].position.longitude));
    }

    Polyline polyline = Polyline(
        polylineId: PolylineId("poly"),
        patterns: [PatternItem.dash(10), PatternItem.gap(10)],
        color: Colors.red,
        width: 3,
        points: coordinates);

    _polylines.add(polyline);
    setState(() {});
    
  }

  @override
  void initState() {
    super.initState();
    makeMarkerData();
    makePolyline();
  }

  @override
  Widget build(BuildContext context) {    
    return Scaffold(
      appBar: AppBar(        
        title: Text(widget.title),
      ),
      body: Column(          
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 400,
            // width: 400,  
            child: GoogleMap(
              mapType: MapType.normal,
              initialCameraPosition: CameraPosition(target: _myLoc, zoom: 14.0,),
              onMapCreated: (GoogleMapController controller) {
                _controller.complete(controller);
              },
              markers: Set.from(_markers),
              polylines: Set.from(_polylines),
            ),
          ),                     
        ],
      ),      
    );
  }
  
}

class Palace {
  late final String name;
  late final LatLng position;

  Palace(this.name, this.position);
}
