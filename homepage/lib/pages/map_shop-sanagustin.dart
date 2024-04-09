import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class MapPageSanAgustin extends StatelessWidget {
  const MapPageSanAgustin({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: const Color.fromARGB(0, 185, 30, 30),
      margin: const EdgeInsets.all(8.0),
      child: SizedBox.expand(
        child: Center(
          child: FlutterMap(
            options: const MapOptions(
              center: LatLng(10.669713229833429, 122.95488127881966),
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
                      
                      const LatLng(10.683613675605114, 122.95707928576641),
                      const LatLng(10.679058167736551, 122.95942052304876),
                      const LatLng(10.680653975645539, 122.96270242996673),
                      const LatLng(10.679058167736551, 122.95942052304876),
                      const LatLng(10.67513056428053, 122.96130725612797),
                      const LatLng(10.674253324934558, 122.9611249486293),
                      const LatLng(10.668201872380614, 122.95845085238678),
                      const LatLng(10.667010483454343, 122.95788226547832),
                      const LatLng(10.66537624637477, 122.95716343346946),
                      const LatLng(10.665418420329598, 122.95718489113509),
                      const LatLng(10.663178985513614, 122.95620614607422),
                      const LatLng(10.66182947386479, 122.95567485844178),
                      const LatLng(10.661654506684878, 122.95529369350058),
                      const LatLng(10.661253831585503, 122.9534268763161),
                      const LatLng(10.661032415141705, 122.95211795832456),
                      const LatLng(10.660716105661173, 122.95078758266301),
                      const LatLng(10.660372975929864, 122.95050963100267),
                      const LatLng(10.660826353267474, 122.94947966274056),
                      const LatLng(10.660995097713105, 122.94951993273875),
                      const LatLng(10.66127977600044, 122.94967550086092),
                      const LatLng(10.666281846947298, 122.95197992352495),
                      const LatLng(10.667832967085348, 122.94823792618563),
                      const LatLng(10.66901463229453, 122.94871966466047),
                      const LatLng(10.670396943688678, 122.94927820011755),
                      const LatLng(10.66979464972255, 122.9504866165885),
                      const LatLng(10.671300609998148, 122.95110111763577),
                      const LatLng(10.670227054924242, 122.95350601681552),
                      const LatLng(10.669295146397621, 122.95575918732415),
                      const LatLng(10.668325958500613, 122.9581413272065),
                      const LatLng(10.668127043231852, 122.95833232926628),
                      
                    ],
                    color: Color.fromARGB(255, 243, 3, 147),
                    strokeWidth: 4,
                  ),
                ],
              ),
            
              const MarkerLayer(
                markers: [
                  Marker(
                    point: LatLng(10.683613675605114, 122.95707928576641),
                    width: 60,
                    height: 60,
                    child: Icon(
                      Icons.flag,
                      color: Color.fromARGB(255, 243, 3, 147),
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