import 'package:flutter/material.dart';
import 'package:homepage/pages/map_bata-libertad.dart';
import 'package:homepage/pages/map_shop-lasalle.dart';
import 'package:homepage/pages/map_shop-northbound.dart';
import 'package:homepage/pages/map_shop-sanagustin.dart';
import 'package:homepage/pages/map_mandalagan-libertad.dart';


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
        '/map_shop-northbound': (context) => MapPageNorthbound(),
        '/map_shop-sanagustin': (context) => MapPageSanAgustin(),
        '/map_mandalagan-libertad': (context) => MapPageMandalagan()
      
      },
      home: Scaffold(
  
        backgroundColor: customColor,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [

              SizedBox(height: 75),


              Padding(  
                padding: const EdgeInsets.all(20),
              
                child: 
                  Text(
                    'Available Jeeps',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                          ),
                  ),
              
              ),

               SizedBox(height: 30),
              
              DashboardItem(title: 'BNK 2122', icon: Icons.directions_car, destinations: '       Bata - Libertad', route: '/map_bata-libertad'),
              DashboardItem(title: 'CHN 3144', icon: Icons.directions_car, destinations: '   Shopping - Libertad\n(La Salle)', route: '/map_shop-lasalle'),
              DashboardItem(title: 'JTY 1132', icon: Icons.directions_car, destinations: 'Shopping - Northbound', route: '/map_shop-northbound'),
              DashboardItem(title: 'GHQ 1145', icon: Icons.directions_car, destinations: '    Shopping - Libertad\n(San Agustin)', route: '/map_shop-sanagustin'),
              DashboardItem(title: 'JTY 1132', icon: Icons.directions_car, destinations: ' Mandalagan - Libertad', route: '/map_mandalagan-libertad')


              
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
                const SizedBox(width: 10), // Add some space between icon and text
                Text(
                  title,
                  style: Theme.of(context).textTheme.subtitle1,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(width: 30),
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