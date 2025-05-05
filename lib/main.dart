import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  String? _loginStatus;

  void _login() {
    String username = _usernameController.text;
    String password = _passwordController.text;

    setState(() {
      if (username == 'admin' && password == 'password') {
        _loginStatus = 'Login Success';
      } else {
        _loginStatus = 'Login Failed';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              key: Key('usernameField'),
              controller: _usernameController,
              decoration: InputDecoration(labelText: 'Username'),
            ),
            TextField(
              key: Key('passwordField'),
              controller: _passwordController,
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              key: Key('loginButton'),
              onPressed: _login,
              child: Text('Login'),
            ),
            if (_loginStatus != null) ...[
              SizedBox(height: 20),
              Text(
                _loginStatus!,
                key: Key('loginStatus'),
                style: TextStyle(
                  color: _loginStatus == 'Login Success' ? Colors.green : Colors.red,
                  fontSize: 18,
                ),
              )
            ]
          ],
        ),
      ),
    );
  }
}
