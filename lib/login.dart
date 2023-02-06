import 'package:flutter/material.dart';

import 'Widgets/ui_helper.dart';
import 'home.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  void _navigateToHome(BuildContext context){
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => Home()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              verticalSpaceLarge,
              Text(
                'Login Page',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
              verticalSpaceMedium,
              Image.asset(
                'assets/smk2.png',
                width: 150,
                height: 150,
              ),
              verticalSpaceMedium,
              TextField(
                decoration: InputDecoration(
                  label: Text('E-Mail Address'),
                  border: OutlineInputBorder(),
                  icon: Icon(Icons.email),
                ),
                keyboardType: TextInputType.emailAddress,
              ),
              verticalSpaceMedium,
              TextField(
                decoration: InputDecoration(
                  label: Text('Password'),
                  border: OutlineInputBorder(),
                  icon: Icon(Icons.lock),
                ),
                keyboardType: TextInputType.text,
                obscureText: true,
              ),
              verticalSpaceMedium,
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    width: 100,
                    height: 30,
                    child: ElevatedButton(
                      onPressed: (){
                        _navigateToHome(context);
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.amber),
                      ),
                      child: Text('Login'),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
