import 'package:flutter/material.dart';

class PayOnline extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 246, 143, 1),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
                'Pay with QR Code',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold,
                        fontSize: 30                            
                    ),
                  ),
            Text(
              'Scan a QR code',
              style: TextStyle(fontSize: 20.0),
            ),
            SizedBox(height: 20.0),
            Container(
              width: 200.0,
              height: 200.0,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.blue, width: 2.0),
              ),
              child: Icon(
                Icons.qr_code_scanner,
                size: 100.0,
                color: const Color.fromARGB(255, 15, 123, 211),
              ),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                // Placeholder for scan functionality
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text("Payment Sent!"),
                      content: Text("You have payed P100 to Bus 30510, Thank you and have a good day!"),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text("Close"),
                        ),
                      ],
                    );
                  },
                );
              },
              child: Text('Scan QR Code'),
            ),
          ],
        ),
      ),
    );
  }
}