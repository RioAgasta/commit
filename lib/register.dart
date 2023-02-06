import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Register'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  blurRadius: 4,
                ),
              ],
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextField(
                    decoration: InputDecoration(
                      label: Text('Username'),
                      border: OutlineInputBorder(),
                      icon: Icon(Icons.person),
                    ),
                    keyboardType: TextInputType.text,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      label: Text('Birthdate'),
                      border: OutlineInputBorder(),
                      icon: Icon(Icons.cake),
                    ),
                    keyboardType: TextInputType.datetime,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      label: Text('E-Mail Address'),
                      border: OutlineInputBorder(),
                      icon: Icon(Icons.email),
                    ),
                    keyboardType: TextInputType.emailAddress,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      label: Text('Phone Number'),
                      border: OutlineInputBorder(),
                      icon: Icon(Icons.phone),
                    ),
                    keyboardType: TextInputType.number,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      label: Text('Password'),
                      border: OutlineInputBorder(),
                      icon: Icon(Icons.lock),
                    ),
                    keyboardType: TextInputType.text,
                    obscureText: true,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      label: Text('Confirm Password'),
                      border: OutlineInputBorder(),
                      icon: Icon(Icons.lock),
                    ),
                    keyboardType: TextInputType.text,
                    obscureText: true,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('Register'),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
