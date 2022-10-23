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
        title: const Text('Yard'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              verticalSpaceMedium,
              Container(
                width: 150,
                height: 150,
                color: Colors.grey,
                child: Image.asset(
                  'assets/images/smk2.png',
                ),
              ),
              verticalSpaceMedium,
              Container(
                width: 150,
                height: 150,
                color: Colors.grey,
                child: Image.network(
                  'https://upload.wikimedia.org/wikipedia/commons/thumb/4/44/Google-flutter-logo.svg/2560px-Google-flutter-logo.svg.png',
                  fit: BoxFit.contain,
                ),
              ),
              verticalSpaceMedium,
              Container(
                width: 150,
                height: 150,
                color: Colors.grey,
                child: Image.network(
                  'https://upload.wikimedia.org/wikipedia/commons/thumb/4/44/Google-flutter-logo.svg/2560px-Google-flutter-logo.svg.png',
                  fit: BoxFit.fill,
                ),
              ),
              verticalSpaceMedium,
              Container(
                width: screenWidth,
                height: 100,
                color: Colors.grey,
                child: Image.network(
                  'https://upload.wikimedia.org/wikipedia/commons/thumb/4/44/Google-flutter-logo.svg/2560px-Google-flutter-logo.svg.png',
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
