import 'package:flutter/material.dart';

class UserPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
              // CircleAvatar(
              //   backgroundImage: AssetImage('assets/profile_picture.png'),
              //   radius: 50.0,
              // ),
            SizedBox(height: 20.0),
            Text(
              'John Doe',
              style: TextStyle(fontSize: 20.0),
            ),
            SizedBox(height: 10.0),
            Text('johndoe@example.com'),
          ],
        ),
      ),
    );
  }
}