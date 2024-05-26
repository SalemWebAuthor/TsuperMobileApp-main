import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'home.dart';
import 'register.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);
  

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final Color customColor = Color.fromRGBO(255, 246, 143, 1);
  String _errorMessage = '';

  Future<void> _login() async {
    String username = _usernameController.text;
    String password = _passwordController.text;
    try {
      final response = await http.post(
        Uri.parse('https://cocodeveloper.helioho.st/serve/validate.php'),
        body: json.encode({
          'user_username': username,
          'user_password': password,
        }),
        headers: {
          'Content-Type': 'application/json',
        },
      );

      print('Response status: ${response.statusCode}');
      print('Response body: ${response.body}');

      if (response.statusCode == 201) {
        final responseData = json.decode(response.body);
        if (responseData['validation']) {

          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => const HomePage()),
          );
        } else {
          setState(() {
            _errorMessage = responseData['message'];
          });
        }
      } else {
        final errorMessage = json.decode(response.body)['message'];
        setState(() {
          _errorMessage = errorMessage ??
              'Failed to connect to the server. Status code: ${response.statusCode}';
        });
      }
    } catch (e) {
      setState(() {
        _errorMessage = 'An error occurred: $e';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: customColor,
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 100, 20, 60.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (_errorMessage.isNotEmpty)
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15.0),
                      child: Text(
                        _errorMessage,
                        style: const TextStyle(color: Colors.red),
                      ),
                    ),
                    Padding(
                    padding: const EdgeInsets.symmetric(vertical: 6.0),
                    child: Column(
                      children: [
                        Image.asset('assets/jeeplogo.png'),
                        const SizedBox(height: 10),
                        const Text(
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
                  const SizedBox(height: 50),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 6.0),
                    child: TextFormField(
                      controller: _usernameController,
                      decoration: InputDecoration(
                        hintText: 'Username',
                        filled: true,
                        fillColor: Colors.white,
                        contentPadding: const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: TextFormField(
                      controller: _passwordController,
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'Password',
                        filled: true,
                        fillColor: Colors.white,
                      ),
                    ),
                  ),
                  
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: ElevatedButton(
                      onPressed: _login,
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 242, 218, 1)),
                        foregroundColor: MaterialStateProperty.all<Color>(const Color.fromARGB(255, 18, 3, 3)),
                      ),
                      child: const SizedBox(
                        height: 40,
                        width: 60,
                        child: Center(
                          child: Text('Log In'),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 0.0),
                    child: ElevatedButton(
                      onPressed: () {
                        // Navigate to registration screen
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => RegistrationPage()),
                        );
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                        foregroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 0, 1, 1)),
                      ),
                      child: const SizedBox(
                        height: 40,
                        width: 60,
                        child: Center(
                          child: Text('Sign Up'),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class AuthService {
  static Future<bool> loginUser(String username, String password) async {
    try {
      if (username.isEmpty || password.isEmpty) {
        throw Exception('Both username and password are required.');
      }

      final response = await http.post(
        Uri.parse('https://cocodeveloper.helioho.st/serve/validate.php'),
        body: json.encode({
          'user_username': username,
          'user_password': password,
        }),
        headers: {
          'Content-Type': 'application/json'
        },
      );

      // Print the raw response for debugging
      print('Response status: ${response.statusCode}');
      print('Response body: ${response.body}');

      if (response.statusCode == 200) {
        final responseData = json.decode(response.body);
        if (responseData['validation']) { 
          return true;
        } else {
          throw Exception(      
            responseData['message']        
            );
        }
      } else {
        throw Exception('Failed to connect to the server. Status code: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Failed to connect to the server: $e');
    }
  }
}