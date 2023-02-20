import 'package:commit/constants/ui_helper.dart';
import 'package:flutter/material.dart';

import 'home.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            verticalSpaceLarge,
            Text('Login', style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),),
            verticalSpaceMedium,
            Image.asset('assets/images/smk2.png', width: 150, height: 150,),
            verticalSpaceMedium,
            TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.email),
                labelText: 'E-Mail Address',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            verticalSpaceMedium,
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.lock),
                labelText: 'Password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            verticalSpaceMedium,
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => Home()));
              },
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
