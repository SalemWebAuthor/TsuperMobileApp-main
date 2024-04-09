import 'package:flutter/material.dart';

class ReceiptPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(255, 246, 143, 1),
      ),
      backgroundColor: Color.fromRGBO(255, 246, 143, 1), // Setting background color
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0), // Adding horizontal padding
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 20), // Adding vertical space
              Text(
                'Payment',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Poppins', // Set font family
                ),
              ),
              SizedBox(height: 20),
              Image.asset(
                'assets/jeeplogo.png',
                height: 100,
              ),
              SizedBox(height: 20),
              Text(
                'Successfully paid by',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Poppins', // Set font family
                ),
              ),
              SizedBox(height: 10),
              Icon(
                Icons.person,
                size: 50,
              ),
              SizedBox(height: 10),
              Text(
                'Username',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Poppins', // Set font family
                ),
              ),
              SizedBox(height: 20), // Add vertical space between "Username" and "Amount"
              Text(
                'Amount: \$50.00',
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Poppins', // Set font family
                ),
              ),
              SizedBox(height: 10), // Add vertical space between "Amount" and "Date"
              Text(
                'Date: February 12, 2024',
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Poppins', // Set font family
                ),
              ),
              SizedBox(height: 10), // Add vertical space between "Date" and "Time"
              Text(
                'Time: 10:00 AM',
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Poppins', // Set font family
                ),
              ),
              Spacer(),
              SizedBox(height: 20), // Add vertical space between "Thank You" and "Done" button
              Text(
                'Thank You!',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Poppins', // Set font family
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context); // Navigate back to the previous screen (homepage)
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 163, 167, 58),
                    disabledBackgroundColor: Colors.white,
                    padding: EdgeInsets.all(16.0),
                  ),
                  child: Text(
                    'Done',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              SizedBox(height: 20), // Adding additional vertical space at the bottom
            ],
          ),
        ),
      ),
    );
  }
}
