import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'dashboard_screen.dart';

class LoginPage extends StatefulWidget {
  LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController tcUsername = TextEditingController();

  TextEditingController tcPassword = TextEditingController();

  bool isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Login Page'),
          TextField(
            controller: tcUsername,
            decoration: InputDecoration(
              labelText: 'Username',
              hintText: 'Enter username',
            ),
          ),
          TextField(
            controller: tcPassword,
            obscureText: isObscure,
            decoration: InputDecoration(
              labelText: 'Password',
              hintText: 'Enter password',
              suffixIcon: IconButton(
                onPressed: () {
                  isObscure = !isObscure;
                  print('obscure ${isObscure}');
                  setState(() {});
                },
                icon: Icon(
                  Icons.visibility_off,
                ),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () async {
              print('Button pressed ${tcUsername.text} ${tcPassword.text}');
              if (tcUsername.text == tcPassword.text) {
                final SharedPreferences prefs =
                    await SharedPreferences.getInstance();
                await prefs.setString('username', tcUsername.text);
                print('Welcome ${tcUsername.text}');
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => DashboardScreen(),
                  ),
                );
              } else
                print('Invalid credentials');
            },
            child: Text('Login'),
          )
        ],
      ),
    );
  }
}
