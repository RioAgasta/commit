import 'package:flutter/material.dart';
import 'package:commit/views/login.dart';

void main() {
  runApp(const MyApp());
}

// Navigator : Navigator.of(context).push(MaterialPageRoute(builder: (context) => ClassName()));

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Login(),
    );
  }
}