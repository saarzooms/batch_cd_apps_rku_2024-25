import 'package:flutter/material.dart';

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
            onPressed: () {
              print('Button pressed ${tcUsername.text} ${tcPassword.text}');
              if (tcUsername.text == tcPassword.text)
                print('Welcome ${tcUsername.text}');
              else
                print('Invalid credentials');
            },
            child: Text('Login'),
          )
        ],
      ),
    );
  }
}
