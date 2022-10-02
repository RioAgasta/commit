import 'package:flutter/material.dart';
import '../widgets/symmetricalSpace.dart';

class Yard extends StatefulWidget {
  const Yard({Key? key}) : super(key: key);

  @override
  State<Yard> createState() => _YardState();
}

class _YardState extends State<Yard> {
  @override
  Widget build(BuildContext context) {

    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text('Yard'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              verticalSpaceMedium,
              Container(
                width: screenWidth - 40,
                height: 200,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.green,
                      Colors.red,
                    ],
                    stops: [
                      0.1,
                      1,
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.center,
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    'Hello World',
                    style: TextStyle(
                      fontSize: 45,
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                      fontFamily: 'BlackadderITC', //fontFamily harus sesuai sama 'family' yang ada di pubspec
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
