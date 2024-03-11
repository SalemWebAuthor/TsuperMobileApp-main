import 'package:flutter/material.dart';
import 'pages/routes.dart';
import 'pages/receipt.dart';
import 'pages/findjeep.dart';
import 'pages/payonline.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Color customColor = Color.fromRGBO(255, 246, 143, 1);

    return MaterialApp(
      title: 'Home',
      routes: {
        '/receipt': (context) => ReceiptPage(),
        '/location': (context) => LocationPage(),
        '/find_jeep': (context) => FindJeepPage(),
        '/pay_online': (context) => PayOnlinePage(),
      },
      home: Scaffold(
        appBar: AppBar(
          title: const Text('TsuperPH Homepage'),
        ),
        backgroundColor: customColor,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  ' ',
                  style: Theme.of(context).textTheme.headline5,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Column(
                    children: [
                      Image.asset('assets/jeeplogo.png'),
                      const SizedBox(height: 10),
                      Text(
                        'WELCOME USER!',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              DashboardItem(title: 'Receipt', icon: Icons.receipt, route: '/receipt'),
              DashboardItem(title: 'Location', icon: Icons.location_on, route: '/location'),
              DashboardItem(title: 'Find Jeep', icon: Icons.directions_car, route: '/find_jeep'),
              DashboardItem(title: 'Pay Online', icon: Icons.payment, route: '/pay_online'),
            ],
          ),
        ),
      ),
    );
  }
}

class DashboardItem extends StatelessWidget {
  final String title;
  final IconData icon;
  final String route;

  const DashboardItem({Key? key, required this.title, required this.icon, required this.route}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(10.0),
      child: SizedBox(
        width: 50, // Adjust the width as needed
        child: InkWell(
          onTap: () {
            Navigator.pushNamed(context, route);
          },
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                Icon(
                  icon,
                  size: 30,
                ),
                const SizedBox(width: 50), // Add some space between icon and text
                Text(
                  title,
                  style: Theme.of(context).textTheme.subtitle1,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}