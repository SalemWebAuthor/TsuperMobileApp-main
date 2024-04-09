import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class MapPageMandalagan extends StatelessWidget {
  const MapPageMandalagan({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: const Color.fromARGB(0, 185, 30, 30),
      margin: const EdgeInsets.all(8.0),
      child: SizedBox.expand(
        child: Center(
          child: FlutterMap(
            options: const MapOptions(
              center: LatLng(10.679618530976327, 122.95444759530939),
              zoom: 14,
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
                      const LatLng(10.676476173097344, 122.95321310299812),
                      const LatLng(10.675059700121027, 122.95265170697337),
                      const LatLng(10.66847049672354, 122.94992704513236),
                      const LatLng(10.667384526012128, 122.94941206098751),  
                      const LatLng(10.668757268289909, 122.94611524566851),
                      const LatLng(10.667650211772749, 122.9455680750247),
                      const LatLng(10.666153043222073, 122.94473122581442),
                      const LatLng(10.664782416779634, 122.94401236903875),
                      const LatLng(10.663590980839473, 122.9434651506397),
                      const LatLng(10.661848784725423, 122.94720040881431),
                      const LatLng(10.660996307610342, 122.94907484746186),
                      const LatLng(10.660640459379023, 122.94989828562632),
                      const LatLng(10.660313605821996, 122.95060907101058),
                      const LatLng(10.659538645174962, 122.95026843046546),
                      const LatLng(10.659443751900845, 122.95005921816542),
                      const LatLng(10.658890549720581, 122.94974946603953),
                      const LatLng(10.658178847921432, 122.94940614328742),
                      const LatLng(10.65875486884951, 122.94808979602853),
                      const LatLng(10.659666149844533, 122.94613965951054),
                      const LatLng(10.660713158189346, 122.94397959814006),
                      const LatLng(10.661458669139954, 122.94229753218221),
                      const LatLng(10.662398057128986, 122.94047299511067),
                      const LatLng(10.662755918453726, 122.93981297546617),
                      const LatLng(10.663132417928857, 122.93910743723254),
                      const LatLng(10.663769856576991, 122.93937296237489),
                      const LatLng(10.66450272820886, 122.93978147142786),
                      const LatLng(10.665077349701718, 122.94010870092505),
                      const LatLng(10.666056964940548, 122.94082701162462),
                      const LatLng(10.665740660684918, 122.94171750501894),
                      const LatLng(10.665398042517815, 122.94260800364691),
                      const LatLng(10.666054624295562, 122.94309881939226),
                      const LatLng(10.666774350340225, 122.94359660197999),
                      const LatLng(10.667350307219486, 122.94399674803111),
                      const LatLng(10.668088346064815, 122.94447418122965),
                      const LatLng(10.66810662288333, 122.9444972712115),
                      const LatLng(10.669014218934988, 122.94248897665562),
                      const LatLng(10.669459770503146, 122.9415555545969),
                      const LatLng(10.671534376237389, 122.94288176502891),
                      const LatLng(10.670174766020882, 122.94608546118764), 
                      const LatLng(10.669630098973542, 122.94741859516822), 
                      const LatLng(10.67113112145381, 122.9481634538558),
                      const LatLng(10.672122175066576, 122.94862483045658),
                      const LatLng(10.673550343481002, 122.94916795006547),
                      const LatLng(10.675728009423004, 122.95023350064244),
                      const LatLng(10.67660308836329, 122.95057682341188),
                      const LatLng(10.677161872363625, 122.95136002846026),
                      const LatLng(10.676661556804124, 122.95327518477872),
                      const LatLng(10.683510613445627, 122.95607408967865),
                      const LatLng(10.684026110401469, 122.95631668286129),
                      const LatLng(10.698888317158781, 122.96216800435687),
                      const LatLng(10.706166243204855, 122.96234776289091),
                      

                      
                      
                    ],
                    color: Color.fromARGB(255, 114, 4, 173),
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
                      color: Color.fromARGB(255, 114, 4, 173),
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