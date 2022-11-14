import 'package:commit/widgets/sidebar.dart';
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
      drawer: Sidebar(),
      body: Column(
        children: <Widget>[
          Container(
            color: Colors.blue,
            width: screenWidth,
            height: 100,
          ),
          verticalSpaceMedium,
          Container(
            color: Colors.blue,
            width: screenWidth,
            height: 100,
          ),
          Container(
            color: Colors.blue,
            width: screenWidth,
            height: 100,
          ),
        ],
      ),
    );
  }
}
