import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class LocationPage extends StatelessWidget {
  @override

  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 246, 143, 1),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[

            SizedBox(height: 20),
            // Current Location
            SizedBox(
              height: 50,
              child: InkWell(
                onTap: () {
                  _editLocation(context, 'Current Location');
                },
                child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.location_on, color: Colors.black), // People icon
                      SizedBox(width: 10),
                      Text(
                        'Current Location',
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),

            // Destination
            SizedBox(
              height: 50,
              child: InkWell(
                onTap: () {
                  _editLocation(context, 'Destination');
                },
                child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.flag, color: Colors.black), // Location icon
                      SizedBox(width: 10),
                      Text(
                        'Destination',
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),

            // Map
            SizedBox(
              width: 450,
              height: 400,
          child: Center(
          child: FlutterMap(
            options: const MapOptions(
              center: LatLng(10.681775049486815, 122.9551458178681),
              zoom: 16,
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
              const MarkerLayer(
                markers: [
                  Marker(
                    point: LatLng(10.681775049486815, 122.9551458178681),
                    width: 100,
                    height: 100,
                    child: Icon(
                      Icons.location_pin,
                      color: Color.fromARGB(253, 255, 11, 11)),
                  ),
                  Marker(
                    point: LatLng(10.67662951282596, 122.9506512457331),
                    width: 100,
                    height: 100,
                    child: Icon(
                      Icons.flag_circle,
                      color: Color.fromARGB(251, 19, 123, 5)),
                  ),
                  Marker(
                    point: LatLng(10.6910026233969, 122.95912770278477),
                    width: 100,
                    height: 100,
                    child: Icon(
                      Icons.directions_bus,
                      color: Color.fromARGB(250, 89, 2, 156)),
                  ),
                  
                ],
              ),
              PolylineLayer(
                polylines: [
                  Polyline(
                    points: [

                      const LatLng(10.67662951282596, 122.9506512457331),
                      const LatLng(10.67734319742208, 122.95095347736554),
                      const LatLng(10.676461351212252, 122.9531971718452),
                      const LatLng(10.679324280697331, 122.95429012573743),
                      const LatLng(10.683510613445627, 122.95607408967865),
                      const LatLng(10.684026110401469, 122.95631668286129),
                      const LatLng(10.698888317158781, 122.96216800435687),
                      const LatLng(10.706166243204855, 122.96234776289091),               
                      
                    ],
                    color: Color.fromARGB(255, 3, 119, 243),
                    strokeWidth: 4,
                  ),
                  Polyline(
                    points: [

                      const LatLng(10.6910026233969, 122.95912770278477),
                      const LatLng(10.67645647718791, 122.95320963007156),
                      const LatLng(10.677352143087553, 122.9509646170806),
                      const LatLng(10.67662951282596, 122.9506512457331),
                                   
                      
                    ],
                    color: Color.fromARGB(250, 89, 2, 156),
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
                      Icons.directions_bus,
                      color: Color.fromARGB(255, 3, 119, 243),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      SizedBox(height: 10),
      SizedBox(
        child: Column(              
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'Buses en Route',
                    style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                          ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(3),
                  child: Center(
                    child: Row(
                      children: [
                        Text(
                          '       CHK 1765 \n    Bata - Libertad \n ETA: 5 - 10 Minutes',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 14,
                          ),
                        ),

                      SizedBox(width: 32),  

                        Text(
                          '           JSY 2241 \n Mandalagan - Libertad \n     ETA: 3 - 5 Minutes',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
      ),

      SizedBox(height: 10),

            // Back to Home button
            // SizedBox(
            //   width: double.infinity,
            //   child: ElevatedButton(
            //     onPressed: () {
            //       Navigator.pop(context);
            //     },
            //     style: ElevatedButton.styleFrom(
            //       backgroundColor: Color.fromARGB(255, 255, 251, 1).withOpacity(0.7), // Matte yellow background
            //       padding: EdgeInsets.symmetric(vertical: 15),
            //       shape: RoundedRectangleBorder(
            //         borderRadius: BorderRadius.circular(10),
            //       ),
            //     ),
            //     child: Text(
            //       'Back to Home',
            //       style: TextStyle(
            //         fontSize: 18,
            //         color: Colors.black,
            //         fontWeight: FontWeight.bold,
            //       ),   
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }

  // Function to handle editing the location
  void _editLocation(BuildContext context, String location) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Edit $location'),
          content: TextFormField(
            initialValue: location,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Save'),
            ),
          ],
        );
      },
    );
  }
}



