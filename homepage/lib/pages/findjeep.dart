import 'package:flutter/material.dart';
import 'package:homepage/pages/map_bata-libertad.dart';
import 'package:homepage/pages/map_shop-lasalle.dart';
import 'package:homepage/pages/map_shop-northbound.dart';


class FindJeepPage extends StatelessWidget {
  const FindJeepPage({super.key});
  @override
   Widget build(BuildContext context) {
    final Color customColor = Color.fromRGBO(255, 246, 143, 1);

    return MaterialApp(
      title: 'Home',
      routes: {
        '/map_bata-libertad': (context) => MapPageBataLibertad(),
        '/map_shop-lasalle': (context) => MapPageLaSalle(),
        '/map_shop-northbound': (context) => MapPageNorthbound()
      
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
              
              DashboardItem(title: 'BNK 2122', icon: Icons.car_rental, destinations: 'Bata - Libertad', route: '/map_bata-libertad'),
              DashboardItem(title: 'CHN 3144', icon: Icons.car_rental, destinations: 'Shopping - Libertad\n(La Salle)', route: '/map_shop-lasalle'),
              DashboardItem(title: 'JTY 1132', icon: Icons.car_rental, destinations: 'Shopping - Northbound', route: '/map_shop-northbound')

              
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
  final String destinations;
  final String route;

  const DashboardItem({Key? key, required this.title, required this.icon, required this.destinations, required this.route}) : super(key: key);

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
                const SizedBox(width: 40), // Add some space between icon and text
                Text(
                  title,
                  style: Theme.of(context).textTheme.subtitle1,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(width: 70),
                Text(
                  destinations,
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