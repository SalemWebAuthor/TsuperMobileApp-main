import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class MapPageNorthbound extends StatelessWidget {
  const MapPageNorthbound({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: const Color.fromARGB(0, 185, 30, 30),
      margin: const EdgeInsets.all(8.0),
      child: SizedBox.expand(
        child: Center(
          child: FlutterMap(
            options: const MapOptions(
              center: LatLng(10.68295913826826, 122.9618149538474),
              zoom: 14.4,
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
                      
                      const LatLng(10.706368064294503, 122.96301706594221),
                      const LatLng(10.705871635713995, 122.96230434063477),
                      const LatLng(10.699226644819577, 122.96219070148233),

                      const LatLng(10.698065357459287, 122.96192810339505),
                      const LatLng(10.697513306719701, 122.96178416726146),
                      const LatLng(10.684044502851963, 122.956334332309),
                      const LatLng(10.683662544058826, 122.9569609577795),
                      const LatLng(10.683353401260405, 122.95718858591663),
                      const LatLng(10.675610445019233, 122.96105365872971),
                      const LatLng(10.675238276326473, 122.96115907661591),
                      const LatLng(10.674720308842314, 122.9611629809818),
                      const LatLng(10.66824197686245, 122.95839559044023),
                      const LatLng(10.665340063654153, 122.96515389420699),
                      const LatLng(10.666347254290557, 122.96556443911513),
                      const LatLng(10.670627896627355, 122.96375820591037),
                      const LatLng(10.67276351413886, 122.96265272311452),
                      const LatLng(10.673566574219787, 122.96218062568579),
                      const LatLng(10.673406504982818, 122.96071187814732),


                      
                      
                    ],
                    color: Color.fromARGB(255, 3, 119, 243),
                    strokeWidth: 4,
                  ),
                ],
              ),
            
              const MarkerLayer(
                markers: [
                  Marker(
                    point: LatLng(10.706368064294503, 122.96301706594221),
                    width: 60,
                    height: 60,
                    child: Icon(
                      Icons.flag,
                      color: Color.fromARGB(255, 3, 119, 243),
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