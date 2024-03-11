import 'package:flutter/material.dart';

class LocationPage extends StatelessWidget {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Jeeps In Route'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      backgroundColor: Color.fromRGBO(255, 246, 143, 1),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            // Current Location
            SizedBox(
              height: 60,
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
                      Icon(Icons.person, color: Colors.black), // People icon
                      SizedBox(width: 10),
                      Text(
                        'Current Location',
                        style: TextStyle(fontSize: 24, color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),

            // Destination
            SizedBox(
              height: 80,
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
                      Icon(Icons.location_on, color: Colors.black), // Location icon
                      SizedBox(width: 10),
                      Text(
                        'Destination',
                        style: TextStyle(fontSize: 24, color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),

            // Image
            Image(
              image: AssetImage('meps.png'),
              width: 450,
              height: 450,
            ),
            SizedBox(height: 20),

            // Back to Home button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 255, 251, 1).withOpacity(0.7), // Matte yellow background
                  padding: EdgeInsets.symmetric(vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text(
                  'Back to Home',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),   
                ),
              ),
            ),
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



