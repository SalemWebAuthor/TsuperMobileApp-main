import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class RegistrationPage extends StatefulWidget {
  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  final _formKey = GlobalKey<FormState>();
  final Color customColor = Color.fromRGBO(255, 246, 143, 1);
  String user_username = '';
  String user_password = '';
  String user_email = '';
  String user_home_address = '';

  Future<void> _submitForm() async {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      
      final url = Uri.parse('https://cocodeveloper.helioho.st/serve/create.php');
      final response = await http.post(
        url,
        headers: {
          'Content-Type': 'application/json',
        },
        body: json.encode({
          'user_username': user_username,
          'user_password': user_password,
          'user_email': user_email,
          'user_home_address': user_home_address
        }),
      );

      final responseData = json.decode(response.body);

      if (responseData['message'] != null) {
        _showMessage(responseData['message']);
      } else if (responseData['error'] != null) {
        _showMessage(responseData['error']);
      }
    }
  }

  void _showMessage(String message) {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text('Message'),
        content: Text(message),
        actions: [
          TextButton(
            child: Text('OK'),
            onPressed: () {
              Navigator.of(ctx).pop();
            },
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: customColor,

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [

              const SizedBox(height: 40),
              const Text(
                'Register',
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    ),
                  ),
                  const SizedBox(height: 40),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Username',
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding: const EdgeInsets.symmetric(vertical: 8, horizontal: 15),),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your username';
                  }
                  return null;
                },
                onSaved: (value) {
                  user_username = value!;
                },
              ),
              SizedBox(height: 10),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Password',
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding: const EdgeInsets.symmetric(vertical: 8, horizontal: 15),),
                obscureText: true,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your password';
                  }
                  return null;
                },
                onSaved: (value) {
                  user_password = value!;
                },
              ),
              SizedBox(height: 10),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Email',
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding: const EdgeInsets.symmetric(vertical: 8, horizontal: 15),),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your email';
                  }
                  return null;
                },
                onSaved: (value) {
                  user_email = value!;
                },
              ),
              SizedBox(height: 10),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Home Address',
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding: const EdgeInsets.symmetric(vertical: 8, horizontal: 15),),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your home address';
                  }
                  return null;
                },
                onSaved: (value) {
                  user_home_address = value!;
                },
              ),
              SizedBox(height: 40),
              ElevatedButton(
                onPressed: _submitForm,
                style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 242, 218, 1)),
                        foregroundColor: MaterialStateProperty.all<Color>(const Color.fromARGB(255, 18, 3, 3)),
                      ),
                child: Text('Register'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}