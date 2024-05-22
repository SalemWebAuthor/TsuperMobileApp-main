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
                      const LatLng(10.674537756360126, 122.96125791453301),
                      const LatLng(10.675278042978748, 122.96128498005264),
                      const LatLng(10.675863178421993, 122.96109552141692),
                      const LatLng(10.683647417490667, 122.95715982383317),
                      const LatLng(10.684096560989094, 122.95635117402529),


                      
                      
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

                  Marker(
                    point: LatLng(10.703636, 122.962145),
                    width: 60,
                    height: 60,

                    child: Icon(
                      Icons.arrow_downward,
                      color: Color.fromARGB(255, 243, 55, 3),
                    ),
                  ),

                  Marker(
                    point: LatLng(10.700520, 122.962160),
                    width: 60,
                    height: 60,

                    child: Icon(
                      Icons.arrow_downward,
                      color: Color.fromARGB(255, 243, 55, 3),
                    ),
                  ),

                  Marker(
                    point: LatLng(10.697955, 122.961857),
                    width: 60,
                    height: 60,

                    child: Icon(
                      Icons.arrow_downward,
                      color: Color.fromARGB(255, 243, 55, 3),
                    ),
                  ),

                  Marker(
                    point: LatLng(10.694436898018079, 122.96043072865612),
                    width: 60,
                    height: 60,

                    child: Icon(
                      Icons.arrow_downward,
                      color: Color.fromARGB(255, 243, 55, 3),
                    ),
                  ),

                  Marker(
                    point: LatLng(10.690977914805137, 122.95906517076466),
                    width: 60,
                    height: 60,

                    child: Icon(
                      Icons.arrow_downward,
                      color: Color.fromARGB(255, 243, 55, 3),
                    ),
                  ),

                  Marker(
                    point: LatLng(10.687101421351624, 122.95748719275338),
                    width: 60,
                    height: 60,

                    child: Icon(
                      Icons.arrow_downward,
                      color: Color.fromARGB(255, 243, 55, 3),
                    ),
                  ),

                  Marker(
                    point: LatLng(10.684924599453316, 122.95663751228595),
                    width: 60,
                    height: 60,

                    child: Icon(
                      Icons.arrow_downward,
                      color: Color.fromARGB(255, 243, 55, 3),
                    ),
                  ),

                  Marker(
                    point: LatLng(10.682867041150688, 122.95745684702166),
                    width: 60,
                    height: 60,

                    child: Icon(
                      Icons.south_east_outlined,
                      color: Color.fromARGB(255, 243, 55, 3),
                    ),
                  ),

                  Marker(
                    point: LatLng(10.680362168682427, 122.95870102198437),
                    width: 60,
                    height: 60,

                    child: Icon(
                      Icons.south_east,
                      color: Color.fromARGB(255, 243, 55, 3),
                    ),
                  ),

                  Marker(
                    point: LatLng(10.677260869469292, 122.96018796280134),
                    width: 60,
                    height: 60,

                    child: Icon(
                      Icons.south_east,
                      color: Color.fromARGB(255, 243, 55, 3),
                    ),
                  ),

                  Marker(
                    point: LatLng(10.674934874274232, 122.96112868046211),
                    width: 60,
                    height: 60,

                    child: Icon(
                      Icons.arrow_downward,
                      color: Color.fromARGB(255, 243, 55, 3),
                    ),
                  ),

                  Marker(
                    point: LatLng(10.673712228567744, 122.96076453168492),
                    width: 60,
                    height: 60,

                    child: Icon(
                      Icons.arrow_downward,
                      color: Color.fromARGB(255, 243, 55, 3),
                    ),
                  ),

                  Marker(
                    point: LatLng(10.671624773463527, 122.95988450548526),
                    width: 60,
                    height: 60,

                    child: Icon(
                      Icons.arrow_downward,
                      color: Color.fromARGB(255, 243, 55, 3),
                    ),
                  ),

                  Marker(
                    point: LatLng(10.669447840731985, 122.95867067624434),
                    width: 60,
                    height: 60,

                    child: Icon(
                      Icons.arrow_downward,
                      color: Color.fromARGB(255, 243, 55, 3),
                    ),
                  ),

                  Marker(
                    point: LatLng(10.667748033107333, 122.9592472451338),
                    width: 60,
                    height: 60,

                    child: Icon(
                      Icons.arrow_forward,
                      color: Color.fromARGB(255, 243, 55, 3),
                    ),
                  ),

                  Marker(
                    point: LatLng(10.666585001364515, 122.96200870665685),
                    width: 60,
                    height: 60,

                    child: Icon(
                      Icons.arrow_forward,
                      color: Color.fromARGB(255, 243, 55, 3),
                    ),
                  ),

                  Marker(
                    point: LatLng(10.665600894069687, 122.96431498221222),
                    width: 60,
                    height: 60,

                    child: Icon(
                      Icons.arrow_forward,
                      color: Color.fromARGB(255, 243, 55, 3),
                    ),
                  ),

                  Marker(
                    point: LatLng(10.665919885286423, 122.96541079425148),
                    width: 60,
                    height: 60,

                    child: Icon(
                      Icons.arrow_upward,
                      color: Color.fromARGB(255, 243, 55, 3),
                    ),
                  ),

                  Marker(
                    point: LatLng(10.667279990442006, 122.9651962175296),
                    width: 60,
                    height: 60,

                    child: Icon(
                      Icons.north_west,
                      color: Color.fromARGB(255, 243, 55, 3),
                    ),
                  ),

                  Marker(
                    point: LatLng(10.668997091217674, 122.96446116111699),
                    width: 60,
                    height: 60,

                    child: Icon(
                      Icons.north_west,
                      color: Color.fromARGB(255, 243, 55, 3),
                    ),
                  ),

                  Marker(
                    point: LatLng(10.670764979035114, 122.9636701150075),
                    width: 60,
                    height: 60,

                    child: Icon(
                      Icons.north_west,
                      color: Color.fromARGB(255, 243, 55, 3),
                    ),
                  ),

                  Marker(
                    point: LatLng(10.672645699529618, 122.9627514808205),
                    width: 60,
                    height: 60,

                    child: Icon(
                      Icons.north_west,
                      color: Color.fromARGB(255, 243, 55, 3),
                    ),
                  ),

                  Marker(
                    point: LatLng(10.673491604766175, 122.96152330145843),
                    width: 60,
                    height: 60,

                    child: Icon(
                      Icons.arrow_back,
                      color: Color.fromARGB(255, 243, 55, 3),
                    ),
                  ),

                  Marker(
                    point: LatLng(10.674062874940814, 122.96113555877369),
                    width: 60,
                    height: 60,

                    child: Icon(
                      Icons.arrow_upward,
                      color: Color.fromARGB(255, 243, 55, 3),
                    ),
                  ),

                  Marker(
                    point: LatLng(10.676393770995064, 122.96083194103566),
                    width: 60,
                    height: 60,

                    child: Icon(
                      Icons.north_west,
                      color: Color.fromARGB(255, 243, 55, 3),
                    ),
                  ),

                  Marker(
                    point: LatLng(10.67882043936961, 122.95963221481101),
                    width: 60,
                    height: 60,

                    child: Icon(
                      Icons.north_west,
                      color: Color.fromARGB(255, 243, 55, 3),
                    ),
                  ),

                  Marker(
                    point: LatLng(10.681123645917399, 122.9585045341841),
                    width: 60,
                    height: 60,

                    child: Icon(
                      Icons.north_west,
                      color: Color.fromARGB(255, 243, 55, 3),
                    ),
                  ),

                  Marker(
                    point: LatLng(10.68361514523497, 122.95714836924384),
                    width: 60,
                    height: 60,

                    child: Icon(
                      Icons.north_west,
                      color: Color.fromARGB(255, 243, 55, 3),
                    ),
                  ),

                  Marker(
                    point: LatLng(10.68554169759364, 122.9569788486262),
                    width: 60,
                    height: 60,

                    child: Icon(
                      Icons.arrow_upward,
                      color: Color.fromARGB(255, 243, 55, 3),
                    ),
                  ),

                  Marker(
                    point: LatLng(10.687175897167274, 122.9576529839638),
                    width: 60,
                    height: 60,

                    child: Icon(
                      Icons.arrow_upward,
                      color: Color.fromARGB(255, 243, 55, 3),
                    ),
                  ),

                  Marker(
                    point: LatLng(10.689465110934943, 122.958585878870314),
                    width: 60,
                    height: 60,

                    child: Icon(
                      Icons.arrow_upward,
                      color: Color.fromARGB(255, 243, 55, 3),
                    ),
                  ),

                  Marker(
                    point: LatLng(10.69402635528157, 122.96041816476337),
                    width: 60,
                    height: 60,

                    child: Icon(
                      Icons.arrow_upward,
                      color: Color.fromARGB(255, 243, 55, 3),
                    ),
                  ),

                  Marker(
                    point: LatLng(110.698154525124501, 122.96201755493206),
                    width: 60,
                    height: 60,

                    child: Icon(
                      Icons.arrow_upward,
                      color: Color.fromARGB(255, 243, 55, 3),
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