import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class MapPageBataLibertad extends StatelessWidget {
  const MapPageBataLibertad({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: const Color.fromARGB(0, 185, 30, 30),
      margin: const EdgeInsets.all(8.0),
      child: SizedBox.expand(
        child: Center(
          child: FlutterMap(
            options: const MapOptions(
              center: LatLng(10.687853, 122.958438),
              zoom: 14.3,
            ),
            children: [
              TileLayer(
                urlTemplate:
                    'https://tile-{s}.openstreetmap.fr/hot/{z}/{x}/{y}.png',
                //urlTemplate:
                //    'https://{s}.basemaps.cartocdn.com/dark_all/{z}/{x}/{y}.png',
                // urlTemplate:
                //  'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
                subdomains: const [
                  'a',
                  'b',
                  'c'
                ], // Subdomains for load balancing
                userAgentPackageName: 'com.example.app',
              ),
              
              PolylineLayer(
                polylines: [
                  Polyline(
                    points: [
                      const LatLng(10.677602717474212, 122.96014727688409),
                      const LatLng(10.675930889048999, 122.95939790309284),
                      const LatLng(10.67422761858292, 122.95837890579675),
                      const LatLng(10.674097912501548, 122.9595753311552),
                      const LatLng(10.674155, 122.961091),
                      const LatLng(10.675039, 122.961242),
                      const LatLng(10.675847, 122.961027),
                      const LatLng(10.683639, 122.957072),
                      const LatLng(10.684026110401469, 122.95631668286129),
                      const LatLng(10.698888317158781, 122.96216800435687),
                      
                      const LatLng(10.706166243204855, 122.96234776289091),
                      
                    ],
                    color: Colors.red,
                    strokeWidth: 4,
                  ),
                ],
              ),
            
              const MarkerLayer(
                markers: [
                  Marker(
                    point: LatLng(10.706537828795698, 122.96315146962495),
                    width: 60,
                    height: 60,
                    child: Icon(
                      Icons.flag,
                      color: Color.fromARGB(255, 224, 34, 34),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}