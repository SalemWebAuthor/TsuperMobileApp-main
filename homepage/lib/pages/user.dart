import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';

class UserPage extends StatelessWidget {
  const UserPage({super.key});

  Future<Map<String, dynamic>> _getUserDetails() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return {
      'user_home_address': prefs.getString('user_home_address'),
      'user_username': prefs.getString('user_username'),
      'user_email': prefs.getString('user_email'),
    };
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(255, 246, 143, 1),
      ),
      backgroundColor: const Color.fromRGBO(255, 246, 143, 1), // Setting background color
      body: FutureBuilder<Map<String, dynamic>>(
        future: _getUserDetails(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else {
            final userDetails = snapshot.data!;
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0), // Adding horizontal padding
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 10),
                    const Text(
                      'My Account',
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Poppins', // Set font family
                      ),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.person,
                          size: 50,
                        ),
                        const SizedBox(width: 10), // Add horizontal space between icon and username
                        Text(
                          userDetails['user_username'] ?? 'Username',
                          style: const TextStyle(
                            fontSize: 16,
                            fontFamily: 'Poppins', // Set font family
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20), // Add vertical space between "Username" and "Subscription"
                    Text(
                      userDetails['user_email'] ?? 'Email Address',
                      style: const TextStyle(
                        fontSize: 16,
                        fontFamily: 'Poppins', // Set font family
                      ),
                    ),
                    const SizedBox(height: 20), // Add vertical space between "Email Address" and "Subscription"
                    Text(
                      userDetails['user_home_address'] ?? 'Home Address',
                      style: const TextStyle(
                        fontSize: 16,
                        fontFamily: 'Poppins', // Set font family
                      ),
                    ),
                    const SizedBox(height: 200, width: 50,), // Adding margin from subscription text to button
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context); // Navigate back to the previous screen (homepage)
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromARGB(255, 163, 167, 58),
                          disabledBackgroundColor: Colors.white,
                          padding: const EdgeInsets.all(16.0),
                        ),
                        child: const Text(
                          'Log out',
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
                    ),
                    const SizedBox(height: 12), // Adding additional vertical space at the bottom
                  ],
                ),
              ),
            );
          }
        },
      ),
    );
  }
}