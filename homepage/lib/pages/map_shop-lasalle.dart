import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class MapPageLaSalle extends StatelessWidget {
  const MapPageLaSalle({super.key});

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
              zoom: 14.8,
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
                      const LatLng(10.670404721229225, 122.95325749906222),
                      const LatLng(10.668965554790747, 122.95260840448047),
                      const LatLng(10.670409992893333, 122.94927173646566),
                      const LatLng(10.669023538605156, 122.94871653843163),
                      const LatLng(10.670164012627627, 122.94606989135123),
                      const LatLng(10.669194319659605, 122.94533021839835),
                      const LatLng(10.668368998930747, 122.9470016358777),
                      const LatLng(10.668258175180135, 122.94702531820715),
                      const LatLng(10.668258175180135, 122.94702531820715),
                      const LatLng(10.662945577637291, 122.94486877461239),
                      const LatLng(10.660808541725888, 122.94941806533753),
                      const LatLng(10.659258239006373, 122.94866998193729),
                      const LatLng(10.65881090715132, 122.94970553000543),
                      const LatLng(10.659434761157803, 122.95003690396543),
                      const LatLng(10.659359529296722, 122.9501900096636),
                      const LatLng(10.660783859692877, 122.95117797997239),
                      const LatLng(10.66119630514371, 122.95376518174183),
                      const LatLng(10.661713016718117, 122.95565218840574),
                      const LatLng(10.668175548434643, 122.95846437108553),


                      
                      
                    ],
                    color: Color.fromARGB(255, 76, 175, 80),
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
                      color: Color.fromARGB(255, 76, 175, 80),
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