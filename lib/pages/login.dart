// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:gym/pages/HomePage.dart';
import 'package:gym/utils/AppStyles.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  late final TextEditingController _emailController = TextEditingController();
  late final TextEditingController _passwordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.fromLTRB(20, 20, 20, screenHeight * 0.1),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 20),
                Image.asset(
                  'assets/image/logo.png',
                  width: 280,
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: _emailController,
                    decoration: InputDecoration(
                      suffixIcon: Icon(Icons.email),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.black12),
                      ),
                      filled: true,
                      fillColor: Colors.white70,
                      labelText: 'Email',
                      labelStyle: TextStyle(color: Styles.textColor),
                      hintStyle: TextStyle(color: Styles.textColor),
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: _passwordController,
                    decoration: InputDecoration(
                      suffixIcon: Icon(Icons.key),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.black12),
                      ),
                      filled: true,
                      fillColor: Colors.white70,
                      labelText: 'Password',
                      labelStyle: TextStyle(color: Styles.textColor),
                      hintStyle: TextStyle(color: Styles.textColor),
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        final email = _emailController.text.trim();
                        final password = _passwordController.text;

                        if (email == "admin" && password == "admin") {
                          // Navigate to the admin home page or display a success message
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  Homepage(), // Replace with the desired admin page
                            ),
                          );
                        } else {
                          // Show an error message if credentials are incorrect
                          showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                              title: Text('Login Failed'),
                              content: Text('Invalid username or password.'),
                              actions: [
                                TextButton(
                                  onPressed: () => Navigator.of(context).pop(),
                                  child: Text('OK'),
                                ),
                              ],
                            ),
                          );
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color.fromARGB(255, 158, 83, 106),
                      ),
                      child: Text(
                        'Login',
                        style: TextStyle(color: Styles.HomeTitle),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
